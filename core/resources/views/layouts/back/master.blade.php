<!doctype html>
<html class="no-js" lang="">

<head>
  <meta charset="utf-8">
  <title>Admin Panel | Ideaspies web portal</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link rel="shortcut icon" href="{{asset('assets/front/img/favicon.ico')}}">

  <link rel="stylesheet" href="{{asset('assets/back/vendor/fontawesome/css/font-awesome.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/vendor/metisMenu/dist/metisMenu.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/vendor/animate.css/animate.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/vendor/bootstrap/dist/css/bootstrap.css')}}">

 <link rel="stylesheet" href="{{asset('assets/back/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/fonts/pe-icon-7-stroke/css/helper.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/styles/style.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/vendor/toastr/build/toastr.min.css')}}">
 <link rel="stylesheet" href="{{asset('assets/back/vendor/sweetalert/lib/sweet-alert.css')}}">

 <!-- DATATABLE -->
 <link rel="stylesheet" href="{{asset('assets/back/vendor/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" />
<!-- FOOTABLE-->
 <link rel="stylesheet" href="{{asset('assets/back/vendor/fooTable/css/footable.core.min.css')}}" />

  @yield('css')

</head>

<body class="fixed-navbar fixed-sidebar fixed-footer fixed-small-header">
<!-- LOADING -->
<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>Solution from Cybertech Int</h1><p>Special Admin Theme for Ideaspies with very clean and aesthetic style and feel.</p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>

<!-- HEADER -->
<?php $loggedUser=Sentinel::getUser();?>
<div id="header">
    <div class="color-line">
    </div>
    <div id="logo" class="light-version">
        <span>
           {{ $user = Sentinel::check() ? "User" : "Admin" }} view
        </span>
    </div>
    <nav role="navigation">
        <div class="header-link hide-menu"><i class="fa fa-bars"></i></div>
        <div class="small-logo">
            <span class="text-primary">Admin Panel</span>
        </div>
        <div class="mobile-menu">
            <button type="button" class="navbar-toggle mobile-menu-toggle" data-toggle="collapse" data-target="#mobile-collapse">
                <i class="fa fa-chevron-down"></i>
            </button>
            
            <div class="collapse mobile-navbar" id="mobile-collapse">
                <a href="{{ url('/') }}" class="btn btn-primary">
                    Back to home
                </a>
                <ul class="nav navbar-nav">
                    <li>
                        <a class="" href="{{route('user.login')}}">Login</a>
                    </li>
                    <li>
                        <a class="" href="{{url('user/logout')}}">Logout</a>
                    </li>
                    <li>
                        <a class="" href="{{ route('user.admin.profile') }}">Profile</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navbar-left">
            <a href="{{ url('/') }}" style="margin-top: 1em;" class="btn btn-primary">
                Back to home
            </a>
        </div>
        <div class="navbar-right">
            <ul class="nav navbar-nav no-borders">
                
               <!-- <li class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                        <i class="pe-7s-speaker"></i>
                    </a>
                    <ul class="dropdown-menu hdropdown notification animated flipInX">
                        <li>
                            <a>
                                <span class="label label-success">NEW</span> It is a long established.
                            </a>
                        </li>
                        <li>
                            <a>
                                <span class="label label-warning">WAR</span> There are many variations.
                            </a>
                        </li>
                        <li>
                            <a>
                                <span class="label label-danger">ERR</span> Contrary to popular belief.
                            </a>
                        </li>
                        <li class="summary"><a href="#">See all notifications</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                        <i class="pe-7s-keypad"></i>
                    </a>

                    <div class="dropdown-menu hdropdown bigmenu animated flipInX">
                        <table>
                            <tbody>
                            <tr>
                                <td>
                                    <a href="projects.html">
                                        <i class="pe pe-7s-portfolio text-info"></i>
                                        <h5>Projects</h5>
                                    </a>
                                </td>
                                <td>
                                    <a href="mailbox.html">
                                        <i class="pe pe-7s-mail text-warning"></i>
                                        <h5>Email</h5>
                                    </a>
                                </td>
                                <td>
                                    <a href="contacts.html">
                                        <i class="pe pe-7s-users text-success"></i>
                                        <h5>Contacts</h5>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="forum.html">
                                        <i class="pe pe-7s-comment text-info"></i>
                                        <h5>Forum</h5>
                                    </a>
                                </td>
                                <td>
                                    <a href="analytics.html">
                                        <i class="pe pe-7s-graph1 text-danger"></i>
                                        <h5>Analytics</h5>
                                    </a>
                                </td>
                                <td>
                                    <a href="file_manager.html">
                                        <i class="pe pe-7s-box1 text-success"></i>
                                        <h5>Files</h5>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </li> -->
                <li class="dropdown">
                    <a class="dropdown-toggle label-menu-corner" href="#" id="notifyBell" data-toggle="dropdown">
                        <i class="pe-7s-bell"></i>
                        <span class="label label-success post-count">{{ $unseenPostsCountShow }}</span>
                    </a>

                    <ul class="dropdown-menu hdropdown animated flipInX">
                        <div class="title">
                            You have <span class="post-count">{{ $unseenPostsCount }}</span> new posts
                        </div>
                        @foreach ($unseenPostsLimited as $item)
                            <li>
                                <a href="{{ url('post/'.$item->id) }}">
                                  idea <b>{{ $item->title }} </b> posted by <b>{{ $item->addedUser->username }}</b>
                                  <br>
                                  <small>{{ $item->created_at->diffForHumans() }}</small>
                                </a>
                            </li>
                        @endforeach
                        
                        
                        <li class="summary"><a href="{{ url('admin/post/notification') }}">See All Messages</a></li>
                    </ul>
                </li>
                {{-- <li>
                    <a href="#" id="sidebar" class="right-sidebar-toggle">
                        <i class="pe-7s-upload pe-7s-news-paper"></i>
                    </a>
                </li> --}}
                <li class="dropdown">
                    <a href="{{url('user/logout')}}">
                        <i class="pe-7s-upload pe-rotate-90"></i>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</div>

