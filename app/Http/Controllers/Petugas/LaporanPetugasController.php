<?php

namespace App\Http\Controllers\petugas;

use App\Http\Controllers\Controller;
use App\Models\Kelas;
use App\Models\Riwayat;
use Illuminate\Http\Request;
// use Barryvdh\DomPDF\PDF;
use Barryvdh\DomPDF\Facade\Pdf;
use DateTime;

class LaporanPetugasController extends Controller
{

    public function index()
    {
        $kelas =  Kelas::select('*')->get();



        $riwayat = Riwayat::join('siswa', 'siswa.id_siswa', '=', 'riwayat_pinjam.id_siswa')
            ->join('kelas', 'kelas.id_kelas', '=', 'siswa.kelas')
            ->join('buku', 'buku.id_buku', '=', 'riwayat_pinjam.id_buku')
            ->select('riwayat_pinjam.*', 'buku.nama_buku', 'buku.kode_buku', 'buku.foto_buku', 'siswa.nis', 'siswa.nama_siswa', 'kelas.jenis_kelas')
            ->latest()
            ->paginate(10);

        return view('petugas.laporan.laporan', compact(['riwayat', 'kelas']));
    }

    public function cetak_pdf(Request $req)
    {
        $kelas = '';


        $bts = $req->query('daterange') ?? '01/01/2023 - 01/15/2024';
        $data = explode(' - ', $bts) ?? ['01/01/2023', '01/15/2024'];
        // dd($data);
        $kelas =  '';
        $startDate = date('Y-m-d', strtotime($data[0]));
        // dd($startDate);
        $endDate = date('Y-m-d', strtotime($data[1] ?? '01/15/2024'));
        $riwayat = Riwayat::join('siswa', 'siswa.id_siswa', '=', 'riwayat_pinjam.id_siswa')
            ->join('kelas', 'kelas.id_kelas', '=', 'siswa.kelas')
            ->join('buku', 'buku.id_buku', '=', 'riwayat_pinjam.id_buku')
            ->select('riwayat_pinjam.*', 'buku.nama_buku', 'buku.kode_buku', 'buku.foto_buku', 'siswa.nis', 'siswa.nama_siswa', 'kelas.jenis_kelas')->whereBetween('riwayat_pinjam.tanggal_kembali', [$startDate, $endDate]);

        if ($req->query('kelas')) {
            $kelas = Kelas::where('kelas.id_kelas', $req->query('kelas'))->get()->first()['jenis_kelas'] ?? '';
            $riwayat->where('kelas.id_kelas', $req->query('kelas'));
        }
        $riwayat = $riwayat->get();

        
        function f(string $t): string
        {
            $date  = new DateTime($t);
            return $date->format('d F Y');
        }
        $batas = f($startDate) . " - " . f($endDate);
        $pdf = PDF::loadview('petugas.laporan.print_laporan_all', ['riwayat' => $riwayat, 'kelas' => $kelas, 'batas' => $batas]);

        return $pdf->stream();
    }

    public function cari_laporan(Request $request)
    {
        // $data = explode(' - ', $request->daterange);
        // $kelas =  '';
        // $startDate = date('Y-m-d', strtotime($data[0]));
        // $endDate = date('Y-m-d', strtotime($data[1]));

        // $riwayat = Riwayat::join('siswa', 'siswa.id_siswa', '=', 'riwayat_pinjam.id_siswa')
        //     ->join('kelas', 'kelas.id_kelas', '=', 'siswa.kelas')
        //     ->join('buku', 'buku.id_buku', '=', 'riwayat_pinjam.id_buku')
        //     ->select('riwayat_pinjam.*', 'buku.nama_buku', 'buku.kode_buku', 'buku.foto_buku', 'siswa.nis', 'siswa.nama_siswa', 'kelas.jenis_kelas')
        //     ->whereBetween('riwayat_pinjam.tanggal_kembali', [$startDate, $endDate])
        //     ->get();
        // $pdf = PDF::loadview('petugas.laporan.print_laporan_all', ['riwayat' => $riwayat, 'kelas' => $kelas]);
        // return $pdf->stream();
    }
}
