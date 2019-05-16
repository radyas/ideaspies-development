@extends('layouts.front.master') @section('title','Register | www.cybertech.com')
@section('css')
  <style media="screen">
  .socialSignIn .fab {
    padding: 7px;
    font-size: 30px;
    width: 30px;
    text-align: center;
    text-decoration: none;
    margin: 5px 2px;
    border-radius: 50%;
    font-size: 15px;
  }

  .socialSignIn .fab:hover {
    opacity: 0.7;
    color: #fff;
    text-decoration: none;
  }
  .socialSignIn .fa-facebook-f {
    background: #3B5998;
    color: white;
  }
  .socialSignIn .fa-google {
    background: #dd4b39;
    color: white;
  }
  .socialSignIn .fa-linkedin-in{
    background: #007bb5;
    color: white;
  }
  .socialSignIn .fa-twitter {
    background: #55ACEE;
    color: white;
  }

  /* image uploader styles */
  .file-upload {
    position: relative;
    display: inline-block;
    width: 100%;
  }

  .file-upload__label {
    display: block;
    padding: 7px 15px;
    color: #888 !important;
    background: #fff;
    border-radius: 4px;
    transition: background .3s;
    border: 1px solid #ced4da;
    width: 100%;
  }
  .file-upload__label:hover {
    cursor: pointer;
    background: #ccc;
  }

  .file-upload__input {
    position: absolute;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    font-size: 1;
    width: 0;
    height: 100%;
    opacity: 0;
  }
  /* image uploader styles end */

  .newsletter-div{
    display: flex;
    align-items: center;
    margin-top: -10px;
  }

  .newsletter-span{
    padding-left: 5px;
  }

  .preview{
    max-height: 150px;
      margin-bottom: 15px;
  }

      #upload-image{
          height: auto;
          width: auto;
          top: 0;
          bottom: 0;
          left: 0;
          right: 0;
          max-width: 150px;
          max-height: 150px;
          display: block;
          margin: auto  ;
      }


  </style>
@endsection

@section('content')

  <div class="container">
    <div class="login-card">
      <form class="form-horizontal" method="POST" action="{{ route('user.register') }}" enctype="multipart/form-data">
        {{ csrf_field() }}

        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
          <label for="name" class=" control-label">Idea Spy Name*</label>

          <div class="">
            <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

            @if ($errors->has('name'))
              <span class="help-block">
                <strong>{{ $errors->first('name') }}</strong>
              </span>
            @endif
          </div>
        </div>

        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
          <label for="email" class=" control-label">E-Mail Address*</label>

          <div class="">
            <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

            @if ($errors->has('email'))
              <span class="help-block">
                <strong>{{ $errors->first('email') }}</strong>
              </span>
            @endif
          </div>
        </div>

        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
          <label for="password" class=" control-label">Password*</label>

          <div class="">
            <input id="password" type="password" class="form-control" name="password" required>

            @if ($errors->has('password'))
              <span class="help-block">
                <strong>{{ $errors->first('password') }}</strong>
              </span>
            @endif
          </div>
        </div>

        <div class="form-group">
          <label for="password-confirm" class=" control-label">Confirm Password*</label>

          <div class="">
            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
          </div>
        </div>

        <div class="form-group">
          <label for="upload-image" class=" control-label"> Upload Image (optional) </label>
          <div id="preview" class="preview"></div>
          <div class="">
            <div class="file-upload">
                <label for="upload" class="file-upload__label">Upload Image</label>
                <input id="upload" class="file-upload__input" type="file" name="upload">
            </div>

            {{-- <input id="upload-image" class="file-upload__input" type="file" name="upload-image"> --}}
          </div>
        </div>

        <div class="form-group">
          <div class="newsletter-div">
            <input id="newsletter-subscription" type="checkbox" name="newsletter_subscription" checked>
            <span class="newsletter-span">Subscribe to IdeaSpies Weekly</span>
          </div>
        </div>

        <div class="form-group">
          <div class="">
            <button type="submit" class="btn btn-primary btn-block btn-lg btn-signin">
              Register
            </button>
          </div>
        </div>
      </form>

      <hr>
      <div class="text-center socialSignIn">
        <p class="mb-1">or sign up using</p>
        <a href="{{ url('auth/google') }}" class="fab fa-google"></a>
        <a href="{{ url('auth/facebook') }}" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-linkedin-in"></a>
      </div>
      <hr>
      <p class="text-center">
        Already have an account? <a href="{{ url('login') }}">Login</a>
      </p>

    </div>
  </div>

@endsection

@section('js')
  <script>
      var _URL = window.URL || window.webkitURL;

      $("#upload").click(function() {
        if ($('#upload-image').length) 
          $('#upload-image').remove()
      });

      $("#upload").change(function () {
          var old = $("#upload").clone();
          var file;
          var image;
          if ((file = old[0].files[0])) {
              image = new Image();
              image.onload = function () {
                  $("#preview").append(this);
                  $(this).attr("id", "upload-image");
              }
              image.src = _URL.createObjectURL(file);
          }
      });
  </script>
  @endsection