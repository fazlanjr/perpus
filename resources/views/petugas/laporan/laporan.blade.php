@extends('petugas.theme.master')

@section('content')
    <div class="container-fluid px-xxl-65 px-xl-20 mt-20">
        <div class="hk-pg-header mb-10">
            <div>
                <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="material-icons">
                            summarize
                        </i></span>Laporan</h4>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-12">
                <section class="hk-sec-wrapper">
                    <div class="row">
                        <div class="col-sm">
                            {{-- <form action="{{ route('laporan.cari_laporan') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-6">
                                        <label for="input_tags">Pilih Rentan Tanggal Pengembalian Pinjaman</label>
                                        <input class="form-control" type="text" name="daterange"
                                            value="01/01/2023 - 01/15/2023" />
                                    </div>
                                    <div class="col-6">

                                        <label for="input_tags">&nbsp;</label><br>
                                        <button class="btn btn-success btn-wth-icon">
                                            <span class="icon-label">
                                                <span class="material-icons">
                                                    search
                                                </span>
                                            </span>
                                            <span class="btn-text">Cari Laporan</span>
                                        </button>
                                    </div>
                                </div>
                            </form> --}}
                            <hr>
                            <p class="mb-10">Laporan Transaksi Peminjaman dan Pengembalian Buku</p>
                            <div class="table-wrap">
                                <form action="{{ route('laporan.cetak_pdf') }}">
                                    <div class="my-2">
                                        <label for="input_tags">Pilih Rentan Tanggal Pengembalian Pinjaman untuk
                                            Dicetak</label>
                                        <input class="form-control" type="text" name="daterange"
                                            value="01/01/2023 - 01/15/2023" />
                                        <p class="text-warning my-1 font-italic">
                                            <i>
                                                *Mohon bijak dalam memilih rentang waktu , jika waktu tersebut memiliki
                                                banyak data dan tidak ada filter kelas, maka akan beresiko memberatkan
                                                server hingga down
                                            </i>
                                        </p>
                                    </div>
                                    <label for="input_tags">Pilih Kelas</label>

                                    <select name="kelas" id="" class="form-control my-1 mb-2">
                                        <option value=""> Semua Kelas</option>
                                        @foreach ($kelas as $k)
                                            <option value="{{ $k->id_kelas }}"> {{ $k->jenis_kelas }}</option>
                                        @endforeach
                                    </select>
                                    <button type="submit" class="btn btn-secondary btn-wth-icon btn-sm">
                                        <span class="icon-label">
                                            <span class="material-icons">
                                                print
                                            </span>
                                        </span>
                                        <span class="btn-text">Lihat & Cetak</span>
                                    </button>
                                </form>
                                <div class="my-5">

                                    <h2 class="text-dark my-4">Semua Data Peminjaman</h2>
                                </div>
                                {{ $riwayat->links() }}
                                <table id="datable_2" class="table table-hover w-100 display">
                                    <thead>
                                        <tr>
                                            <th>NIS</th>
                                            {{-- <th>Barcode</th> --}}
                                            <th>Nama Siswa</th>
                                            <th>Kelas</th>
                                            <th>ID Buku</th>
                                            <th>Judul Buku</th>
                                            <th>Foto Buku</th>
                                            <th class="text-center">Status</th>
                                            <th>Tanggal Pinjam</th>
                                            <th>Tanggal Kembali</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($riwayat as $data)
                                            <tr>
                                                <td><a href="{{ route('siswa.show', $data->id_siswa) }}"
                                                        class="text-primary">{{ $data->nis }}</a></td>
                                                <td>{{ Str::title($data->nama_siswa) }}</td>
                                                <td>{{ Str::upper($data->jenis_kelas) }}</td>
                                                <td><a href="{{ route('buku.show', $data->kode_buku) }}"
                                                        class="text-primary">
                                                        {{ $data->kode_buku }}
                                                    </a></td>
                                                <td>{{ Str::title($data->nama_buku) }}</td>
                                                <td>
                                                    <img src="/foto_buku/{{ $data->foto_buku }}" height="60"
                                                        width="60" alt="">
                                                </td>
                                                <td>
                                                    @if ($data->status == 'selesai')
                                                        <span class="badge badge-success">
                                                            Pengembalian
                                                        </span>
                                                    @else
                                                        <span class="badge badge-warning">
                                                            Peminjaman
                                                        </span>
                                                    @endif
                                                </td>
                                                <td>
                                                    {{ date('d-F-Y', strtotime($data->created_at)) }}
                                                </td>
                                                <td>
                                                    {{ date('d-F-Y', strtotime($data->tanggal_kembali)) }}
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
@endsection

@section('css')
    <!-- select2 CSS -->
    <link href="/theme/vendors/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />

    <!-- Daterangepicker CSS -->
    <link href="/theme/vendors/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />

    <!-- Data Table CSS -->
    <link href="/theme/vendors/datatables.net-dt/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="/theme/vendors/datatables.net-responsive-dt/css/responsive.dataTables.min.css" rel="stylesheet"
        type="text/css" />
@endsection

@section('js')
    <script>
        window.setTimeout(function() {
            $(".alert").fadeTo(700, 0).slideUp(500, function() {
                $(this).remove();
            });
        }, 2500);
    </script>
    <!-- Ion JavaScript -->
    <script src="/theme/vendors/ion-rangeslider/js/ion.rangeSlider.min.js"></script>
    <script src="/theme/dist/js/rangeslider-data.js"></script>

    <!-- Select2 JavaScript -->
    <script src="/theme/vendors/select2/dist/js/select2.full.min.js"></script>
    <script src="/theme/dist/js/select2-data.js"></script>

    <!-- Bootstrap Tagsinput JavaScript -->
    <script src="/theme/vendors/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>

    <!-- Daterangepicker JavaScript -->
    <script src="/theme/vendors/moment/min/moment.min.js"></script>
    <script src="/theme/vendors/daterangepicker/daterangepicker.js"></script>
    <script src="/theme/dist/js/daterangepicker-data.js"></script>

    <!-- Data Table JavaScript -->
@endsection