<!-- Navigation -->
<aside id="menu">
    <div id="navigation">
        <div class="profile-picture">
             <a href="#">
                <img src="{{asset($loggedUser->img_path?$loggedUser->img_path:'assets/back/images/profile.jpg')}}" class="img-circle m-b profile" alt="logo">
            </a>

            <div class="stats-label text-color" style="word-wrap: break-word;">
                <span class="font-extra-bold font-uppercase">{{$loggedUser->first_name}}</span>

                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                        <small class="text-muted"> <b class="caret"></b></small>
                    </a>
                    <ul class="dropdown-menu animated flipInX m-t-xs">
                        <li><a href="{{ route('user.admin.profile') }}">Profile</a></li>
                        <li class="divider"></li>
                        <li><a href="{{{url('user/logout')}}}">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
          @include('includes.menu')
    </div>
</aside>
<!-- Main Wrapper -->
<div id="wrapper">

    <div class="small-header transition animated fadeIn">
        <div class="hpanel">
            <div class="panel-body">
                 @yield('current_path')
                <h2 class="font-light m-b-xs">
                    @yield('current_title')
                </h2>
                <small>Use this web portal to Add / Update / Delete Data.</small>
            </div>
        </div>
    </div>
    <div class="content animate-panel">
         @yield('content')
    </div>


    <!-- Right sidebar -->
    <div id="right-sidebar" class="animated fadeInRight">

        <div class="p-m">
            <button id="sidebar-close" class="right-sidebar-toggle sidebar-button btn btn-default m-b-md"><i class="pe pe-7s-close"></i>
            </button>
            <div>
                <span class="font-bold no-margins"> Analytics </span>
                <br>
                <small> Lorem Ipsum is simply dummy text of the printing simply all dummy text.</small>
            </div>
            <div class="row m-t-sm m-b-sm">
                <div class="col-lg-6">
                    <h3 class="no-margins font-extra-bold text-success">300,102</h3>

                    <div class="font-bold">98% <i class="fa fa-level-up text-success"></i></div>
                </div>
                <div class="col-lg-6">
                    <h3 class="no-margins font-extra-bold text-success">280,200</h3>

                    <div class="font-bold">98% <i class="fa fa-level-up text-success"></i></div>
                </div>
            </div>
            <div class="progress m-t-xs full progress-small">
                <div style="width: 25%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="25" role="progressbar"
                     class=" progress-bar progress-bar-success">
                    <span class="sr-only">35% Complete (success)</span>
                </div>
            </div>
        </div>
        <div class="p-m bg-light border-bottom border-top">
            <span class="font-bold no-margins"> Social talks </span>
            <br>
            <small> Lorem Ipsum is simply dummy text of the printing simply all dummy text.</small>
            <div class="m-t-md">
                <div class="social-talk">
                    <div class="media social-profile clearfix">
                        <a class="pull-left">
                            <img src="images/a1.jpg" alt="profile-picture">
                        </a>

                        <div class="media-body">
                            <span class="font-bold">John Novak</span>
                            <small class="text-muted">21.03.2015</small>
                            <div class="social-content small">
                                Injected humour, or randomised words which don't look even slightly believable.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social-talk">
                    <div class="media social-profile clearfix">
                        <a class="pull-left">
                            <img src="images/a3.jpg" alt="profile-picture">
                        </a>

                        <div class="media-body">
                            <span class="font-bold">Mark Smith</span>
                            <small class="text-muted">14.04.2015</small>
                            <div class="social-content">
                                Many desktop publishing packages and web page editors.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social-talk">
                    <div class="media social-profile clearfix">
                        <a class="pull-left">
                            <img src="images/a4.jpg" alt="profile-picture">
                        </a>

                        <div class="media-body">
                            <span class="font-bold">Marica Morgan</span>
                            <small class="text-muted">21.03.2015</small>

                            <div class="social-content">
                                There are many variations of passages of Lorem Ipsum available, but the majority have
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="p-m">
            <span class="font-bold no-margins"> Sales in last week </span>
            <div class="m-t-xs">
                <div class="row">
                    <div class="col-xs-6">
                        <small>Today</small>
                        <h4 class="m-t-xs">$170,20 <i class="fa fa-level-up text-success"></i></h4>
                    </div>
                    <div class="col-xs-6">
                        <small>Last week</small>
                        <h4 class="m-t-xs">$580,90 <i class="fa fa-level-up text-success"></i></h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <small>Today</small>
                        <h4 class="m-t-xs">$620,20 <i class="fa fa-level-up text-success"></i></h4>
                    </div>
                    <div class="col-xs-6">
                        <small>Last week</small>
                        <h4 class="m-t-xs">$140,70 <i class="fa fa-level-up text-success"></i></h4>
                    </div>
                </div>
            </div>
            <small> Lorem Ipsum is simply dummy text of the printing simply all dummy text.
                Many desktop publishing packages and web page editors.
            </small>
        </div>

    </div>

    <!-- Footer-->
    <footer class="footer">
        <span class="pull-right">
            <a href="https://www.facebook.com/cybertechInt.lk/" target="_blank">WWW.CYBERTECH.LK</a>
        </span>
        SOLUTION FROM CYBERTECH INT
    </footer>

