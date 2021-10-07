<?php

namespace App\Repository;

use App\Models\Post;

class PostRepository{

    // Post list with map and format function for custom formating.
    public function all()
    {
        return Post::orderBy('id', 'DESC')
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

    // Find post by Id and delete
    public function delete($postId)
    {
        $post = Post::where('id', $postId)
        ->firstOrFail();

        // if post banner exists then unlink it first
        // if($post->blog_banner){
        //     unlink(($post->blog_banner));
        // }

        $post->delete();

    }
}
