<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Libros>
 */
class LibrosFactory extends Factory
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
            'titulo' => $this->faker->sentence,
            'ayer' => $this->faker->date,
            'genero' => $this->faker->word,
            'idioma' => $this->faker->languageCode,
            'descripcion' => $this->faker->paragraph,
            'id_autor' => $this->faker->randomElement([1, 2, 3, 4, 5]),
        ];
    }
}
