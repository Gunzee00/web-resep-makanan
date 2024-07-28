@extends('layouts.app')
@section('content')

    <div class="row" style="margin-inline-start: 15ch ; margin-inline-end: 15ch; margin-top:5">
        <h2 style="margin-top: 3ch; margin-bottom: 3ch"> Resep Terbaru</h2> 
        @foreach ($resep as $item)
            <div class="col-4" style="margin-bottom: 3ch">
                <div class="card">
                    {{-- <img src="{{ url('public.image') }}/{{ $item->gambar }}" alt="gambar" class="card-img-top"> --}}
                    <div style="height: 150px; max-width: 600px; overflow:hidden">
                        <img src="{{ url('/image//' . $item->gambar) }}" class="card-img-top">
                    </div>
                    <div class="card-body">
                        {{-- <p class="card-text">{{ $item->tanggal_rilis }}</p> --}}
                        <p style="color: #547794" class="card-title">{{ $item->judul }}</p>
                        <p class="card-text">{{ Str::limit($item->deskripsi, 20) }}</p>
                        <a href="/detail-resep/{{ $item->id }}" class="btn btn-secondary btn-block btn-sm">Selengkapnya</a>
                        {{-- @if (Auth::check() &&
                                !$resep->resepmakanan()->where('user_id', Auth::user()->id)->exists())
                            <form action="{{ route('resep.like', $resep->id) }}" method="POST">
                                @csrf
                                <button type="submit" class="btn btn-primary">Suka</button>
                            </form>
                        @endif --}}

                    </div>

                </div>
            </div>
        @endforeach
    </div>
@endsection
