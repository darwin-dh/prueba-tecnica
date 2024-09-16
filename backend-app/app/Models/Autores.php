<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Autores extends Model
{
    protected $table = 'autores';
    protected $primaryKey = 'id_autor';
    use HasFactory;

    public function guardar(
        $nombre,
        $status,
        $fecha_de_nacimiento,
        $libros_escritos
    ) {
        $this->nombre              = $nombre;
        $this->status              = $status;
        $this->fecha_de_nacimiento = $fecha_de_nacimiento;
        $this->libros_escritos     = $libros_escritos;
        $this->status              = $status;

        if ($this->save()) {
            return $this;
        } else {
            throw new \Exception('Error al guardar');
        }
    }

    public static function modificar(
        Autores $autores,
        $nombre,
        $status,
        $fecha_de_nacimiento,
        $libros_escritos
    ) {
        $autores->nombre              = $nombre;
        $autores->status              =  $status;
        $autores->fecha_de_nacimiento = $fecha_de_nacimiento;
        $autores->libros_escritos     = $libros_escritos;
        if ($autores->save()) {
            return $autores;
        } else {
            throw new \Exception('Error al guardar');
        }
    }

    public function scopeWithAutoresLibros($query, $op)
    {
        if ($op)
            return $query->with(['libros']);
    }
    public function libros()
    {
        return $this->hasOne(Libros::class, 'id_autor', 'id_autor')->where('status', true);
    }
}
