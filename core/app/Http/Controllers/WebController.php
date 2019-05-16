<?php

namespace App\Http\Controllers;


use App\Comment;
use App\Http\Requests\ReCaptchataTestFormRequest;
use CakeTypeManager\Models\CakeType;
use Illuminate\Http\Request;
use App\Models\Category;

use File;
use NewsManage\Models\News;
use PrivateClassManage\Models\PrivateClassCategory;
use PrivateClassManage\Models\PrivateReg;
use GalleryManage\Models\Gallery;
use GalleryManage\Models\GalleryCategory;
use GalleryManage\Models\GalleryImage;
use RecipesManager\Models\Recipes;
use PublicationManager\Models\Publication;
use TastingManage\Models\Tasting;
use TastingManage\Models\TastingPeopleType;
use SliderManager\Models\Slider;
use App\Models\ShoppingCart;
use App\Models\BillingDetail;
use CountryManager\Models\Country;
use App\Models\LastShipping;
use App\Models\ShippingMethod;
use App\Models\Purchase;
use App\Models\PurchaseItem;
use App\Models\PaypalTransaction;
use App\Models\SortType;
use App\Models\Rating;
use App\ShareCount;
use CouponManager\Models\Coupon;
use CouponManager\Models\CouponItem;
use PostManage\Models\Post;
use PostManage\Models\PostRate;
use PostManage\Models\PostNotificationView;

use UserManage\Models\User;
use Validator;
use Response;
use Input;
use DB;
use Session;
use Mail;
use Cart;
use PayPal;
use Usps;
use Carbon\Carbon;



use Sentinel;
use PDF;
use View;
use Permissions\Models\Permission;

use Hash;

use App\Models\Home;
class WebController extends Controller {

	/*
		|--------------------------------------------------------------------------
		| Web Controller
		|--------------------------------------------------------------------------
		|
		| This controller renders the "marketing page" for the application and
		| is configured to only allow guests. Like most of the other sample
		| controllers, you are free to modify or remove it as you desire.
		|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct() {
//		$this->middleware('guest');
	}



    public function index() {
		$type = \request('type');
		if($type == 'latest')
		{
			$post = Post::with('category','share')
			->orderBy('idea_of_the_week','Desc')
			->orderBy('created_at','DESC')
			->with('addedUser')
			->with('tagged')
			->get();
		}
		elseif ($type == 'popular') {
			$post = Post::with('category','share')
			->orderBy('idea_of_the_week','Desc')
			->orderBy('visit_count','Desc')
			->with('addedUser')
			->with('tagged')
			->get();
		}
		else
		{
			$post = Post::with(['category','share','addedUser','tagged'])
			->orderBy('idea_of_the_week','Desc')
			->get();
		}
        return view('front.index')->with('posts' , $post);
    }

	public function postView($id){
		$post = Post::with('category', 'ratings','share')->where('id', $id)->first();
		$related = Post::with('category')->where('category_id', $post->category->id)->whereNotIn('id',[$post->id])->limit(4)->get();
		$post->visit_count = $post->visit_count+1;
		$post->save();
		$comments = Comment::with('user')->where('post_id',$id)->get();
		if(\request('seen')==true)
		{
			PostNotificationView::insert(['post_id' => $post->id, 'user_id' => Sentinel::getUser()->id]);
		}
		return view('front.posts.post', compact('post','related','comments'));
	}

	public function myPosts(){
		if($id = Sentinel::check())
		{
			$posts = Post::with('category', 'ratings','share')->where('added_by_id', $id->id)->get();
			return view('front.posts.my-posts', compact('posts'));
		}
		else
		{
			return redirect()->route('front.login');
		}
	}

	public function ratePost(Request $request){
		 $validator = Validator::make($request->all(), [
            'id' => 'required|integer',
			'value' => 'required|integer|between:1,5'
        ]);

		if ($validator->fails()) {
           return response()->json(['msg' => 'error'], 422);
        }

		if (Sentinel::check()) {
			PostRate::updateOrCreate(
				[
					'user_id' => Sentinel::getUser()->id,
					'post_id' => $request->id
				],
				['value' =>$request->value]
			);
		}
		else
		{
			PostRate::create([
				'user_id' => null,
				'post_id' => $request->id,
				'value' =>$request->value
			]);
		}

		return response()->json(['msg' => 'success'], 200);
	}

	public function notifications(){
		$posts = Post::unseenPosts();
		return view('front.notifications', compact('posts'));
	}

    public function search(){
        $search = \request('q');
        $data = Post::with('category')->with('addedUser')->with('tagged')
            ->where('content','like','%'.$search.'%')
            ->orWhere('title','like','%'.$search.'%')
            ->get();
        return view('front.index')->with('posts',$data);
	}
	
	public function sort($id) {
		$type = \request('type');
		if($type == 'latest')
		{
			$post = Post::with('category')
			->where("category_id", $id)
			->orWhere('idea_of_the_week',1)
			->orderBy('idea_of_the_week','Desc')
			->orderBy('created_at','DESC')
			->with('addedUser')
			->with('tagged')
			->get();
		}
		elseif ($type == 'popular') {
			$post = Post::with('category')
			->where("category_id", $id)
			->orWhere('idea_of_the_week',1)
			->orderBy('idea_of_the_week','Desc')
			->orderBy('visit_count','Desc')
			->with('addedUser')
			->with('tagged')
			->get();
		}
		else
		{
			$post = Post::with('category')
			->where("category_id", $id)
			->orWhere('idea_of_the_week',1)
			->orderBy('idea_of_the_week','Desc')
			->with('addedUser')
			->with('tagged')
			->get();
		}
        return view('front.index')->with('posts' , $post);
	}
	
	public function share_count($post,$type)
	{
		ShareCount::updateOrCreate(
			['type' => $type,'post_id'=>$post],
			['value'=> DB::raw('value + 1')]
		);
	}

	public function comment(Request $request){
        $requestData = $request->all();
        $requestData['status'] = 1;
        Comment::create($requestData);
        return redirect()->back();
    }

    public function contact(Request $request)
    {
        $data = [
            'name' => $request->name,
            'subject' => $request->subject,
            'email' => $request->email,
            'comment' => $request->comment,
        ];
        Mail::send('mail.contact', $data, function ($message) {
            $message->to(User::find(1)->email);
            $message->subject('New Inquiry');
        });
        return redirect()->back();
    }



}
