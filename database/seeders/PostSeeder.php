<?php

namespace Database\Seeders;

use App\Models\Post;
use Database\Factories\PostFactory;
use Illuminate\Database\Seeder;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create 50 post according to post factory defination
        Post::factory()->count(50)->create();
    }
}
