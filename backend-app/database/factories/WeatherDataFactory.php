<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\WeatherData>
 */
class WeatherDataFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'city' => $this->faker->randomElement(['London', 'New York', 'Tokyo', 'Paris']), // Ciudad aleatoria
            'temperature' => $this->faker->randomFloat(2, -10, 35), // Temperatura aleatoria entre -10 y 35 grados
            'date' => $this->faker->dateTimeBetween('-30 days', 'now'), // Fechas entre los últimos 30 días
        ];
    }
}
