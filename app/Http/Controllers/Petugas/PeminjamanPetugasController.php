<?php

namespace App\Http\Controllers\petugas;

use App\Http\Controllers\Controller;
use App\Models\Buku;
use App\Models\Detail;
use App\Models\Pinjam;
use App\Models\Riwayat;
use App\Models\Siswa;
use Illuminate\Http\Request;
use App\Models\Kelas;
use App\Models\Rak;
use DateTime;
use Illuminate\Support\Facades\Date;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class PeminjamanPetugasController extends Controller
{
    public function index(Request $req)
    {
        $siswa = [];
        if (!empty($req->query('kelas')))  $siswa = Siswa::where('id_kelas', $req->query('kelas'));

        $kelas = '';
        $kelasid = '';

        $classes = Kelas::orderBy('jenis_kelas', 'ASC')->get();
        $query = Siswa::join('kelas', 'kelas.id_kelas', '=', 'siswa.kelas')
            ->select('siswa.*', 'kelas.jenis_kelas', 'kelas.id_kelas')
            ->orderBy('siswa.nama_siswa', 'asc');

        if ($req->query('kelas')) {
            $query->where('siswa.kelas', $req->query('kelas'));
            $kelas = Kelas::where('id_kelas', $req->query('kelas'))->get()->first()['jenis_kelas'] ?? '';
            $kelasid = Kelas::where('id_kelas', $req->query('kelas'))->get()->first()['id_kelas'] ?? '';
        }

        if ($req->query('search')) {
            $search = $req->query('search');
            $query->where(function ($query) use ($search) {
                $query->where('siswa.nama_siswa', 'like', '%' . $search . '%')
                    ->orWhere('siswa.barcode', 'like', '%' . $search . '%')
                    ->orWhere('siswa.nis', 'like', '%' . $search . '%')
                    ->orWhere('siswa.id_siswa', 'like', '%' . $search . '%');
            });
        }

        $siswa = $query->paginate(5);


        return view('petugas.peminjaman.peminjaman', compact('siswa', 'classes', 'kelas', 'kelasid'));
    }

    public function cek(Request $req)
    {
        $req->validate([
            'barcode' => 'required'
        ]);

        $barcode = $req->barcode;

        $rakid = '';
        $rakname = '';


        $rak = Rak::orderBy('jenis_rak', 'ASC')->get();
        $query = Buku::join('rak', 'rak.id_rak', '=', 'buku.rak')
            ->select('buku.*', 'rak.jenis_rak', 'rak.id_rak')
            ->latest();
        if ($req->query('rak')) {
            $query->where('buku.rak', $req->query('rak'));
            $rakid = Rak::where('id_rak', $req->query('rak'))->get()->first()['id_rak'] ?? '';
            $rakname = Rak::where('id_rak', $req->query('rak'))->get()->first()['jenis_rak'] ?? '';
        }
        if ($req->query('search')) {
            $search = $req->query('search');
            $query->where(function ($query) use ($search) {
                $query->where('buku.nama_buku', 'like', '%' . $search . '%')
                    ->orWhere('buku.penerbit', 'like', '%' . $search . '%')
                    ->orWhere('buku.kode_buku', 'like', '%' . $search . '%')
                    ->orWhere('buku.id_buku', 'like', '%' . $search . '%');
            });
        }
        $buku = $query->paginate(9);
        $siswa = Siswa::join('kelas', 'kelas.id_kelas', '=', 'siswa.kelas')
            ->select('siswa.*', 'kelas.jenis_kelas')
            ->where('siswa.barcode', $barcode);
        $s = $siswa->first();
        if ($s->count() < 1) {
            return back()->with('fail', 'Mohon Maaf Data Siswa Tidak Di Temukan');
        }
        $dipinjam = Pinjam::join('siswa AS s', 'pinjambuku.id_siswa', '=', 's.id_siswa')->select()->where('pinjambuku.id_siswa', '=', $s->id_siswa)->get()->count();
        $batas = config('app.limit') - $dipinjam;

        $siswa = $siswa->get();

        return view('petugas.peminjaman.peminjaman_cek', compact(['siswa', 'buku', 'rakid', 'rak', 'batas']));
    }


    public function pinjam(Request $request)
    {

        $validator = Validator::make($request->all(), [
            "data" => "required|array",
            "data.*.id_buku" => "required|numeric",
            "tanggal_kembali" => "required|date",
            "id_siswa" => "required|numeric"
        ]);

        if ($validator->fails()) {
            $errors = $validator->errors()->messages();
            $formattedErrors = [];

            foreach ($errors as $field => $messages) {
                foreach ($messages as $message) {
                    $formattedErrors[] = [
                        'field' => $field,
                        'msg' => $message
                    ];
                }
            }

            return response()->json($formattedErrors, 422);
        }
        $now = new DateTime();
        $kembali = new DateTime($request->tanggal_kembali);
        $isFuture = $now < $kembali;
        if (!$isFuture) {
            return response()->json(["msg" => "Gabisa di Kembaliin Di masalalu!"], 400);
        }
        $d =   $now->diff($kembali);
        if ($d->days < 3) {
            return response()->json(["msg" => "Minimal peminjaman 3 hari!"], 400);
        }
        try {
            $data = $request->data;
            $banyakbuku = count($data);
            $siswa = Pinjam::where('id_siswa', $request->id_siswa)->get();
            $count = $siswa->count();
            $total = $count + $banyakbuku;

            if ($total >= config('app.limit')) {
                return response(["msg" => "banyak Buku melebihi batas maksimal peminjaman(" . config("app.limit") . ")\nbuku yang sedang dipinjam siswa ini $count \npermintaan peminjamaan $banyakbuku"], 400);
            }
            $detailid = uniqid('pinjam_', true);
            Detail::create(['id' => $detailid]);
            for ($i = 0; $i < count($request->data); $i++) {
                $stok =   Buku::select('*')->where('id_buku', $request->data[$i]['id_buku'])->first();
                if ($stok['stok_buku'] < 1) {
                    return response()->json(['stok buku ini sudah habis!'], 400);
                }
                Buku::find($request->data[$i]['id_buku'])->decrement('stok_buku');
                $p =  Pinjam::create([
                    'id_siswa' => $request->id_siswa,
                    'id_buku' => $request->data[$i]['id_buku'],
                    'tanggal_kembali' => $kembali,
                    'detailid' => $detailid

                ]);


                Riwayat::create([
                    'id_siswa' => $request->id_siswa,
                    'id_buku' => $request->data[$i]['id_buku'],
                    'tanggal_kembali' => $kembali,
                    'status' => 'pinjam',
                    "idpinjam" => $p->id_pinjam
                ]);
            }
            $cookie = cookie('cart', null, -1);
            return response()->json(['msg' => 'ok'])->cookie($cookie);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            return response()->json(['msg' => $e->getMessage()], 500);
        }
    }
}
