@extends('layouts.master')

@section('content')
<div class="breadcrumb-area shadow dark text-center bg-fixed text-light" style="background-image: url(/perpus/img-1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Tata Tertib Peminjaman</h1>
            </div>
        </div>
    </div>
</div>

<div class="faq-area left-sidebar course-details-area default-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12 faq-content">
                <!-- Start Accordion -->
                <div class="acd-items acd-arrow">
                    <div class="panel-group symb" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#ac1">
                                        Tata Tertib Peminjaman Buku
                                    </a>
                                </h4>
                            </div>
                            <div id="ac1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>
                                     Tata Terbit Dalam Melakukan Transaksi Peminjaman Buku di {{ config('app.sekolah') }}
                                     yang harus Di Patuhi Oleh Seluruh Siswa {{ config('app.sekolah') }}
                                   </p>
                                    <ul>
                                        <li>Peminjam Harus Memiliki Kartu Tanda Anggota Perpustakaan</li>
                                        <li> Peminjam (Siswa, Guru Dan Pegawai) Hanya Boleh Meminjam Dua Buku Dalam Satu Minggu</li>
                                        <li> Peminjam Diwajibkan Memelihara Kebersihan Dan Kebersihan Dan Keutuhan Buku</li>
                                        <li>Peminjam Harus Mengembalikan Buku Sesuai Dengan Perpustakaan Sesuai Dengan Waktu Yang Telah Ditentukan </li>
                                        <li>Keterlambatan Pengembalian Buku Akan Di Kenakan Denda Sebesar Rp 500 Per Buku Dalam Satu Hari</li>
                                        <li> Apabila Buku Rusak Atau Hilang, Peminjam Dikenakan Sanksi Mengganti Dengan Buku Yang Sama Atau Mengganti Dengan Harga Buku</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#ac2">
                                        Tata Tertib Pengembalian / Mengembalikan Buku
                                    </a>
                                </h4>
                            </div>
                            <div id="ac2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>
                                         Tata Tertib bagi Siswa {{ config('app.sekolah') }} dalam proses Pengembalian Buku di Perpustakaan
                                         yang wajib di patuhi oleh seluruh siswa / anggota Perpustakaan {{ config('app.sekolah') }}
                                    </p>
                                    <ul>
                                        <li>Waktu Kunjungan dilaksanakan Setiap Hari Pukul 07:30 s.d 15:30</li>
                                        <li>Alas Kaki Hatus dilepas Sebelum Memasuki Perpustakaan</li>
                                        <li>Setiap Pengunjung diwajibkan Mengisi Buku Kunjungan</li>
                                        <li>Buku yang Telah Selesai dibaca Harus dikembalikan Ke Tempat Semula </li>
                                        <li>Dilarang Merokok Dalam Perpustakaan</li>
                                        <li>Jangan Tidur Dalam Perpustakaan</li>
                                        <li>Pengunjung Dapat Menjaga Kebersihan dan Kenyamanan Perpustakaan</li>
                                        <li>Pengunjung dilarang Merusak apa Pun dari Perpustakaan </li>
                                        <li>Jangan Mengambil apa Pun di Perpustakaan Kecuali Ilmu</li>
                                        <li>Pengunjung Wajib Mematuhi Segala Peraturan dan Tata Tertib yang Telah ditentukan</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#ac3">
                                        Tata Tertib Pendaftaraan Angoota Perpustakaan
                                    </a>
                                </h4>
                            </div>
                            <div id="ac3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>
                                        Tata Tertib Siswa Dalam Melakukan Pendaftaraan sebagai Anggota Perpustakaan di {{ config('app.sekolah') }}
                                    </p>
                                    <ul>
                                        <li>Siswa {{ config('app.sekolah') }}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Accordion -->
            </div>
        </div>
    </div>
</div>
@endsection
