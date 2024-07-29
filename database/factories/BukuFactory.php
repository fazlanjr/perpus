<?php

namespace Database\Factories;

use App\Faker\BukuFaker;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Rak;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Buku>
 */
class BukuFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'kode_buku' => $this->faker->unique()->isbn13,
            'nama_buku' => BukuFaker::bookTitle(),
            'penerbit' => $this->faker->company,
            'rak' => fn () =>  Rak::inRandomOrder()->first()->id_rak,
            'stok_buku' => $this->faker->numberBetween(1, 100),
            'foto_buku' => 'buku.jpeg',
        ];
    }
}
