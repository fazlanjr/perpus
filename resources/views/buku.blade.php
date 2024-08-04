@extends('layouts.master')
@section('title')
    <div class="row">
        <div class="col-md-12">
            <h1 style="color:white">Buku</h1>
        </div>
    </div>
@endsection
@section('content')
    <div class="popular-courses default-padding bottom-less without-carousel">
        <div class="container">
            <div class="row">
                <div class="popular-courses-items bottom-price">
                    @foreach ($buku as $data)
                        <div class="col-md-3 col-sm-3 equal-height">
                            <div class="advisor-item">
                                <div class="info-box">
                                    <img src="/foto_buku/{{ $data->foto_buku }}" alt="Thumb">
                                    <div class="info-title">
                                        <h4>{{ Str::title($data->nama_buku) }}</h4>
                                        <span>{{ Str::upper($data->jenis_rak) }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                {{ $buku->links() }}
            </div>
        </div>
    </div>
@endsection
