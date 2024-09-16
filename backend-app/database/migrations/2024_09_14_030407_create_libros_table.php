<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('libros', function (Blueprint $table) {
            $table->increments('id_libro');
            $table->boolean('status')->nullable()->default(true);
            $table->string('titulo')->nullable()->default(null);
            $table->date('ayer')->nullable()->default(null);
            $table->string('genero')->nullable()->default(null);
            $table->string('idioma')->nullable()->default(null);
            $table->string('descripcion')->nullable()->default(null);
            $table->integer('id_autor')->unsigned();
            $table->foreign('id_autor')->references('id_autor')->on('autores')->onDelete('cascade');;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('libros');
    }
};
