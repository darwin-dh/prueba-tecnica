<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Autores>
 */
class AutoresFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'status' => $this->faker->boolean,
            'nombre' => $this->faker->name,
            'fecha_de_nacimiento' => $this->faker->date,
            'libros_escritos' => $this->faker->numberBetween(0, 100),
        ];
    }
}
