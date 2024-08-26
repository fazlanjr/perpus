@extends('layouts.master')
@section('title')
    <h1 style="color: white">Profile Perpustakaan</h1>
@endsection
@section('content')
    <div class="about-area default-padding">
        <div class="container">
            <div class="row">
                <div class="about-info">
                    <div class="col-md-6 thumb">
                        <img src="/logo.png" alt="Thumb" class="text-center">
                    </div>
                    <div class="col-md-6 info">
                        <h5>Profile Perpustakaan</h5>
                        <h2>Selamat Datang Di Perpustakaan SMA Negeri 1 Kampar</h2>
                        <p>
                            Perpustakaan SMA Negeri 1 Kampar berlokasi di jalan raya Pekanbaru – Bangkinang, km 50,Airtiris
                            Telp. (0762) 21133 Kode Pos. 28461. Perpustakaan ini, berkomitmen menjadi pusat sumber belajar
                            yang mendukung budaya literasi dan pembelajaran sepanjang hayat. Dengan fasilitas lengkap,
                            seperti ruang baca nyaman, koleksi buku beragam, komputer dengan akses internet, dan layanan
                            peminjaman buku. Perpustakaan ini menciptakan lingkungan kondusif bagi peningkatan pengetahuan
                            dan keterampilan siswa. Berbagai program literasi, seperti klub buku dan workshop penulisan
                            kreatif, rutin diselenggarakan untuk menumbuhkan minat baca dan kreativitas siswa. Perpustakaan
                            SMA Negeri 1 Kampar dipimpin oleh Dra. Nurmiati dan berupaya memberikan layanan terbaik dengan
                            dukungan staf profesional.
                        </p>
                    </div>
                </div>
                <div class="seperator col-md-12">
                    <span class="border"></span>
                </div>
                <div class="container">
                    <ul >
                        <h1>IDENTITAS</h1>
                        <li>
                            <ul>
                                <table>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Nss</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px">301140660001</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Nama sekolah</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px">SMA Negeri 1 Kampar</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Nama perpustakaan</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px">Perpustakaan Telaga Ilmu SMA Negeri 1 Kampar</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Alamat sekolah</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px">Jalan Raya Pekanbaru – Bangkinang, KM 50,Airtiris
                                            ​​​ Telp. (0762) 21133 Kode Pos. 28461</td>
                                    </tr>
                                </table>
                            </ul>
                        </li>
                        <h1 style="margin-top: 20px">Data perpustakaan</h1>
                        <li>
                            <ul>
                                <li>
                                    <h3>Ruang Perpustakaan</h3>
                                </li>
                                <table>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px"> Luas Gedung</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px">10m x 10m</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px"> Ruang baca</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px;color:green">ada</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Ruang Koleksi</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px;color:green">ada</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Ruang Kerja Petugas</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px;color:green">ada</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Layanan</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px;color:green">ada</td>
                                    </tr>
                                </table>
                                <li style="margin-top: 10px">
                                    <h3>Koleksi</h3>
                                </li>
                                <table>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px"> Buku Non Fiksi</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px">200 eksemplar</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Buku Fiksi</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px;">220 eksemplar</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Buku Referensi</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px;">25 Judul ,220 eksemplar</td>
                                    </tr>
                                    <tr style=" display:flex;align-items:flex-start">
                                        <td style="padding:5px;width:200px">Peta</td>
                                        <td style="padding:5px"> : </td>
                                        <td style="padding:5px;">7 Judul</td>
                                    </tr>

                                </table>
                            </ul>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>
@endsection
