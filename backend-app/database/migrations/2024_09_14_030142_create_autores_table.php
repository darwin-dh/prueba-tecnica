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
        Schema::create('autores', function (Blueprint $table) {
            $table->increments('id_autor');
            $table->boolean('status')->nullable()->default(true);
            $table->string('nombre', 255)->nullable()->default(null);
            $table->date('fecha_de_nacimiento')->nullable()->default(null);
            $table->integer('libros_escritos')->nullable()->default(null);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('autores');
    }
};
