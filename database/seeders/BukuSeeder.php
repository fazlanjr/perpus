<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Buku;
use Illuminate\Support\Facades\DB;

class BukuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        Buku::query()->delete();

        DB::statement('ALTER TABLE buku AUTO_INCREMENT = 1;');

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        Buku::factory()->count(1000)->create();
    }
}
