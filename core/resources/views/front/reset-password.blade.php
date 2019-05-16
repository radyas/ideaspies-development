@extends('layouts.front.master') @section('title','Login | www.cybertech.com')

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
  </style>
@endsection
@section('content')
  <div class="container">
    <div class="login-card">
      {{--  <img src="{{ asset('assets/front/images/avatar_2x.png') }}" class="profile-img-card">  --}}


      <form class="form-horizontal" method="POST" action="">
        {{ csrf_field() }}
        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">

          <div class="">
            <p class="text-center pb-2">
              Sometimes we all forget something, Please enter your email address in order to change your password
            </p>
            <input id="email" type="email" placeholder="E-Mail Address" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

            @if ($errors->has('email'))
              <span class="help-block">
                <strong>{{ $errors->first('email') }}</strong>
              </span>
            @endif
          </div>
        </div>



        <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Request Password Change</button>
      </form>
      <div class="text-center" style="margin-top: 10px;">
        <a href="{{url('login')}}" class="forgot-password">Back to Login</a>
      </div>
      {{-- <a href="#" class="forgot-password" href="{{ route('password.request') }}">Forgot your password?</a> --}}

      <hr>

      <div class="text-center socialSignIn">
        <p class="mb-1">Back to <a href="{{ url('login') }}">sign in</a> or sign in using</p>
        <a href="#" class="fab fa-google"></a>
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-linkedin-in"></a>
      </div>

      <hr>
      <p class="text-center">
        Not registered? <a href="{{ url('register') }}">Register</a>
      </p>
    </div>
  </div>
@endsection
