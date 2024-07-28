<?php

namespace App\Http\Controllers;

use App\Models\Bahan;
use App\Models\Resep;
use App\Models\ResepMakanan;
use App\Models\Like;
use Illuminate\Http\Request;
use App\Models\LangkahPembuatan;
use Illuminate\Support\Facades\Auth;

class ResepController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $resep = ResepMakanan::all();
        return view('dashboard', compact('resep'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('add-resep');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->hasFile('gambar')) {
            $request->validate([
                'judul' => 'required',
                'bahan.*' => 'required|string',
                'gambar'    => 'required|image|mimes:jpeg,png,jpg|max:5000',
                'langkah_pembuatan.*' => 'required|string',
                'deskripsi' => 'required',
            ]);
            $fileName = time() . '.' . $request->gambar->extension();
            $request->gambar->move(public_path('image'), $fileName);
    
            $resep = new ResepMakanan();
            $resep->judul = $request->judul;
            // $resep->bahan = $request->bahan;
            $resep->gambar = $fileName;
            $resep->deskripsi = $request->deskripsi;
            $resep->save();
    

            $bahanList = $request->bahan;
            foreach ($bahanList as $bahan) {
                $bahanModel = new Bahan();
                $bahanModel->bahan = $bahan;
                $bahanModel->resep_id = $resep->id;
                $bahanModel->save();
            }            
            $langkahPembuatan = $request->langkah_pembuatan;    
            foreach ($langkahPembuatan as $langkah) {
                $langkahPembuatanModel = new LangkahPembuatan();
                $langkahPembuatanModel->langkah = $langkah;
                $langkahPembuatanModel->resep_id = $resep->id;
                $langkahPembuatanModel->save();
            }  
            return redirect()->route('dashboard');
        }
    }
    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $resep = ResepMakanan::find($id);
        $langkah = LangkahPembuatan::where('resep_id', $resep->id)->get();
        $bahan = Bahan::where('resep_id', $resep->id)->get();

        return view('show-resep', compact('resep', 'langkah', 'bahan'));
    }
// public function show($id)
// {
//     $resep = ResepMakanan::find($id);
//     $langkah = LangkahPembuatan::where('resep_id', $resep->id)->latest()->get();
//     $bahan = Bahan::where('resep_id', $resep->id)->latest()->get();

//     return view('show-resep', compact('resep', 'langkah', 'bahan'));
// }

   
    
}
