<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $guarded = [];


    // Every comment belongs to a single Post
    public function post()
    {
        return $this->belongsTo(Post::class)->withDefault();
    }

    // Every comment belongs to a user
    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }
}
