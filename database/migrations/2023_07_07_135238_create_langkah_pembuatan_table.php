<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('langkah_pembuatan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('resepmakanan_id');
            $table->foreign('resepmakanan_id')->references('id')->on('resepmakanan')->onDelete('cascade');
            $table->text('langkah_pembuatan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('langkah_pembuatan');
    }
};
