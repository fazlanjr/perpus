@extends('petugas.theme.master')

@section('content')
    <div class="container-fluid px-xxl-65 px-xl-20 mt-20">
        @if (session('success'))
            <div class="alert alert-success alert-wth-icon fade show" role="alert">
                <span class="alert-icon-wrap"><i class="zmdi zmdi-check-circle"></i></span>
                {{ session('success') }}
            </div>
        @endif
        @if (session('fail'))
            <div class="alert alert-danger alert-wth-icon fade show" role="alert">
                <span class="alert-icon-wrap"><i class="zmdi zmdi-check-circle"></i></span>
                {{ session('fail') }}
            </div>
        @endif
        <div class="row">
            <div class="col-xl-12">
                <section class="hk-sec-wrapper">
                    <div class="row">
                        <div class="col-sm">
                            <form action="{{ route('peminjaman.scan') }}" method="GET" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label class="control-label mb-10" for="exampleInputuname_1">Scan Barcode Siswa / Kartu
                                        Anggota Perpus Siswa</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-user"></i></span>
                                        </div>
                                        <input type="text" class="form-control @error('barcode') is-invalid @enderror"
                                            id="exampleInputuname_1" placeholder="nomor barcode Siswa" name="barcode"
                                            autofocus>
                                        @error('barcode')
                                            <span class="invalid-feedback">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <p class="my-4 text-primary">Atau Pilih Siswa: </p>
                    {{--  --}}
                    <div class="row">
                        <div class="col-sm">
                            <div class="my-2">
                                <h2 class="text-dark my-3">
                                    {{ $kelas ? $kelas : 'Semua siswa' }}
                                </h2>
                                <form action="">
                                    <select class="form-control" name="kelas">
                                        <option selected value="">Semua Kelas</option>
                                        @foreach ($classes as $class)
                                            <option value="{{ $class->id_kelas }}">{{ $class->jenis_kelas }}</option>
                                        @endforeach
                                    </select>
                                    @if (request('search'))
                                        <input type="hidden" class="form-control"
                                            placeholder=""
                                            aria-label="Recipient's username" aria-describedby="button-addon2"
                                            name="search" value="{{ request('search') }}">
                                    @endif
                                    <button class="btn btn-primary my-2" type="submit">Apply</button>
                                </form>
                            </div>
                            <div class="my-2">
                                <form action="">
                                    <div class="input-group mb-3">
                                        @if ($kelasid)
                                            <input type="hidden" class="form-control" placeholder="Cari"
                                                aria-label="Recipient's username" aria-describedby="button-addon2"
                                                name="kelas" value="{{ $kelasid }}">
                                        @endif
                                        <input type="text" class="form-control" placeholder="Cari Siswa {{ $kelas ? 'di ' . $kelas : '' }}"
                                            aria-label="Recipient's username" aria-describedby="button-addon2"
                                            name="search" value="{{ request('search') }}">
                                        <button class="btn btn-outline-primary flex justify-center align-center"
                                            type="submit" id="button-addon2">
                                            search
                                        </button>

                                    </div>
                                </form>
                                {{ $siswa->appends(request()->query())->links() }}
                            </div>
                            <div class="table-wrap">
                                <table id="datable_1" class="table table-hover w-100 display pb-30">
                                    <thead>
                                        <tr>
                                            <th>NIS</th>
                                            {{-- <th>Barcode</th> --}}
                                            <th>Nama Siswa</th>
                                            <th>Gender</th>
                                            <th>Kelas</th>
                                            <th>Foto</th>
                                            <th>Tanggal Terdaftar</th>
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($siswa as $data)
                                            <tr>
                                                <td><b>{{ $data->nis }}</b></td>
                                                {{-- <td>{!! DNS1D::getBarcodeHTML($data->barcode, 'CODABAR') !!}</td> --}}
                                                <td>{{ Str::title($data->nama_siswa) }}</td>
                                                <td>
                                                    @if ($data->jenis_kelamin == 'l')
                                                        Laki - Laki
                                                    @else
                                                        Perempuan
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="{{ route('kelas.show', $data->id_kelas) }}"
                                                        class="text-primary">
                                                        {{ Str::upper($data->jenis_kelas) }}
                                                    </a>

                                                </td>
                                                <td>
                                                    @if ($data->foto == null)
                                                        <img src="/perpus/default.jpg" height="30" width="35"
                                                            alt="">
                                                    @else
                                                        <img src="/foto_siswa/{{ $data->foto }}" height="30"
                                                            width="35" alt="">
                                                    @endif
                                                </td>
                                                <td>{{ date('d/M/Y', strtotime($data->created_at)) }}</td>
                                                <td class="text-center">
                                                    <a href="{{ route('peminjaman.scan') }}?barcode={{ $data->barcode }}"
                                                        class="btn btn-icon btn-icon-circle btn-blue btn-icon-style-3"
                                                        data-toggle="tooltip" data-placement="top" title="pilih">
                                                        <span class="btn-icon-wrap">
                                                            pilih
                                                        </span>
                                                    </a>

                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    {{--  --}}
                </section>
            </div>
        </div>
    </div>
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
