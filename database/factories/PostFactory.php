<?php

namespace Database\Factories;

use App\Models\Post;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Post::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // defination of post
        return [
            'name' => $this->faker->sentence(),
            'slug' => $this->faker->slug(),
            'blog_banner' => 'https://picsum.photos/200/300',
            'blog_body' => $this->faker->paragraph(),
            'category_id' => rand(1,3),
            'tags' => 'new, latest, science, business',
            'user_id' => random_int(1,10),
        ];
    }
}
