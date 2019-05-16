@extends('layouts.back.master') @section('current_title','Setting')
@section('css')
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-3.5.2/select2.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/vendor/bootstrap-datepicker-master/dist/css/bootstrap-datepicker3.min.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-bootstrap/select2-bootstrap.css')}}" />
<link rel="stylesheet" type="text/css" href="{{asset('assets/back/file/bootstrap-fileinput-master/css/fileinput.css')}}" media="all" />
<link rel="stylesheet" type="text/css" href="{{asset('assets/back/vendor/bootstrap-star-rating/css/star-rating.css')}}" media="all" />
<style>
.rating-container .rating-stars:before {
    text-shadow: none;
}
#image-cropper{
  width: 250px;
  height: 250px;
}
.cropit-preview {
  /* You can specify preview size in CSS */
  width: 250px;
  height: 250px;
  background-color: #ddd;
}
input.cropit-image-input {
  visibility: hidden;
}
</style>

@stop
@section('current_path')
<div id="hbreadcrumb" class="pull-right">
<ol class="hbreadcrumb breadcrumb">
    <li class="active">
        <span>Setting</span>
    </li>
</ol>
</div>
@stop
@section('content')

<div class="row">
<div class="col-lg-12">
    <div class="hpanel">
        <div class="panel-body">
          @if ($errors->any())
            <div class="alert alert-danger">
              <ul class="">
                  @foreach ($errors->all() as $error)
                      <li>{{ $error }}</li>
                  @endforeach
              </ul>
            </div>
          @endif
          <form  class="form-horizontal" id="form" method="post" enctype="multipart/form-data">
              {!!Form::token()!!}

              <H4>GENERAL </H4>
              <div class="form-group"><label class="col-sm-2 control-label">CONTACT NUMBER</label>
                <div class="col-sm-10"><input type="text" class="form-control" name="contact_num" value="{{old('contact_num') ? old('contact_num') : $setting->contact_num}}"></div>
              </div>
              <div class="form-group"><label class="col-sm-2 control-label">ADDRESS</label>
                <div class="col-sm-10"><input type="text" class="form-control" name="address" value="{{old('address') ? old('address') : $setting->address}}"></div>
              </div>

              <div class="form-group"><label class="col-sm-2 control-label">ADMIN EMAIL</label>
                <div class="col-sm-10"><input type="text" class="form-control" name="admin_email" value="{{old('admin_email') ? old('admin_email') : $setting->admin_email}}"></div>
            </div>

            <br>
            <br>
            <br>
              <h4>SOCIAL MEDIA</h4>

              <div class="form-group"><label class="col-sm-2 control-label">FACEBOOK</label>
                  <div class="col-sm-10"><input type="url" class="form-control" name="fb" value="{{old('fb') ? old('fb') : $setting->fb}}"></div>
              </div>
              <div class="form-group"><label class="col-sm-2 control-label">TWITTER</label>
                  <div class="col-sm-10"><input type="url" class="form-control" name="twitter" value="{{old('twitter') ? old('twitter') : $setting->twitter}}"></div>
              </div>
              {{-- <div class="form-group"><label class="col-sm-2 control-label">GPLUS</label>
                  <div class="col-sm-10"><input type="url" class="form-control" name="gplus" value="{{old('gplus') ? old('gplus') : $setting->gplus}}"></div>
              </div>
              <div class="form-group"><label class="col-sm-2 control-label">LINKEDIN</label>
                  <div class="col-sm-10"><input type="url" class="form-control" name="linkedin" value="{{old('linkedin') ? old('linkedin') : $setting->linkedin}}"></div>
              </div> --}}

              

              <div class="hr-line-dashed"></div>
              <div class="form-group">
                  <div class="col-sm-8 col-sm-offset-2">
                      <button class="btn btn-default" type="button" onclick="location.reload();">Cancel</button>
                      <button class="btn btn-primary" type="submit">Done</button>
                  </div>
              </div>

          </form>
        </div>
    </div>
</div>
@stop
@section('js')

@stop
