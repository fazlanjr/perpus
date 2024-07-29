@extends('petugas.theme.master2')

@section('content')
    @php
        function setInterval(callable $fn, int $s): void
        {
            while (true) {
                sleep($fn);
                $fn();
            }
        }
        $c = [];
        if (isset($_COOKIE['cart'])) {
            $c = json_decode($_COOKIE['cart'], true);
            // dd($c);
        }
    @endphp
    <div class="container-fluid  px-xxl-65 px-xl-20 mt-20">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-info" role="alert">
                    <h4 class="alert-heading mb-10">Catatan Perihal Peminjaman Buku</h4>
                    <p>Beberapa hal yang dapat di sampaikan kepada siswa mengenai peraturan dalam peminjaman buku
                        di perpustakaan {{ config('app.sekolah') }}
                    </p>
                    <hr class="hr-soft-info">
                    @php
                        $cek_denda = DB::Table('denda')->get();
                    @endphp
                    <ul class="list-ul">
                        <li class="mb-5"><span>Siswa Di Wajibkan Mendaftarkan diri sebagai Anggota Perpustakaan Untuk Bisa
                                Melaukan Peminjaman Buku</span></li>
                        <li><span>Perpeminjaman Memiliki Batas Waktu Yang sama</span></li>
                        @forelse ($cek_denda as $cek_denda)
                            <li><span>Tarif Denda Yaitu Rp. {{ $cek_denda->nominal_denda }} / Hari</span></li>
                        @empty
                            <li><span>Tarif Denda Yaitu Rp. 1000 / Hari</span></li>
                        @endforelse
                        <li><span>Apabila Buku Hilang Maka Siswa Diberlakukan denda Rp.50.000 / Buku</span></li>
                    </ul>
                </div>
            </div>
        </div>
        @if (session('fail'))
            <div class="alert alert-danger alert-wth-icon fade show" role="alert">
                <span class="alert-icon-wrap"><i class="zmdi zmdi-block"></i></span>
                {{ session('fail') }}
            </div>
        @endif
        <div class="row">
            <div class="col-xl-12">
                <div class="row">
                    @foreach ($siswa as $siswa)
                        <div class="col-md-6">
                            <div class="card text-white">
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
                                        <input type="hidden" id="siswaid" value="{{ $siswa->id_siswa }}">
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
                                            <span>
                                                {!! DNS1D::getBarcodeHTML($siswa->barcode, 'C39') !!}
                                            </span>
                                        </div>
                                    </div>
                                    <p class="card-title">{{ $siswa->barcode }}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach

                    <div class="col-md-5">
                        <div class="card text-white">
                            <div class="card-body bg-white" style="color:black">
                                <h3 class="ms-2.5">Buku yang dipilih :</h3>
                                <div class="row">

                                    <ul
                                        class="max-w-md max-h-56 overflow-scroll divide-y divide-gray-200 dark:divide-gray-700 p-3 w-full">

                                        @foreach ($c as $d)
                                            <li class="pb-3 sm:pb-4 w-full" id="book-{{ $d['id_buku'] }}">
                                                <div class="flex items-center justify-center space-x-4 rtl:space-x-reverse">
                                                    <div class="flex-shrink-0">
                                                        <img class="w-8 h-8 rounded-full"
                                                            src="/foto_buku/{{ $d['foto_buku'] }}" alt="Neil image">
                                                    </div>
                                                    <div class="flex-1 min-w-0">
                                                        <p
                                                            class="text-sm font-medium text-gray-900 truncate dark:text-white">
                                                            {{ $d['nama_buku'] }}
                                                        </p>
                                                        <p class="text-sm text-gray-500 truncate dark:text-gray-400">
                                                            #{{ $d['id_buku'] }}
                                                        </p>
                                                    </div>
                                                    <div
                                                        class="inline-flex items-center text-base font-semibold text-gray-900 dark:text-white">
                                                        <a href="#" onclick="removeFromCart('{{ $d['id_buku'] }}')"
                                                            class="text-red-500">hapus</a>
                                                    </div>
                                                </div>
                                            </li>
                                        @endforeach

                                    </ul>

                                    <div class="relative max-w-sm ms-5">
                                        <div
                                            class="absolute inset-y-0 start-0 flex  items-center ps-3.5 pointer-events-none">
                                            <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                                                xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                                <path
                                                    d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z" />
                                            </svg>
                                        </div>
                                        <input datepicker id="kembali" required type="text"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                            placeholder="Tanggal Pengembalian">
                                    </div>
                                    <div class="flex justify-end w-full">
                                        <button class="btn-success mx-2 end btn" id="pinjam">Pinjam</button>
                                    </div>
                                    <div>
                                        <p class="text-dark" id="pinjam"></p>
                                        <p class="ms-5 text-blue-500">batas pinjam : {{ $batas }}</p>
                                        <input type="hidden" value="{{ $batas }}" id="batas">
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-6">

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="p-5">
        <div class="my-2">
            <form action="{{ route('peminjaman.scan') }}">
                <input type="hidden" name="barcode" value="{{ request('barcode') }}">
                <select class="form-control" name="rak">
                    <option {{ !$rakid ? 'selected' : '' }} value="">Semua Rak</option>
                    @foreach ($rak as $r)
                        <option value="{{ $r->id_rak }}" {{ $rakid === $r->id_rak ? 'selected' : '' }}>
                            {{ $r->jenis_rak }}</option>
                    @endforeach
                </select>
                @if (request('search'))
                    <input type="hidden" class="form-control" placeholder="Cari" aria-label="Recipient's username"
                        aria-describedby="button-addon2" name="search" value="{{ request('search') }}">
                @endif
                <button class="btn btn-primary my-2" type="submit">Apply</button>
            </form>
        </div>
        <div class="my-2">
            <form action="{{ route('peminjaman.scan') }}" method="get">
                <div class="input-group mb-3">
                    <input type="hidden" name="barcode" value="{{ request('barcode') }}">
                    @if ($rakid)
                        <input type="hidden" class="form-control" placeholder="Cari" aria-label="Recipient's username"
                            aria-describedby="button-addon2" name="rak" value="{{ $rakid }}">
                    @endif
                    <input type="text" class="form-control" placeholder="Cari" aria-label="Recipient's username"
                        aria-describedby="button-addon2" name="search" value="{{ request('search') }}">
                    <button class="btn btn-outline-primary flex justify-center align-center" type="submit"
                        id="button-addon2">
                        search
                    </button>
                </div>
            </form>
            {{ $buku->appends(request()->query())->links() }}
        </div>
    </div>
    <div class="ps-5">
        <h3 class="mb-5 ms-5 text-lg font-medium text-gray-900 dark:text-white">Pilih Buku:</h3>
        <ul class="grid w-full gap-6 md:grid-cols-3 p-10">
            @foreach ($buku as $b)
                <li class="relative">
                    <input type="checkbox" id="{{ $b->id_buku }}" data-id="{{ $b->id_buku }}"
                        value="{{ $b->id_buku }}" data-name="{{ $b->nama_buku }}" data-img="{{ $b->foto_buku }}"
                        class="absolute right-5 top-5 rounded-circle peer opsi" required="">
                    <label for="{{ $b->id_buku }}"
                        class="inline-flex items-center justify-between w-full p-5 text-gray-500 bg-white border-2 border-gray-200 rounded-lg cursor-pointer dark:hover:text-gray-300 dark:border-gray-700 peer-checked:border-blue-600 hover:text-gray-600 dark:peer-checked:text-gray-300 peer-checked:text-gray-600 hover:bg-gray-50 dark:text-gray-400 dark:bg-gray-800 dark:hover:bg-gray-700">
                        <div class="block">
                            <img class="mb-2 h-20  text-sky-500" src="{{ config('app.imguri') }}{{ $b->foto_buku }}">

                            </img>
                            <div class="w-full text-lg font-semibold">{{ $b->nama_buku }}</div>
                            <div class="w-full text-sm">Rak : <a
                                    href="{{ route('buku.index') }}?rak={{ $b->rak }}" class="text-blue-500">
                                    {{ $b->jenis_rak }} </a></div>
                            <div class="w-full text-sm truncate text-pretty">Penerbit : {{ $b->penerbit }}</div>
                            <div class="my-2 ">
                                @if ($b->stok_buku < 1)
                                    <span class="badge badge-danger">Stok Buku Habis</span>
                                @else
                                    <span class="badge badge-success">Sisa Stok :
                                        {{ $b->stok_buku }}</span>
                                @endif
                            </div>
                            <div class="my-2"><b>ID : #{{ $b->id_buku }}</b></div>
                        </div>
                    </label>
                </li>
            @endforeach

        </ul>
    </div>
