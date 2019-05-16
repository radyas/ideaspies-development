@extends('layouts.front.master') @section('title','Post | www.cybertech.com')

@section('css')

  <meta property="og:url"           content="{{url()}}" />
  <meta property="og:type"          content="website" />
  <meta property="og:title"         content="Ideaspies - {{$post->title}}" />
  <meta property="og:description"   content="{{substr($post->content,0,50)}}" />
  @if($post->type =='image')
    <meta property="og:image"         content="{{url().'/'.$post->img_path }}" />
  @elseif($post->type == 'video')
    <meta property="og:video"         content="{{url().'/'.$post->video_path }}" />
  @endif

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">

  <style media="screen">
  .post-details {
    background-color: #fff;
  }
  .post-details img, .post-details video {
    width:auto;
    height: auto;
    max-width: 100%;
    max-height: 400px;
  }
  .postImg span{
    font-size: 11px !important;
    font-style: italic;
  }
  .postCatList{
    padding-left: 0 !important;
  }
  .postCatList li{
    display: inline-block;
    padding: 0px 6px;
  }
  .postCatList .selected{
    background: #d71933;
    color: #fff;
  }
  .postSocialLinks{
    width: 100%;
    text-align: center;
    display: block;
  }
  .btn-share {
    padding: 4px 10px;
    margin-top: 0px;
  }
  .postSocialLinks a{
    display: inline-block;
    padding: 0 5px;
    color: #333;
  }
  .postUser{
    max-width: 280px !important;
  }

  .a2a_default_style a{
    padding: 0 !important;
  }
  #rate:hover{
    cursor: pointer;
  }
  @media (max-width: 767px) {
    .postUser {
      margin-left: auto;
      margin-right: auto;
    }
  }
  </style>

@endsection

@section('content')

