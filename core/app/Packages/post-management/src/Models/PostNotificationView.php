<?php

namespace PostManage\Models;

use Illuminate\Database\Eloquent\Model;

class PostNotificationView extends Model
{
    protected $fillable = ['post_id', 'user_id'];
}
