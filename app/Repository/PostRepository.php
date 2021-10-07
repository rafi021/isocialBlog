<?php

namespace App\Repository;

use App\Models\Post;

class PostRepository{

    // Post list with map and format function for custom formating.
    public function all()
    {
        return Post::orderBy('id')
            ->with(['user', 'postcategory'])
            ->get()
            ->map->format();
    }

    // Find post by Id with custom formating.
    public function findById($postId)
    {
        return Post::where('id', $postId)
            ->with(['user','postcategory', 'comments'])
            ->withCount('comments')
            ->firstOrFail()
            ->format();
    }
}
