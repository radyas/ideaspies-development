<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use UserManage\Models\User;

class Comment extends Model
{
    protected $fillable = ['comment','user_id','post_id','status'];

    public function user(){
        return $this->belongsTo(User::class,'user_id','id');
    }
}
