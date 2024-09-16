<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\UsuarioRol>
 */
class UsuarioRolFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'id_usuario' =>  $this->faker->randomElement([1, 2]),
            'id_rol' => $this->faker->randomElement([1, 2]),
        ];
    }
}
