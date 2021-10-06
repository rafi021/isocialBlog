<?php

namespace Database\Seeders;

use App\Models\PostCategory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class PostCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categoryList = [
            'Science',
            'Business',
            'Sports',
            'Food',
            'International'
        ];

        foreach ($categoryList as $key => $category) {
            PostCategory::updateOrCreate([
                'name' => $category,
                'slug' => Str::slug($category)
            ]);
        }
    }
}