@endsection

@section('css')
    <!-- select2 CSS -->
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    {{-- <link href="https://cdn.jsdelivr.net/npm/flowbite@2.4.1/dist/flowbite.min.css" rel="stylesheet" /> --}}

    {{-- <link href="/theme/vendors/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" /> --}}
@endsection

@section('js')
    <!-- Select2 JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
        function setCookie(name, value, days) {
            let expires = "";
            if (days) {
                let date = new Date();
                date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                expires = "; expires=" + date.toUTCString();
            }
            document.cookie = name + "=" + (value || "") + expires + "; path=/";
        }

        function getCookie(name) {
            let nameEQ = name + "=";
            let ca = document.cookie.split(';');
            for (let i = 0; i < ca.length; i++) {
                let c = ca[i];
                while (c.charAt(0) === ' ') c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
            }
            return null;
        }

        function eraseCookie(name) {
            document.cookie = name + '=; Max-Age=-99999999;';
        }

        function addToCart(item) {
            let cart = getCookie("cart");
            cart = cart ? JSON.parse(cart) : [];
            cart.push(item);
            setCookie("cart", JSON.stringify(cart), 7);
            location.reload();
        }

        function getCart() {
            let cart = getCookie("cart");
            return cart ? JSON.parse(cart) : [];
        }

        function isInCart(bookId) {
            let cart = JSON.parse(getCookie("cart") || '[]');
            return cart.some(item => item.id_buku === bookId);
        }

        function removeFromCart(itemId) {
            let cart = getCart();
            cart = cart.filter(item => item.id_buku !== itemId);
            setCookie("cart", JSON.stringify(cart), 7);
            location.reload();
        }

        const pinjam = document.getElementById('pinjam')

        document.addEventListener('DOMContentLoaded', () => {
            const buku = document.querySelectorAll('.opsi');
            buku.forEach(element => {
                if (isInCart(element.value)) {
                    element.checked = true
                }
                element.addEventListener('change', () => {
                    if (element.checked) {
                        const data = {
                            id_buku: element.value,
                            nama_buku: element.getAttribute('data-name'),
                            foto_buku: element.getAttribute('data-img')
                        }
                        addToCart(data);
                    } else {
                        removeFromCart(element.value);
                    }
                    displayCart();
                });
            });

            const dipilih = getCart();
            const total = dipilih.length;
            const batas = document.getElementById('batas').value
            const pinjam = document.getElementById('pinjam')
            const kembali = document.getElementById('kembali')

            if (batas - total < 0) {
                console.log(batas - total)
                pinjam.disabled = true
            }
            pinjam.addEventListener('click', async () => {
                const idsiswa = document.getElementById('siswaid').value
                const cart = getCart()
                if (cart.length < 1) {
                    Swal.fire({
                        title: "Info",
                        icon: "Warning",
                        text: "Pilih minimal 1 buku"
                    })
                    return
                }
                if (!kembali.value) {
                    Swal.fire({
                        title: "Info",
                        icon: "Warning",
                        text: "Masukkan tanggal kembali"
                    })
                    return
                }
                const response = await fetch('{{ route('peminjaman.store') }}', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]')
                            .getAttribute('content')
                    },
                    body: JSON.stringify({
                        data: getCart(),
                        id_siswa: idsiswa,
                        tanggal_kembali: kembali.value
                    })
                });
                const result = await response.json()
                if (!response.ok) {
                    Swal.fire({
                        title: "Info",
                        icon: "Warning",
                        text: result.msg
                    })
                    return
                }
                if (response.ok) {
                    Swal.fire({
                        title: "berhasil",
                        icon: "Success",
                        text: "berhasil Meminjam"
                    }).then(r => location.reload())

                }
                console.log(result);

            })

        })
    </script>
    <script src="/js/flowbite.min.js"></script>
    {{-- <script src="/theme/vendors/select2/dist/js/select2.full.min.js"></script> --}}
    <script src="/theme/dist/js/select2-data.js"></script>
@endsection
