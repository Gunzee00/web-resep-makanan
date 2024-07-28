<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LangkahPembuatan extends Model
{
    use HasFactory;
    protected $table = 'langkah_pembuatan';
    protected $primaryKey = 'id';
    public $timestamps = true;

    protected $fillable = [
        'langkah',
        'resep_id'
    ];

    public function resepmakanan()
    {
        return $this->belongsTo(ResepMakanan::class, 'resep_id','id');
    }
}
