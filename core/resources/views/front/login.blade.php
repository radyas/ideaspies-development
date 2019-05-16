@extends('layouts.front.master') @section('title','Login | www.cybertech.com')

<?php $page = 'login'; ?>

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

      @if (session()->has('error'))
          <div class="alert alert-danger">
            {{ session()->get('error') }}
          </div>
      @endif

      <form class="form-horizontal" method="POST" action="{{ url('login') }}">
        {{ csrf_field() }}
        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">

          <div class="">
            <input id="email" type="email" placeholder="E-Mail Address" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

            @if ($errors->has('email'))
              <span class="help-block">
                <strong>{{ $errors->first('email') }}</strong>
              </span>
            @endif
          </div>
        </div>

        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">

          <div class="">
            <input id="password" placeholder="Password" type="password" class="form-control" name="password" required autofocus>

            @if ($errors->has('password'))
              <span class="help-block">
                <strong>{{ $errors->first('password') }}</strong>
              </span>
            @endif
          </div>
        </div>

        <div class="form-group">
          <div class="col-md-6 col-md-offset-4">
            <div class="checkbox">
              <label>
                <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
              </label>
            </div>
          </div>
        </div>

       


        <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign in</button>
      </form>
      {{-- <a href="#" class="forgot-password" href="{{ route('password.request') }}">Forgot your password?</a> --}}
      <a class="forgot-password" href="{{ url('reset') }}">Forgot your password?</a>
      <hr>

      <div class="text-center socialSignIn">
        <p class="mb-1">or sign in using</p>
        <a href="{{ url('auth/google') }}" class="fab fa-google"></a>
        <a href="{{ url('auth/facebook') }}" class="fab fa-facebook-f"></a>
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
