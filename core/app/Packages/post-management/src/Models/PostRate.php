<?php

namespace PostManage\Models;

use Illuminate\Database\Eloquent\Model;

class PostRate extends Model
{
    protected $fillable = ['user_id', 'value', 'post_id'];
}
