@extends('layouts.front.master') @section('title','Welcome | www.cybertech.com')

<!-- CSS FOR THIS PAGE -->
@section('css')

<style type="text/css">
a:hover{
  text-decoration: none;
  color: #000;
}
.post-wrapper {
  /*height: 238px;*/
  margin-bottom: 40px;
}
.post-title {
  font-weight: 600;
  color: #000;
  display: block; /* or inline-block */
  text-overflow: ellipsis;
  word-wrap: break-word;
  overflow: hidden;
  max-height: 2.6em;
  line-height: 1.3em;
  height: 2.6em;
}
.post-title:hover {
  color: #d64c1e;
}
.title-1 {
  color: #126dd0e6;
}
.description {
  line-height:1.5em;
  min-height:4.5em;
  max-height:4.5em;
}
.row.footerLogoBar {
  /*margin-top: 250px;*/
}
</style>

  <meta property="og:url"           content="https://www.your-domain.com/your-page.html" />
  <meta property="og:type"          content="website" />
  <meta property="og:title"         content="Your Website Title" />
  <meta property="og:description"   content="Your description" />
  <meta property="og:image"         content="https://www.your-domain.com/path/image.jpg" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">


{{--  facebook share with count  --}}
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=226892474557929&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

@stop
<!-- BODY -->

@section('content')

  <div class="container pb-4">

    <div class="raw text-right pb-2">
      <div class="filterList">
      <a href="?type=latest" class="font-weight-bold">Latest</a> |
        <a href="?type=popular" class="font-weight-bold">Popular</a>
      </div>
    </div>


    <div class="row">
      {{--  idea of the week goes here  --}}
      @if(Request::is('search'))
        @if(empty(sizeof($posts)))
          <div class="col-md-6 col-sm-12 col-xs-12 mx-auto text-center">
            <h2>Search Results for "{{Request::input('q')}}" :</h2>
            <h5>Sorry, no posts found</h5>
          </div>
        @endif
      @endif
      @foreach($posts as $post)
          <div class="col-md-4 post-wrapper">
            <div class="img-container post-container">
              <input type="hidden" class="ideaw" value="{{$post->idea_of_the_week ?? ''}}">
                <a href="{{url('post/'.$post->id)}}">
                    @if ($post->type == 'image')
                      <img src="{{ asset($post->img_path) }}" alt="post-image" width="100%">
                    @endif

                    @if ($post->type == 'video')
                      <!-- <iframe src="{{ asset($post->video_path) }}" autoplay=false></iframe> -->
                      <video src="{{ asset($post->video_path) }}" controls="true" height="238px"></video>
                    @endif
                </a>
            </div>
          <div>
            <p class="py-2 mb-0 title-p">
              @if($post->idea_of_the_week == 1)
                <span class="title-red">Idea of the week</span>
              @endif
              <span class="title-1">{{$post->category->name ?? ''}}</span>
            </p>
            <a href="{{url('post/'.$post->id)}}">
            <h6 class="title-2 post-title">{{$post->title}}</h6>
            </a>
            <div class="description">
              {{substr($post->content,0,140)}}
              <a href="{{url('post/'.$post->id)}}">
                <span class="btn-readMore">Read More &#10148;</span>
              </a>
            </div>
            <div class="hashTags">
              @foreach(array_slice(json_decode(json_encode($post->tagged)),0,3) as $tag)
              <span>#{{$tag->tag_slug}} </span>
              @endforeach
            </div>
            <div class="dateAndName">
              <span>{{date("jS F Y", strtotime($post->created_at))}}</span> 
              <span>by {{$post->addedUser->first_name.' '.$post->addedUser->last_name}}</span>
                <a href="{{url('post/'.$post->id).'?comment=1'}}">
                    <span> • Comments</span>
                </a>
            </div>

            <div class="">
                {{--<div class='starrr' id='{{$post->id}}'></div>--}}
              <div style="display: inline-block;" class="rateYo" id="{{$post->id}}" data-rateyo-rating="{{ $post->ratings->avg('value') ?? 0}}"></div>
              <span>({{ $post->ratings->count('value') ?? 0}} vote(s), average {{ round($post->ratings->avg('value'),1) ?? 0}} out of 5)</span>
            </div>

            <div>
            <ul class="socialShere">
            <li>
{{--              <a href="http://www.facebook.com/sharer.php?u={{urlencode(Request::url().'/post/'.$post->id)}}" target="_blank">--}}
              <a href="http://www.facebook.com/sharer.php?u={{urlencode('/post/'.$post->id)}}" target="_blank">
                <button class="btn btn-share btn-fb" type="button" name="button" id='fb' post="{{$post->id}}">
                <i class="fab fa-facebook-f"></i> Share {{$post->share->where('type',1)->isEmpty()?'':$post->share->where('type',1)[0]->value}}
                </button>
             </a>
            </li>

            <li>
              <a href="https://twitter.com/share?url=https://simplesharebuttons.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank">
                <button class="btn btn-share btn-tw" type="button" name="button" id='tw' post="{{$post->id}}">
                  <i class="fab fa-twitter"></i>  Tweet 
                </button>
            </a>
            </li>

            <li>
              <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=https://simplesharebuttons.com" target="_blank">
                <button class="btn btn-share btn-in" type="button" name="button" id='in' post="{{$post->id}}">
                  <i class="fab fa-linkedin-in"></i> Share
                </button>
              </a>
            </li>

            <li>
              <a href="mailto:?subject=I wanted you to see this site&amp;body=Check out this site http://www.website.com." class="btn btn-share btnShareEmail"
                 title="Share by Email" id="email" post="{{$post->id}}">
                  <i class="fa fa-envelope" aria-hidden="true"></i> Email
              </a>
            </li>
          </ul>
          </div>
          </div>
        </div>
      @endforeach
      
    </div>

  </div>
@stop
<!-- JS FOR THIS PAGE -->
@section('js')
{{-- for linked in share btn  --}}
<script async src="https://static.addtoany.com/menu/page.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
  <script type="text/javascript">
  $(function () {
    $(".rateYo").rateYo();
    $(".rateYo").rateYo("option", "starWidth", "13px");
    $(".rateYo").rateYo("option", "fullStar", true);
  });
  var token = "{{ csrf_token() }}";
  $(".rateYo").rateYo()
    .on("rateyo.set", function (e, data) {
        $.post('post-rate',{id : e.currentTarget.id, value : data.rating, _token : token})
    });
  

  </script>

@stop
