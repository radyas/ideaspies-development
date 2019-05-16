<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShareCount extends Model
{
    protected $table = 'share_count';

    protected $fillable = ['type','value','post_id'];
}
