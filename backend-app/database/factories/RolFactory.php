<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Rol>
 */
class RolFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $roles = ["Admin", "Operativo"];
        $index = array_rand($roles);
        $name = $roles[$index];
        return [
            'status' => $this->faker->boolean,
            'nombre'  => $name
        ];
    }
}
