<!doctype html>
<html class="no-js" lang="">

<head>
  <meta charset="utf-8">
  <title>Admin Panel | Ideaspies web portal</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width">
  <link rel="shortcut icon" href="/favicon.ico">

 <link rel="stylesheet" href="{{asset('assets/back/vendor/fontawesome/css/font-awesome.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/vendor/metisMenu/dist/metisMenu.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/vendor/animate.css/animate.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/vendor/bootstrap/dist/css/bootstrap.css')}}">

 <link rel="stylesheet" href="{{asset('assets/back/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/fonts/pe-icon-7-stroke/css/helper.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/styles/style.css')}}">

</head>

<body class="blank">

<!-- Simple splash screen-->
<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>Ideaspies | Official Admin Panel</h1><p>Special Admin Theme for Ideaspies web solution with very clean and aesthetic style and feel.</p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="color-line"></div>

<!-- <div class="back-link">
    <a href="index-2.html" class="btn btn-primary">Back to Dashboard</a>
</div> -->

<div class="login-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>ENTER YOUR USER DETAILS TO LOGIN</h3>
                <small>If you doesn't have login details, Please contact your administrators!</small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        <form action="{{URL::to('user/login')}}" id="loginForm" method="POST">
                            <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
                            <div class="form-group">
                              @if($errors->has('login'))
                                <div class="alert alert-danger">
                                  Oh snap! {{$errors->first('login')}}
                                </div>
                              @endif
                                <label class="control-label" for="username">Username</label>
                                <input type="text" placeholder="example@gmail.com" title="Please enter you username" required="" value="{{{Input::old('username')}}}" name="username" id="username" class="form-control">
                                <span class="help-block small">Enter Your username</span>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                <span class="help-block small">Enter Your password</span>
                            </div>
                            <div class="checkbox">
                                <input type="checkbox" class="i-checks">
                                     Remember me
                                <p class="help-block small">(Use only if this is a private computer)</p>
                            </div>
                            <button class="btn btn-success btn-block">Login to your Account</button>
                            <!-- <a class="btn btn-default btn-block" href="#">Register</a> -->
                        </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <strong>Ideaspies web portal | Admin Portal</strong><br/><br/>Copyright @ 2016 - <?php echo date("Y");?>. Another IT solution from <a href="https://www.facebook.com/cybertechInt.lk/" target="_blank">Cybertech Int</a>
        </div>
    </div>
</div>


<!-- Vendor scripts -->
<script src="{{asset('assets/back/vendor/jquery/dist/jquery.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/jquery-ui/jquery-ui.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/slimScroll/jquery.slimscroll.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/metisMenu/dist/metisMenu.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/iCheck/icheck.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/sparkline/index.js')}}"></script>

<!-- App scripts -->
<script src="{{asset('assets/back/scripts/homer.js')}}"></script>

</body>

</html>
