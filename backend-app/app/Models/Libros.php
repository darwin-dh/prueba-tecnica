<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libros extends Model
{

    protected $table = 'libros';
    protected $primaryKey = 'id_libro';
    use HasFactory;

    public function guardar(
        $status,
        $titulo,
        $ayer,
        $genero,
        $idioma,
        $descripcion,
        $id_autor,
    ) {
        $this->status = $status;
        $this->titulo = $titulo;
        $this->ayer = $ayer;
        $this->genero = $genero;
        $this->idioma = $idioma;
        $this->descripcion = $descripcion;
        $this->id_autor = $id_autor;

        if ($this->save()) {
            return $this;
        } else {
            throw new \Exception('Error al guardar');
        }
    }

    public static function modificar(
        Libros  $libro,
        $status,
        $titulo,
        $ayer,
        $genero,
        $idioma,
        $descripcion,
        $id_autor,
    ) {
        $libro->status = $status;
        $libro->titulo = $titulo;
        $libro->ayer = $ayer;
        $libro->genero = $genero;
        $libro->idioma = $idioma;
        $libro->descripcion = $descripcion;
        $libro->id_autor = $id_autor;

        if ($libro->save()) {
            return $libro;
        } else {
            throw new \Exception('Error al modificar');
        }
    }
    public function scopeWithAutor($query, $op)
    {
        if ($op)
            return $query->with(['Autor']);
    }
    public function Autor()
    {
        return $this->hasOne(Autores::class, 'id_autor', 'id_autor');
    }

    public function scopeFiltrar($query, $request)
    {
        return $query->where('status', true)
            ->when($request->titulo, function ($q) use ($request) {
                $q->where('titulo', 'like', '%' . $request->titulo . '%');
            })
            ->when($request->idioma, function ($q) use ($request) {
                $q->where('idioma', 'like', '%' . $request->idioma . '%');
            })
            ->withAutor(true)->whereHas('Autor', function ($q) use ($request) {
                $q->where('id_autor', 'like', '%' . $request->id_autor . '%');
            });
    }
}
