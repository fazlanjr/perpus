<?php

namespace App\Http\Controllers\petugas;

use App\Http\Controllers\Controller;
use App\Models\Buku;
use App\Models\Pinjam;
use App\Models\Riwayat;
use App\Models\Siswa;
use Illuminate\Http\Request;
use App\Models\Kelas;

class PengambalianPetugasController extends Controller
{
    public function index(Request $req)
    {
        $kelas = '';
        $kelasid = '';

        $classes = Kelas::orderBy('jenis_kelas', 'ASC')->get();
        $query = Pinjam::join('siswa', 'siswa.id_siswa', '=', 'pinjambuku.id_siswa')
            ->join('kelas', 'kelas.id_kelas', '=', 'siswa.kelas')
            ->join('buku', 'buku.id_buku', '=', 'pinjambuku.id_buku')
            ->select('pinjambuku.*', 'buku.nama_buku', 'buku.kode_buku', 'buku.foto_buku', 'siswa.nis', 'siswa.nama_siswa', 'kelas.jenis_kelas', 'kelas.id_kelas','siswa.barcode','siswa.foto');

        if ($req->query('kelas')) {
            $query->where('kelas.id_kelas', $req->query('kelas'));
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
        $siswa = $query->latest()->paginate(5);

        return view('petugas.pengembalian.pengembalian', compact(['siswa', 'kelas', 'classes', 'kelasid']));
    }

    public function scan(Request $request)
    {
        $request->validate([
            'barcode' => 'required'
        ]);

        $barcode = $request->barcode;

        $siswa = Siswa::join('kelas', 'kelas.id_kelas', '=', 'siswa.kelas')
            ->select('siswa.*', 'kelas.jenis_kelas')
            ->where('siswa.barcode', $barcode)
            ->get();

        if ($siswa->count() < 1) {
            return back()->with('fail', 'Mohon Maaf Data Siswa Tidak Di Temukan');
        }

        foreach ($siswa as $cek) {
            $id = $cek->id_siswa;
        }

        $pinjam = Pinjam::join('buku', 'buku.id_buku', '=', 'pinjambuku.id_buku')
            ->select('pinjambuku.*', 'buku.nama_buku', 'buku.penerbit', 'buku.kode_buku', 'buku.foto_buku')
            ->where('pinjambuku.id_siswa', $id)
            ->get();

        return view('petugas.pengembalian.pengembalian_cek', compact(['siswa', 'pinjam']));
    }

    public function proses(Request $request)
    {
        $nominal = $request->nominal;
        $id = $request->id;
        $denda = $request->denda * $nominal;

        $riwayat = Riwayat::where('idpinjam', $id)->first();

        $id_buku = $riwayat->id_buku;

        Buku::find($id_buku)->increment('stok_buku');

        $r = Riwayat::where('idpinjam', $id)->first();
        if ($r) $r->update([
            'denda' => $denda,
            'status' => 'selesai',
        ]);


        Pinjam::find($id)->delete();

        return back()->with('success', 'Berhasil Melakukan Proses Pengembalian Buku');
    }
}
