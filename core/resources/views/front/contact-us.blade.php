@extends('layouts.front.master') @section('title','Contact Us | www.cybertech.com')

@section('css')

@endsection

@section('content')

  <div class="container pb-4">
<h3 class="text-center">Contact Us</h3>
<span class="pageTitleUnderline mb-4"></span>

    <div class="row pt-3">

      <div class="col-md-6">
        <h5><i class="fa fa-envelope"></i> Message Us<small><small class="required-input">&nbsp;(*required)</small></small>
        </h5>

        <form action="contactus" method="post">
          {{csrf_field()}}
          <div class="form-group">
            <label for="from-name">Name</label><span class="required-input">*</span>
            <div class="input-group">
              {{--  <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-user-o"></i></span>
              </div>  --}}
              <input class="form-control" type="text" name="name" required="" placeholder="Full Name" id="from-name">
            </div>
          </div>
          <div class="form-group">
            <label for="from-email">Email</label><span class="required-input">*</span>
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-envelope-o"></i></span>
              </div>
              <input class="form-control" type="text" name="email" required="" placeholder="Email Address" id="from-email">
            </div>
          </div>

          <div class="form-group">
            <label for="from-subject">Subject</label><span class="required-input">*</span>
            <div class="input-group">
              
              <input class="form-control" type="text" name="subject" required="" placeholder="Subject" id="from-subject">
            </div>
          </div>



            <div class="form-group">
              <label for="from-comments">Comments</label>
              <textarea class="form-control" rows="5" name="comment" placeholder="Enter Comments" id="from-comments"></textarea>
            </div>
            
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block btn-sm btn-signin" >Submit</button>
            </div>

          </form>
        </div>


        <div class="col-md-4 offset-md-2">
          <h5><i class="fa fa-user"></i> Our Email </h5>
              <div><a href="mailto:info@ideaspies.com">info@ideaspies.com</a></div>
              <!-- <div><span>www.awebsite.com</span></div> -->
              <hr class="d-sm-none d-md-block d-lg-none">

        </div>
      </div>

    </div>

  @endsection
