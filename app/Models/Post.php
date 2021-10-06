<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use phpDocumentor\Reflection\Types\This;

class Post extends Model
{
    use HasFactory;

    protected $guarded = [];

    // Custom format function for Post Model
    public function format()
    {
        return [
            'post_id' => $this->id,
            'name' => $this->name,
            'post_body' => $this->blog_body,
            'post_banner' => $this->blog_banner,
            'category_name' => $this->postcategory->name,
            'tags' => $this->tags,
            'created_by' => $this->user->name,
            'last_modified' => $this->updated_at->diffForHumans(),
        ];
    }

    // Eveyer Post belong to a User
    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }

    // Every Post belong to a Post Category
    public function postcategory()
    {
        return $this->belongsTo(PostCategory::class, 'category_id', 'id')->withDefault();
    }
}
