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
            $table->bigIncrements('id');
            $table->string('langkah', 255);
            $table->bigInteger('resep_id')->unsigned();
            $table->timestamps();

            // Add foreign key constraint
            $table->foreign('resep_id')->references('id')->on('resepmakanan');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Drop foreign key constraint
        Schema::table('langkah_pembuatan', function (Blueprint $table) {
            $table->dropForeign(['resep_id']);
        });

        Schema::dropIfExists('langkah_pembuatan');
    }
};
