@extends('petugas.theme.master')
@section('content')
<div class="container-fluid px-xxl-65 px-xl-20 mt-20 ">
    <div class="hk-pg-header">
        <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="fa fa-book"></i></span>Buku</h4>
    </div>

    @if (session('success'))
        <div class="alert alert-success alert-wth-icon fade show" role="alert">
            <span class="alert-icon-wrap"><i class="zmdi zmdi-check-circle"></i></span>
            {{ session('success') }}
        </div>
    @elseif (session('fail'))
        <div class="alert alert-danger alert-wth-icon fade show" role="alert">
            <span class="alert-icon-wrap"><i class="zmdi zmdi-block"></i></span>
            {{ session('fail') }}
        </div>
    @endif

    <div class="row">
        <div class="col-xl-12">
       
            <section class="hk-sec-wrapper">
                <h5 class="hk-sec-title">Data Buku {{ $buku->nama_buku ?? '' }}</h5>
                <p class="mb-20">Data Buku Yang Terdaftar Di Perpustakaan dan Dapat Di Pinjam Oleh Siswa
                    {{ config('app.sekolah') }}</p>
                <div class="row">
                    <div class="col-sm">
                        <div class="my-2">
                       
                        </div>
                        <div class="flex flex-wrap">

                            
                                <div class="card mb-3 pr-5" style="max-width: max-content;">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="{{ config('app.imguri') }}{{ $buku->foto_buku }}"
                                                class="img-fluid rounded-start" alt="...">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <h5 class="card-title">{{ Str::title($buku->nama_buku) }}</h5>
                                                <p class="card-text">Penerbit : {{ Str::upper($buku->penerbit) }}</p>
                                                <p class="card-text">
                                                    Rak:
                                                    <a href="{{ route('buku.index') }}?rak={{ $buku->id_rak }}" class="text-primary link-underline">
                                                        {{ Str::title($buku->jenis_rak) }}
                                                    </a>
                                                </p>
                                                <p class="card-text">
                                                    @if ($buku->stok_buku < 1)
                                                        <span class="badge badge-danger">Stok Buku Habis</span>
                                                    @else
                                                        <span class="badge badge-success">Sisa Stok :
                                                            {{ $buku->stok_buku }}</span>
                                                    @endif
                                                </p>
                                                {!! DNS1D::getBarcodeHTML($buku->kode_buku, 'C39') !!}
                                                <a href="{{ route('buku.edit', $buku->id_buku) }}"
                                                    class="btn btn-icon btn-icon-circle btn-blue btn-icon-style-3"
                                                    data-toggle="tooltip" data-placement="top" title="Edit">
                                                    <span class="btn-icon-wrap">
                                                        <span class="material-icons">
                                                            edit
                                                        </span>
                                                    </span>
                                                </a>
                                                <a href="{{ route('buku.destroy', $buku->id_buku) }}"
                                                    class="btn btn-icon btn-icon-circle btn-blue btn-icon-style-3"
                                                    data-toggle="tooltip" data-placement="top" title="Hapus"
                                                    onclick="event.preventDefault();
                                                        document.getElementById('buku-delete-form-{{ $buku->id_buku }}').submit();">
                                                    <span class="btn-icon-wrap">
                                                        <span class="material-icons">
                                                            delete
                                                        </span>
                                                    </span>
                                                </a>
                                                <form id="buku-delete-form-{{ $buku->id_buku }}"
                                                    action="{{ route('buku.destroy', $buku->id_buku) }}" method="POST"
                                                    class="d-none">
                                                    @csrf
                                                    @method('delete')
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                         

                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
</div>
@endsection
@section('css')
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
@endsection
