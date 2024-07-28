<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ResepMakanan extends Model
{
    use HasFactory;

    use HasFactory;
    protected $table = 'resepmakanan';
    protected $fillable = ['gambar', 'judul', 'deskripsi'];
    protected $primaryKey = 'id';
    // public $timestamps = false;
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function langkah_pembuatan()
    {
        return $this->hasMany(LangkahPembuatan::class, 'resep_id', 'id');
    }
    public function likes()
    {
        return $this->belongsToMany(User::class, 'likes', 'resep_id', 'user_id');
    }
}
