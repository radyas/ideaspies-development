<?php
namespace PostManage\Models;

use Illuminate\Database\Eloquent\Model;
use CategoryManage\Models\Category;
use UserManage\Models\User;
use Sentinel;

class Post extends Model
{
    use \Conner\Tagging\Taggable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'type', //'image','url','content'
        'content',
        'img_path',
        'video_path',
        'url',
        'category_id',
        'added_by_type', //'admin', 'user'
        'added_by_id',
        'title',
        'idea_of_the_week',
    ];

    

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function addedBy()
    {
        if ($this->added_by_type === 'admin') {
            return User::find($this->added_by_id);
        }

        return null;
    }

    public function addedUser()
    {
        return $this->belongsTo(User::class, 'added_by_id', 'id');
    }

    public function postNotificationView()
    {
        return $this->hasMany(PostNotificationView::class);
    }

    public static function unseenPosts()
    {
       if (Sentinel::check()) {

            $user = Sentinel::getUser();

            $seen = PostNotificationView::where('user_id', $user->id)->get()->pluck('post_id')->toArray();

            return self::with('addedUser')->whereNotIn('id', $seen)->orderBy('id', 'desc')->get();
       }

       return collect([]);
    }

    public function ratings(){
        return $this->hasMany(PostRate::class);
    } 
    
    public function share(){
        return $this->hasMany(\App\ShareCount::class,'post_id','id');
    }

    public function comments(){
        return $this->hasMany(\App\Comment::class,'post_id','id');
    }
}