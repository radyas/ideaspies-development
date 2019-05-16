<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <title>Ideaspies.com | @yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="pinterest" content="nohover"/>

    <link rel="shortcut icon" href="{{asset('assets/front/images/favicon.ico')}}">

    <link rel="stylesheet" href="{{ url('assets/front/css/bootstrap.min.css') }}">
  <link rel="stylesheet" href="{{ url('assets/front/css/common.css') }}">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="{{asset('assets/front/css/starrr.css')}}">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css">



    <!-- CSS LINK -->
        <!-- CODE HERE -->
    <!-- ======== -->

    @yield('css')

    <!-- HEADER SECTION -->
            <!-- CODE HERE -->
           @include('front.header')
    <!-- ============== -->

    @yield('content')

        <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form action="{{url('search')}}" id="search">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Search</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <input type="search" class="form-control" name="q">
                        </div>
                        <br>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 d-flex justify-content-center">
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-search"></i>
                                Search
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
    <!-- FOOTER SECTION -->
            <!-- CODE HERE -->
            @include('front.footer')

    <!-- ============== -->

    <!-- JS LINK -->
        <!-- CODE HERE -->
    <!-- ======= -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript" src="{{ url('assets/front/js/jquery.js') }}"></script>
    <script src="{{asset('assets/back/vendor/jquery/dist/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{ url('assets/front/js/popper.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/front/js/bootstrap.min.js') }}"></script>
    <script type="text/javascript" src="{{asset('assets/front/js/starrr.js')}}"></script>

 <script type="text/javascript">

  function post(url,e)
  {
    var login = {{ Sentinel::check() ? "true" : "false" }};
    if(login == false)
    {
      e.preventDefault();
      var link = url.getAttribute('href');

      swal("You must log in to your account in order to post an idea. \n Do you want to redirect to Login page?", {
        buttons: true,
      })
      .then((confirm) => {
        if(confirm)
          window.location.replace(link)
      });
    }

  };

  function myPosts(url,e)
  {
    var login = {{ Sentinel::check() ? "true" : "false" }};
    if(login == false)
    {
      e.preventDefault();
      var link = url.getAttribute('href');

      swal("You must log in to your account in order to view your posts. \n Do you want to redirect to Login page?", {
        buttons: true,
      })
      .then((confirm) => {
        if(confirm)
          window.location.replace(link)
      });
    }

  };

  $(".btn-search").click(function(){
    // $(".search-input").toggleClass("active").focus;
    // $(this).toggleClass("animate");
    // $(".search-input").val("");
    // alert('H');
    // $('#searchModal').show();
  });

  $(document).ready(function(){
    $(window).scroll(function(){
      if ($(this).scrollTop() > 100) {
        $('#scroll').fadeIn();
      } else {
        $('#scroll').fadeOut();
      }
    });
    $('#scroll').click(function(){
      $("html, body").animate({ scrollTop: 0 }, 600);
      return false;
    });
    $(".btn-share").click(function(){
      var post = $(this).attr('post');
      var id = $(this).attr('id');
  
      if(id=='fb')
        {
          submitPost(1,post);
        }
      else if(id=='tw')
        {
          submitPost(2,post);
        }
      else if (id=='in')
        {
          submitPost(3,post);
        }
      else
        {
          submitPost(4,post);
        }
      
      function submitPost(type,post){
          var  url = 'share/'+post+'/'+type;
          $.get(url);
      }
    });
  });

  $(function () {
      $('[data-toggle="tooltip"]').tooltip()
  })
      
   

  

    </script>

    @yield('js')
