<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Database\Factories\AutoresFactory;
use Database\Factories\LibrosFactory;
use Database\Factories\RolFactory;
use Database\Factories\UsuarioRolFactory;
use Database\Factories\UsuariosFactory;
use Database\Factories\WeatherDataFactory;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        AutoresFactory::new()->count(10)->create();
        LibrosFactory::new()->count(10)->create();
        UsuariosFactory::new()->count(2)->create();
        RolFactory::new()->count(3)->create();
        UsuarioRolFactory::new()->count(2)->create();
        WeatherDataFactory::new()->count(500)->create();
    }
}
