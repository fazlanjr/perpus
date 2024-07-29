@extends('petugas.theme.master')

@section('content')
    <!-- Container -->
    <div class="container-fluid px-xxl-65 px-xl-20 mt-20">
        <!-- Title -->
        <div class="hk-pg-header mb-10">
            <div>
                <h4 class="hk-pg-title"><span class="pg-title-icon"><i class="ion ion-md-analytics"></i></span>Dashboard</h4>
            </div>
        </div>
        <!-- /Title -->

        <!-- Row -->
        @php
            // $detail = DB::Table('detailpinjam')->where('created_at', '=');
            $siswa = DB::Table('siswa')->get();
            $buku = DB::Table('buku')->get();
            $pinjam = DB::Table('riwayat_pinjam')->where('status', 'pinjam')->get();
            $kembali = DB::Table('riwayat_pinjam')->where('status', 'selesai')->get();
            $aktivity = DB::Table('riwayat_pinjam')
                ->join('siswa', 'siswa.id_siswa', '=', 'riwayat_pinjam.id_siswa')
                ->join('buku', 'buku.id_buku', '=', 'riwayat_pinjam.id_buku')
                ->select('riwayat_pinjam.*', 'siswa.nama_siswa', 'siswa.foto', 'buku.nama_buku')
                ->latest()
                ->limit(5)
                ->get();

            $kembali = DB::Table('riwayat_pinjam')->where('status', 'selesai')->get();
            $pinjam1 = DB::Table('riwayat_pinjam')
                ->join('siswa', 'siswa.id_siswa', '=', 'riwayat_pinjam.id_siswa')
                ->join('buku', 'buku.id_buku', '=', 'riwayat_pinjam.id_buku')
                ->join('kelas', 'kelas.id_kelas', '=', 'siswa.kelas')
                ->select(
                    'riwayat_pinjam.*',
                    'siswa.nama_siswa',
                    'siswa.foto',
                    'siswa.nis',
                    'siswa.kelas',
                    'buku.nama_buku',
                    'kelas.jenis_kelas',
                    'buku.kode_buku',
                    'buku.foto_buku',
                )
                ->latest()
                ->paginate(5);

        @endphp
        <div class="row">
            <div class="col-xl-12">
                <div class="row">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-body">
                                <span class="d-block font-11 font-weight-500 text-dark text-uppercase mb-10">Siswa</span>
                                <div class="d-flex align-items-end justify-content-between">
                                    <div>
                                        <span class="d-block">
                                            <span class="display-5 font-weight-400 text-dark">{{ $siswa->count() }}</span>
                                            <small>Siswa Terdaftar</small>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-body">
                                <span class="d-block font-11 font-weight-500 text-dark text-uppercase mb-10">Buku</span>
                                <div class="d-flex align-items-end justify-content-between">
                                    <div>
                                        <span class="d-block">
                                            <span class="display-5 font-weight-400 text-dark">{{ $buku->count() }}</span>
                                            <small>Buku Terdaftar</small>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-body">
                                <span class="d-block font-11 font-weight-500 text-dark text-uppercase mb-10">Pinjam</span>
                                <div class="d-flex align-items-end justify-content-between">
                                    <div>
                                        <span class="d-block">
                                            <span class="display-5 font-weight-400 text-dark">{{ $pinjam->count() }}</span>
                                            <small>Siswa Meminjam Buku</small>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-body">
                                <span class="d-block font-11 font-weight-500 text-dark text-uppercase mb-10">Siswa Aktif
                                    Meminjam</span>
                                <div class="d-flex align-items-end justify-content-between">
                                    <div>
                                        <span class="d-block">
                                            <span class="display-5 font-weight-400 text-dark">{{ $kembali->count() }}</span>
                                            <small>Siswa</small>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <section class="hk-sec-wrapper">
                    <div class="row">
                        <div class="col-sm">
                            <canvas id="bar"></canvas>
                        </div>
                    </div>
                </section>
                <section class="hk-sec-wrapper">
                    <div class="row">
                        <div class="col-sm">
                            <canvas id="sipaling"></canvas>
                        </div>
                    </div>
                </section>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-lg">
                            <h6 class="card-header">
                                Aktifitas Terakhir
                            </h6>
                            <div class="card-body">
                                @forelse ($aktivity as  $data)
                                    <div class="user-activity">
                                        <div class="media pb-0">
                                            <div class="media-img-wrap">
                                                <div class="avatar avatar-sm">
                                                    <img src="/foto_siswa/{{ $data->foto }}" alt="user"
                                                        class="avatar-img rounded-circle">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div>
                                                    <span class="d-block mb-5"><span
                                                            class="font-weight-500 text-dark text-capitalize">{{ Str::title($data->nama_siswa) }}</span>
                                                        <span class="pl-5">
                                                            @if ($data->status == 'pinjam')
                                                                Melakukan Pinjaman Buku {{ Str::upper($data->nama_buku) }}
                                                            @else
                                                                Melakukan Pengembalian Buku
                                                                {{ Str::upper($data->nama_buku) }}
                                                            @endif
                                                        </span></span>
                                                    <span
                                                        class="d-block font-13">{{ date('d-F-Y', strtotime($data->updated_at)) }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @empty
                                @endforelse
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <section class="hk-sec-wrapper">
            <div class="row">
                <div class="col-sm">
                    <p class="mb-10">Data - Data Siswa Yang Aktif Melakukan Peminjaman Buku Di Perpustakaan
                        {{ config('app.sekolah') }}</p>
                    <div class="table-wrap">
                        <div class="my-2">

                            {{ $pinjam1->links() }}
                        </div>
                        <table id="datable_1" class="table table-hover w-100 display pb-30">
                            <thead>
                                <tr>
                                    <th>NIS</th>
                                    <th>Nama Siswa</th>
                                    <th>Kelas</th>
                                    <th>ID Buku</th>
                                    <th>Judul Buku</th>
                                    <th>Foto Buku</th>
                                    <th>Tanggal Pinjam</th>
                                    <th class="text-center">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($pinjam1 as $data)
                                    <tr>
                                        <td><a href="{{ route('siswa.show', $data->id_siswa) }}"
                                                class="text-primary">{{ $data->nis }}</a></td>
                                        <td>{{ Str::title($data->nama_siswa) }}</td>
                                        <td>{{ Str::upper($data->jenis_kelas) }}</td>
                                        <td><a href="{{ route('buku.show', $data->kode_buku) }}" class="text-primary">
                                                {{ $data->kode_buku }}
                                            </a>
                                        </td>
                                        <td>{{ Str::title($data->nama_buku) }}</td>
                                        <td>
                                            <img src="/foto_buku/{{ $data->foto_buku }}" height="60" width="60"
                                                alt="">
                                        </td>
                                        <td>
                                            {{ date('d F Y ', strtotime($data->created_at)) }}
                                        </td>
                                        <td>
                                            <span class="badge badge-success">Pinjam</span>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Row -->
    </div>
    <!-- /Container -->
@endsection

@section('js')
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", async () => {
            const context = document.getElementById('bar');

            const fetchMonthlyData = async () => {
                const response = await fetch('{{ route('petugas.get') }}');
                return await response.json();
            }
            const month = ["January", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus",
                "September", "Oktober", "November", "Desember"
            ]
            const sipalingrajin = async () => {
                const r = await fetch("{{ route('petugas.sipaling') }}")
                return await r.json();

            }
            const most = await sipalingrajin();
            const datamost = most.map(item => item.total)
            const labelmost = most.map(item => item.nama)
            const data = await fetchMonthlyData();
            const labels = data.map(item => `${month[item.month - 1]} ${item.year}`);
            const barData = data.map(item => item.total);

            new Chart(context, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Kunjungan',
                        data: barData,
                        borderWidth: 1,
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)'
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    },
                    plugins: {
                        title: {
                            display: true,
                            text: 'Kunjungan 5 Bulan Terakhir',
                            font: {
                                size: 24,
                            },
                            padding: {
                                top: 10,
                                bottom: 30
                            }
                        }
                    }
                }
            });
            const sipaling = document.getElementById('sipaling')
            new Chart(sipaling, {
                type: 'bar',
                data: {
                    labels: labelmost,
                    datasets: [{
                        label: 'Buku Dipinjam',
                        data: datamost,
                        borderWidth: 1,
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)'
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    },
                    plugins: {
                        title: {
                            display: true,
                            text: 'Top 5 Siswa yang Paling Banyak meminjam Buku Bulan Ini',
                            font: {
                                size: 24,
                            },
                            padding: {
                                top: 10,
                                bottom: 30
                            }
                        }
                    }
                }
            });
        });
    </script>
@endsection
