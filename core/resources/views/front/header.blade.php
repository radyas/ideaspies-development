<div class="header">

  <header>
  <div class="row" style="border-bottom: 1px solid rgba(255, 255, 255, 0.5);">

        <ul class="top-bar mx-md-5">
          <li><a href="{{Sentinel::check() ? url('admin') : ' '}}" class="{{ Request::is('/') ? 'activeUrl' : '' }}">Welcome {{Sentinel::check() ? Sentinel::getUser()->first_name : ''}}
            @if ($user = Sentinel::check())
              @if($user->img_path != null)
                &nbsp;<img src="{{Sentinel::check() ? Sentinel::check()->img_path : ' '}}"  data-toggle="tooltip" data-placement="bottom" data-html="true"
                       title="<img src='{{Sentinel::check() ? Sentinel::check()->img_path : ' '}}' style='max-height: 75px; max-width: 75px;'>" style="max-height: 10px; max-width: 10px;" >
              @else
                  <i class="far fa-user-circle" style="font-size: 16px;" aria-hidden="true"></i>
              @endif
            @endif
      </a>
      </li>
      {{--  <li class="date"> {{ Carbon\Carbon::now()->format('l d F Y') }} </li>s  --}}
      <li class="login">
        @if (Sentinel::check())
          <a href="{{ url('notifications') }}" class="notification {{ Request::is('notifications') ? 'activeUrl' : '' }}"><i class="far fa-bell"></i><span class="notificationCount">{{ PostManage\Models\Post::unseenPosts()->count() }}</span></a>
          <span class="px-1"> | </span>
          <a href="{{ url('user/logout') }}">logout</a>
        @else
          <a href="{{ url('register') }}" class="{{ Request::is('register') ? 'activeUrl' : '' }}">Register</a>
          <span class="px-1"> | </span>
          <a href="{{ url('login') }}" class="{{ Request::is('login') ? 'activeUrl' : '' }}">Login</a>
        @endif
      </li>
    </ul>
  </div>
{{--
{{ dd($user = Sentinel::check()) }} --}}
  <div class="sec-bar text-center" style="padding-top: .3rem !important; padding-bottom: .5rem;">
    <a href="{{ url('/') }}">
      <img id="main-logo" src="{{ asset('assets/front/images/mainlogo-black.png') }}" alt="ideaspies-logo">
    </a>
    <p class="text-uppercase" style="margin-bottom: 0;">Sharing innovation to inspire action</p>
    {{-- <ul class="subscribe-list">
      <li>
        <span class="btn btn-sm btn-2">Subscribe</span>
      </li>
      <li>
        <span class="subscribe-count">
          <span>2</span>
        </span>
      </li>
    </ul> --}}
  </div>

</header>

<div class="row justify-content-md-center navbar-light ">
  <nav class="navbar navbar-expand-lg main-nav mx-md-5">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item {{ Request::is('/') ? 'navActive' : '' }}">
          <a class="nav-link" href="{{ url('/') }}">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item {{ Request::is('about-us') ? 'navActive' : '' }}">
          <a class="nav-link" href="{{ url('about-us') }}">About</a>
        </li>
        <li class="nav-item {{ Request::is('top-tips') ? 'navActive' : '' }}">
          <a class="nav-link" href="{{ url('top-tips') }}">Tips</a>
        </li>
        <li class="nav-item {{ Request::is('guidelines') ? 'navActive' : '' }}">
          <a class="nav-link" href="{{ url('guidelines') }}">Guidelines</a>
        </li>
        <li class="nav-item {{ Request::is('blog') ? 'navActive' : '' }}">
          <a class="nav-link" href="#">Blog</a>
        </li>
        <li class="nav-item {{ Request::is('enterprise') ? 'navActive' : '' }}">
          <a class="nav-link" href="{{ url('enterprise') }}">Enterprise</a>
        </li>
        <li class="nav-item {{ Request::is('contact-us') ? 'navActive' : '' }}">
          <a class="nav-link" href="{{ url('contact-us') }}">Contact</a>
        </li>
        @if(Sentinel::check())
          <li class="nav-item {{ Request::is('my-posts') ? 'navActive' : '' }}">
            <a class="nav-link" href="{{ url('my-posts') }}" onclick="myPosts(this,event)">My Posts</a>
          </li>
        @endif
        {{-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" onclick="navMore()" aria-haspopup="true" aria-expanded="false">
            More
          </a>
        </li> --}}

      </ul>

    </div>

  </nav>
  <ul class="navbar-nav_ sec-nav">
    <li class="nav-item">
      <div class="wrapper">
        <div class="search-box">
            <input class="search-input" type="text" placeholder="Search" class="input">
          <div class="btn-search">
            <i class="fas fa-search fa-2x" data-toggle="modal" data-target="#searchModal"></i>
          </div>
        </div>
      </div>
    </li>
    <li class="nav-item">
      <div class="dropdown show">        
        <a class="tn btn-sm btn-1" style="display: flex;" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-cloud-upload-alt" style="font-size: 18px;"></i>&nbsp;<span>Post Idea</span>
        </a>

        <div class="dropdown-menu dropdown-menu-right dropdown-size" aria-labelledby="dropdownMenuLink">
          <a class="dropdown-item font" href="{{ url('post-with-image') }}" onclick="post(this,event)">Post idea with an Image</a>
          <a class="dropdown-item" href="{{ url('post-with-video') }}" onclick="post(this,event)">Post idea with a Video</a>
          <a class="dropdown-item" href="{{ url('post-with-url') }}" onclick="post(this,event)">Post idea with a URL</a>
        </div>
      </div>
    </li>
  </ul>

</div>

</div>

<div>
  <i class="fa fa-play" style="display: none;"></i>
</div>

<div class="row categories-box mb-4">
  <!-- <ul> -->
    
    @foreach($data as $row)
      <div class="menu text-center">
        <a id="{{ $row->id }}" href="{{url('sort').'/'.$row->id}}">{{ $row->name }}</a> 
      </div>
    @endforeach

  <!-- </ul>  -->
</div>

