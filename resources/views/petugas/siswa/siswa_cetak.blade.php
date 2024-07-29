@extends('petugas.theme.master')

@section('content')
    <div class="container-fluid px-xxl-65 px-xl-20 mt-20">
        <div class="hk-pg-header">
            <a href="#" onclick="convertToImage()" class="btn btn-danger btn-sm noPrint"><i class="fa fa-print"></i> Cetak
                Kartu</a>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="col-md-6 py-5" id="kartuwrapper">
                    <div class="card text-white border-success" id="kartu">
                        <div class="card-header bg-success">
                            <div class="row">
                                <div class="col-2">
                                    <img src="/{{ config('app.logo') }}" height="70" width="70" alt="">
                                </div>
                                <div class="col-10">
                                    <h5 class="text-center" style="color: white">Kartu Anggota Perpustakaan</h5>
                                    <h5 class="text-center mt-5" style="color: white">{{ config('app.sekolah') }}</h5>
                                    <p class="text-center mt-5">{{ config('app.alamat') }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="card-body bg-white" style="color:black">
                            <div class="row">
                                <div class="col-4">
                                    @if ($siswa->foto == null)
                                        <img src="/perpus/default.jpg" height="100" width="100" alt="">
                                    @else
                                        <img src="/foto_siswa/{{ $siswa->foto }}" height="100" width="100"
                                            alt="">
                                    @endif
                                </div>
                                <div class="col-8">
                                    <table border="0">
                                        <thead>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="padding: 3px"><b>Nama Lengkap</b></td>
                                                <td><b>&nbsp;: </b></td>
                                                <td>
                                                    &nbsp;{{ Str::upper($siswa->nama_siswa) }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 3px"><b>NIS</b></td>
                                                <td><b>&nbsp;: </b></td>
                                                <td>
                                                    &nbsp;{{ Str::upper($siswa->nis) }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 3px"><b>Kelas</b></td>
                                                <td><b>&nbsp;: </b></td>
                                                <td>
                                                    &nbsp;{{ Str::upper($siswa->jenis_kelas) }}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 3px"><b>Jenis Kelamin</b></td>
                                                <td><b>&nbsp;: </b></td>
                                                <td>
                                                    @if ($siswa->jenis_kelamin == 'l')
                                                        &nbsp;Laki - Laki
                                                    @else
                                                        &nbsp;Perempuan
                                                    @endif
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row mt-2">
                                <div class="col-6">
                                    <span class="barcode">
                                        {!! DNS1D::getBarcodeHTML($siswa->barcode, 'C39') !!} <br>
                                    </span>
                                </div>
                            </div>
                            <p class="card-title">{{ $siswa->barcode }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('css')
@endsection

@section('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
    <script>
        function convertToImage() {
            const node = document.getElementById('kartuwrapper');
            console.log('ok');
            html2canvas(node).then(function(canvas) {
                var dataUrl = canvas.toDataURL('image/png');
                var link = document.createElement('a');
                link.href = dataUrl;
                link.download = 'kartu.png';
                link.click();
                fetch('{{ route('siswa.card') }}', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': '{{ csrf_token() }}'
                        },
                        body: JSON.stringify({
                            image: dataUrl
                        })
                    })
                    .then(response => response.json())
                    .then(data => {
                        console.log('Success:', data);
                        // window.location.href = data.download_url;
                    })
                    .catch((error) => {
                        console.error('Error:', error);
                    });
            });
        }
    </script>
@endsection