</div>





  <!-- Vendor scripts -->
<script src="{{asset('assets/back/vendor/jquery/dist/jquery.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/jquery-ui/jquery-ui.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/slimScroll/jquery.slimscroll.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/jquery-flot/jquery.flot.js')}}"></script>
<script src="{{asset('assets/back/vendor/jquery-flot/jquery.flot.resize.js')}}"></script>
<script src="{{asset('assets/back/vendor/jquery-flot/jquery.flot.pie.js')}}"></script>
<script src="{{asset('assets/back/vendor/flot.curvedlines/curvedLines.js')}}"></script>
<script src="{{asset('assets/back/vendor/jquery.flot.spline/index.js')}}"></script>
<script src="{{asset('assets/back/vendor/metisMenu/dist/metisMenu.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/iCheck/icheck.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/peity/jquery.peity.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/sparkline/index.js')}}"></script>

<!-- App scripts -->
<script src="{{asset('assets/back/scripts/homer.js')}}"></script>
<script src="{{asset('assets/back/scripts/charts.js')}}"></script>
<script src="{{asset('assets/back/vendor/toastr/build/toastr.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/sweetalert/lib/sweet-alert.min.js')}}"></script>
<!-- DATATABLES -->

<script src="{{asset('assets/back/vendor/datatables/media/js/jquery.dataTables.min.js')}}"></script>
<script src="//cdn.datatables.net/plug-ins/1.10.12/api/fnReloadAjax.js"></script>
<script src="{{asset('assets/back/vendor/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>

<script src="{{asset('assets/back/vendor/pdfmake/build/pdfmake.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/pdfmake/build/vfs_fonts.js')}}"></script>
<script src="{{asset('assets/back/vendor/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
<!-- FOOTABLE-->
<script src="{{asset('assets/back/vendor/fooTable/dist/footable.all.min.js')}}"></script>



  @yield('js')

<script type="text/javascript">
    $(document).ready(function(){
          $.ajaxSetup({
              headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              }
          });

    });

    toastr.options = {
      "closeButton": true,
      "debug": false,
      "newestOnTop": false,
      "progressBar": false,
      "positionClass": "toast-bottom-right",
      "preventDuplicates": false,
      "onclick": null,
      "showDuration": "300",
      "hideDuration": "1000",
      "timeOut": "5000",
      "extendedTimeOut": "1000",
      "showEasing": "swing",
      "hideEasing": "linear",
      "showMethod": "fadeIn",
      "hideMethod": "fadeOut"
    }

    @if(session('success'))
        Command: toastr["success"]("{{session('success.message')}} ", "{{session('success.title')}}")
      @elseif(session('error'))
        Command: toastr["error"]("{{session('error.message')}} ", "{{session('error.title')}}")
      @elseif(session('warning'))
        Command: toastr["warning"]("{{session('warning.message')}} ", "{{session('warning.title')}}")
      @elseif(session('info'))
        Command: toastr["info"]("{{session('info.message')}} ", "{{session('info.title')}}")
      @endif

    function confirmAlert(id) {
        swal({
            title: "Are you sure?",
            text:"Your will not be able to recover this !",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Yes, delete it!"
        },
        function (isConfirm) {
           if (isConfirm) {
                confirmAction(id);
            } else {
                swal("Cancelled", "Your imaginary file is safe :)", "error");
            }
        });
    }

    function handleData(data){
        if(data.status=='success'){
            sweetAlert('Delete Success','Record Deleted Successfully!',0);
            table.ajax.reload();
        }else if(data.status=='invalid_id'){
            sweetAlert('Delete Error','Menu Id doesn\'t exists.',3);
        }else{
            sweetAlert('Error Occured','Please try again!',3);
        }
    }

    $('#notifyBell').click(function () { 

        $.ajax({
            method: "POST",
            url: '{{url('admin/post/seen')}}',
        })
        .done(function( msg ) {
            $('.post-count').html('0')
        });

     })

</script>
</body>

</html>
