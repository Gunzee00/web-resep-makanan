@extends('layouts.app')
      @section('content')
      <div  class="card">
           <img src="{{ asset('image/' . $resep->gambar) }}" class="card-img-top" alt="..." style="margin-left:30ch; max-width: 600px; max-height: 450px; ">
    <div  style="margin-left:30ch; postion:flex ">
            <div class="card-body">
                 <strong><h1>{{ $resep->judul }}</h1></strong> 
                <p class="card-text">{{ $resep->deskripsi }}</p>
               
              <strong> <h5>Bahan - bahan</h5></strong> 
              @foreach ($bahan as $item)
                <h5 class="card-text">{{ $item->bahan }}</h5>
                @endforeach
               <strong> <h5>Langkah Pembuatan</h5></strong>
               @foreach ($langkah as $resep)
                <h5 class="card-text">{{ $resep->langkah }}</h5>
                @endforeach
                <a href="/dashboard" class="btn btn-primary btn-block btn-sm">kembali</a>
              </div> </div> 
        </div>
      @endsection