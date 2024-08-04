@extends('layouts.master')

@section('title')
    <div class="item" style="z-index: 50">

        <h1 style="color:white">Aplikasi Perpustakaan {{ config('app.sekolah') }}</h1>

        <form action="{{ route('home.cari') }}" method="get" style="display: flex;justify-content:center;align-items:center">
            @csrf
            <input type="text" placeholder="Cari Judul Buku" class="form-control" name="buku"
                style="border-radius: 20px;margin-right:20px">
            <button type="submit" class="btn btn-success" style="border-radius: 50%;">
                <i class="fa fa-search" style="color: white"></i>
            </button>
        </form>

    </div>
@endsection
@section('content')
@endsection
