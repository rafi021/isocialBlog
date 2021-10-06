<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // User::factory(10)
        // ->has(Post::factory()->count(50), 'posts')
        // ->create();

        // Create 10 user according to User factory defination.
        User::factory()->count(10)->create();
    }
}