{{--  facebook share with count  --}}
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=226892474557929&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>



  <div class="container pb-4 text-center">
    <ul class="postCatList">

      @if($post->idea_of_the_week==1)
    <li class="selected">Exclusive</li>
    @endif
      <li>{{$post->category->name}}</li>

    </ul>

    <h3 class="">{{$post->title}}</h3>
    <span class="pageTitleUnderline mb-4"></span>

    <div class="row pt-3">



      <div class="col-sm-12 col-md order-md-2">
        <div class="post-details">
          @if ($post->type == 'image')
            <img src="{{ asset($post->img_path) }}" alt="post-image" width="100%">
          @endif

          @if ($post->type == 'video')
            <video src="{{ asset($post->video_path) }}" controls="true"></video>
          @endif
        </div>

        <p class="text-justify mt-3">
          <?php echo $post->content ?>
        </p>

         <div class="hashTags">
            @foreach(array_slice(json_decode(json_encode($post->tagged)),0,3) as $tag)
            <span>#{{$tag->tag_slug}} </span>
            @endforeach
          </div>

        <div>

          <ul class="socialShere">
          <li>
            <a href="http://www.facebook.com/sharer.php?u={{url('about-us')}}" target="_blank">
              <button class="btn btn-share btn-fb" type="button" name="button">
              <i class="fab fa-facebook-f  fa-lg"></i> Share {{$post->share->where('type',1)->isEmpty()?'':$post->share->where('type',1)[0]->value}}
              </button>
           </a>
          </li>

          <li>
            <a href="https://twitter.com/share?url=https://simplesharebuttons.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank">
              <button class="btn btn-share btn-tw" type="button" name="button">
                <i class="fab fa-twitter  fa-lg"></i>  Tweet {{$post->share->where('type',2)->isEmpty()?'':$post->share->where('type',2)[0]->value}}
              </button>
          </a>
          </li>

          <li>
            <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=https://simplesharebuttons.com" target="_blank">
              <button class="btn btn-share btn-in" type="button" name="button">
                <i class="fab fa-linkedin-in fa-lg"></i>  Share {{$post->share->where('type',3)->isEmpty()?'':$post->share->where('type',3)[0]->value}}
              </button>
            </a>
          </li>

          <li>
            <a href="mailto:?subject=I wanted you to see this site&amp;body=Check out this site http://www.website.com." class="btn btn-share btnShareEmail"
               title="Share by Email">
                <i class="fa fa-envelope  fa-lg" aria-hidden="true"></i> Email {{$post->share->where('type',4)->isEmpty()?'':$post->share->where('type',4)[0]->value}}
            </a>
          </li>
        </ul>

        </div>

        <h5>What do you think?</h5>

        @if(Sentinel::check())
        <a class="text-danger" href="{{url('user/logout')}}">Logged in as {{Sentinel::check()->first_name.' '.Sentinel::check()->last_name}}. Log out?</a>


        <p><strong>Comment</strong></p>
        <form class="" action="{{url('post-comment')}}" method="post">
          {{csrf_field()}}
          <div class="form-group">
            <input type="hidden" name="user_id" value="{{Sentinel::check()? Sentinel::check()->id : null}}">
            <input type="hidden" name="post_id" value="{{$post->id}}">
            <textarea id="comment" class="form-control" name="comment" rows="8" cols="80" required {{app('request')->has('comment') ? 'autofocus' : ''}}></textarea>
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-dark" name="button">Post Comment</button>
          </div>
        </form>
        @endif
        <hr>
        <div>
          <h5>Comments</h5>
          @if($comments)
            @foreach($comments as $comment)
              <div class=" mb-2">
                <div class="row col-6 pt-2">
                  <h5>{{$comment->user->first_name.' '.$comment->user->last_name}}</h5>
                </div>
                <div class="row col-12 pl-5">
                  {{$comment->comment}}
                </div>
                @if(Sentinel::check() && $comment->user_id==Sentinel::check()->id)
                  <div class="row col-3">
                    <div class="col-6">
                      <a href="{{url('post/'.$post->id.'/edit')}}">Edit</a>
                    </div>
                    <div class="col-6">
                      <a href="{{url('post/'.$post->id.'/edit')}}">Delete</a>
                    </div>
                  </div>
                @endif
              </div>
            @endforeach
          @endif
        </div>
      </div>


      <div class="col order-md-1 postUser">
        <div class="media" style="margin-left: auto;">
          <div class="media-body align-self-center">
            <p class="mb-1">By <strong style="color: #026CD0;">{{$post->addedUser->first_name.' '.$post->addedUser->last_name}}</strong></p>
            <p class="mb-1">{{date("jS F Y", strtotime($post->created_at))}}</p>
          </div>
          <img class="ml-3 profile" src="{{ asset(null!==($post->addedUser->img_path)?$post->addedUser->img_path:'assets/front/images/temp/profilepic.png') }}" alt="Generic placeholder image">
        </div>
        <hr>
        {{--  <p class="text-center mb-0"><strong>Share</strong></p>  --}}
        <span class="postSocialLinks hide">
          <a target="_blank" href="#"><i class="fab fa-facebook-f"></i></a>
          <a target="_blank" href="#"><i class="fab fa-twitter"></i></a>
          <a target="_blank" href="#"><i class="fas fa-envelope"></i></a>
          <a target="_blank" href="#"><i class="fab fa-linkedin-in"></i></a>
        </span>
        <p class="text-center mb-0"><strong><span id="rate">Rate</span></strong></p>

          <div style="display: inline-block;" class="rateYo" id="{{$post->id}}" data-rateyo-rating="{{ $post->ratings->avg('value') ?? 0}}">
          </div>
              <div>({{ $post->ratings->count('value') ?? 0}} vote(s), average {{ round($post->ratings->avg('value'),1) ?? 0}} out of 5)</div>
      </div>


    </div>

    <hr>
    <h4 class="text-center mb-4"><strong>Related Posts</strong></h4>
    <div class="">
      @include('front.components.related-posts')
    </div>

  </div>


<div class="modal fade" id="rateModal" tabindex="-1" role="dialog" aria-labelledby="rateModal" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Rate Post</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <select class="form-control" id="rateValue" name="rate">
          <option value="" selected disabled>Please select</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
        </select>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="submitRate()">Submit</button>
      </div>
    </div>
  </div>
</div>

@endsection

@section('js')
  {{--for linked in share btn--}}
  <script async src="https://static.addtoany.com/menu/page.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
  <script type="text/javascript">
  $(function () {
    $(".rateYo").rateYo();
    $(".rateYo").rateYo("option", "starWidth", "25px");
    $(".rateYo").rateYo("option", "fullStar", true);
  });
  var token = "{{ csrf_token() }}";
  $(".rateYo").rateYo()
    .on("rateyo.set", function (e, data) {
        $.post("{{url('post-rate')}}",{id : e.currentTarget.id, value : data.rating, _token : token})
    });
  </script>
  @if(app('request')->has('comment'))
    <script>
      $(document).on('load', function() {
        var elmnt = document.getElementById("comment");
        elmnt.scrollIntoView();
      });
    </script>
  @endif
@endsection
