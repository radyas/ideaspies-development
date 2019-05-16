<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Packages\PostManage\Models\Post;

class Tag extends Model
{
    protected $table = "tagging_tagged";

    public function posts()
    {
    	return $this->belongsTo(Post::class);
    }
}
