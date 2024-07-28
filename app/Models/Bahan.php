<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bahan extends Model
{
    use HasFactory;
    protected $table = 'bahan';
    protected $primaryKey = 'id';
    public $timestamps = true;

    protected $fillable = [
        'bahan',
        'resep_id'
    ];

    public function resepmakanan()
    {
        return $this->belongsTo(ResepMakanan::class, 'resep_id','id');
    }
}
