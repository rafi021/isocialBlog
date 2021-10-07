<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\PostStoreRequest;
use App\Http\Requests\PostUpdateRequest;
use App\Models\Post;
use Illuminate\Http\Request;
use App\Repository\PostRepository;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use phpDocumentor\Reflection\Types\This;
use Illuminate\Support\Str;
use Image;

class PostController extends Controller
{
    private $postRepository;

    // Initiate post repository design pattern
    // build a bridge between model and controller
    public function __construct(PostRepository $postRepository)
    {
        $this->postRepository = $postRepository;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = $this->postRepository->all();
        return response()->json($posts,200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PostStoreRequest $request)
    {
        $post_id = Post::insertGetId([
            'name' => $request->input('post_title'),
            'slug' => Str::slug($request->input('post_title')),
            'blog_body' => $request->post_body,
            'category_id' => $request->category_id,
            'user_id' => 1,
            'tags' => $request->input('post_tags'),
            'created_at' => Carbon::now()
        ]);


        if($request->post_banner){
            $position = strpos($request->post_banner, ';');
            $sub = substr($request->post_banner, 0, $position);
            $file_extension = explode('/', $sub)[1];
            $name = time().".".$file_extension;
            $img = Image::make($request->post_banner)->resize(800,800);
            $upload_path = 'photos/posts/';
            $image_url = $upload_path.$name;
            $img->save($image_url);
            $product =  Post::findOrFail($post_id);
            $product->update([
                'blog_banner' => $image_url,
            ]);
        }
        $notification  = [
            'alert_type' => 'success',
            'message' => 'Post Created Successfully!!'
        ];

        $status_code = 201;
        return response()->json($notification, $status_code);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        $post = $this->postRepository->findById($post->id);
        return response()->json($post,200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(PostUpdateRequest $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $this->postRepository->delete($post->id);
        $notification  = [
            'alert_type' => 'success',
            'message' => 'Post Deleted Successfully!!'
        ];

        $status_code = 200;
        return response()->json($notification, $status_code);
    }
}
