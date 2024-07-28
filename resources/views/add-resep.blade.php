@extends('layouts.app')
      @section('content')
      <div style="margin-inline-start: 10ch;margin-inline-end: 10ch">
      <form action="{{ url('store-resep') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="judul">Judul</label>
                <input placeholder="Judul Resep..." type="text" class="form-control" id="judul" name="judul"
                    required>
            </div>
    
            <div class="form-group">
                  <label for="deskripsi">Deskripsi</label>
                  <textarea placeholder="Deskripsi.." class="form-control" id="deskripsi" name="deskripsi" rows="10" required></textarea>
              </div>
    
              {{-- <div class="form-group">
                  <label for="bahan">Bahan</label>
                  <input placeholder="Bahan-bahan..." type="text" class="form-control" id="bahan" name="bahan[]"
                      required>
              </div> --}}

              <div class="form-group" id="bahan-wrapper">
                <label for="bahan">Bahan</label>
                <input placeholder="Bahan-bahan..." type="text" class="form-control" name="bahan[]" required>
            </div>
            <button type="button" onclick="tambahBahan()">+ Tambah Bahan</button>

     <div class="form-group">
        <label for="langkah_pembuatan">Langkah Pembuatan</label>
        <div id="langkah_pembuatan_wrapper">
            <input placeholder="Langkah Pembuatan.." class="form-control" name="langkah_pembuatan[]" rows="10" required></input>
        </div>
        <button type="button" onclick="tambahForm()">+ Tambah Form</button>
    </div>
            <div class="form-group">
                <label for="gambar">Gambar</label>
                <div style="max-height: 500px; max-width: 600px; overflow:hidden">
                    <img class="img-fluid mb-3 col-sm-5" id="preview">
                </div>
                <input type="file" class="form-control" id="gambar" name="gambar" @error('gambar') is-invalid @enderror
                    accept="image/*" onchange="previewImage(event)" required>
                @error('gambar')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
            
            <button style="background-color: blue; width: 1054px;" type="submit" class="btn btn-secondary btn-block btn-sm">Terbitkan Resep</button>
           

        </form>
    </div>
        <script>
            function tambahForm() {
                var wrapper = document.getElementById("langkah_pembuatan_wrapper");
                var input = document.createElement("input");
                input.placeholder = "Langkah Pembuatan..";
                input.className = "form-control";
                input.name = "langkah_pembuatan[]";
                input.rows = "10";
                input.required = true;
                wrapper.appendChild(input);
            }
        </script>
        <script>
            function tambahBahan() {
                var wrapper = document.getElementById("bahan-wrapper");
                var input = document.createElement("input");
                input.placeholder = "Bahan-bahan...";
                input.type = "text";
                input.className = "form-control";
                input.name = "bahan[]";
                input.required = true;
                wrapper.appendChild(input);
            }
        </script>
      @endsection