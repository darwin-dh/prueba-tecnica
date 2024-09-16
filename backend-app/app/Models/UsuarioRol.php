<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UsuarioRol extends Model
{
    protected $table = 'usuario_rols';
    protected $primaryKey = 'id_usuario_rol';
    use HasFactory;

    public function scopeWithRole($query, $op)
    {
        if ($op)
            return $query->with(['Rol']);
    }
    public function Rol()
    {
        return $this->hasOne(Rol::class, 'id_rol', 'id_rol');
    }
}
