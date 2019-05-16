@extends('layouts.front.master') @section('title','Notifications| www.cybertech.com')

@section('css')
  <style media="screen">
  .notificationsList{
      list-style: none;
      padding-left: 0 !important;
  }
  .notificationsList > div{
    {{--  border-bottom: 1px solid rgba(0,0,0,0.1);  --}}
    padding: 5px 15px;
  }
  .notificationsList > div a{
    color: #333;
    display: block;
    width: 100%;
    background: #F7F7F7;
    padding: 8px;
    border-radius: 4px 4px 0 0;
  }
  .notificationsList > div a:hover{
    color: #aaa;
    text-decoration: none;
  }
  .notificationsList > div a:hover .badge-danger{
    background-color: #dc3545a8;
  }
  .msg-box{
    background: #fff;
    padding: 5px 15px;
  }
  .mark-all{
    padding: 3px 15px !important;
    background: #0B1433;
    font-size: 13px;
  }
  @media(min-width:767px){
    .mark-all{

    }
  }
  </style>
@endsection
@section('content')
  <div class="container pb-4">

      <h3 class="text-center">Your Notifications</h3>
        <span class="pageTitleUnderline mb-4"></span>

        <hr>

      <div class="row justify-content-center">

        <div class="col-md-6">
          <div class="col-sm-12 text-right mb-2">
            <button class="mark-all btn btn-primary" id="readAll" onclick="readall(event)">
              Mark all as read
            </button>
            <input type="hidden" id="token" value="{{csrf_token()}}">
          </div>

          <div class="notificationsList">
            @if(empty(sizeof($posts)))
              <div class="col-md-6 col-sm-12 col-xs-12 mx-auto text-center">
                <h5>No notifications available</h5>
              </div>
            @endif
            @foreach ($posts as $item)
              <div>
                <a href="{{ url('post/'.$item->id) }}?seen=true">
                  <div class="msg-box">
                    <strong>{{ $item->addedUser->first_name.' '.$item->addedUser->last_name }}</strong> posted a new idea.
                    <div class=""><span class="badge badge-danger p-1"><i class="far fa-clock"></i> &nbsp;{{ $item->created_at }}</span></div>
{{--                    <div class=""><span class="badge badge-danger p-1"><i class="far fa-clock"></i> &nbsp;{{ $item->created_at->diffForHumans() }}</span></div>--}}
                    {{--  <p class="mb-0"><small>{{ \Carbon\Carbon::now()->toDayDateTimeString() }}</small></p>  --}}
                  </div>
                  <p class="mt-1 mb-0">Notification from : ideapies</p>
                </a>
              </div>
            @endforeach
            {{-- @for ($i = 0; $i < 4; $i++)
              <div>
                <a href="#">
                  <div class="msg-box">
                    <strong>David</strong> reacted to a post you shared.
                    <div class=""><span class="badge badge-danger p-1"><i class="far fa-clock"></i> &nbsp;Nov 20</span></div>
                  </div>
                  <p class="mt-1 mb-0">Notification from : ideapies admin</p>
                </a>
              </div>
            @endfor --}}
            </div>
        </div>
      </div>

  </div>
@endsection

@section('js')
  <script>
    function readall(event){
      event.preventDefault();
      var token = {
        _token : $("#token").val()
      };
      $.post('admin/post/seen',token,function (data) {
        window.location.href = "/";
      })
    }
  </script>
@endsection