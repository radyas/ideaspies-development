@extends('layouts.back.master') @section('current_title','Update Artist')
@section('css')
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-3.5.2/select2.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/vendor/bootstrap-datepicker-master/dist/css/bootstrap-datepicker3.min.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-bootstrap/select2-bootstrap.css')}}" />
<link rel="stylesheet" type="text/css" href="{{asset('assets/back/file/bootstrap-fileinput-master/css/fileinput.css')}}" media="all" />
<link rel="stylesheet" type="text/css" href="{{asset('assets/back/vendor/bootstrap-star-rating/css/star-rating.css')}}" media="all" />
<style media="screen">
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
        <li><a href="{{url('admin/artist/list')}}">Artist Management</a></li>

        <li class="active">
            <span>Update Artist</span>
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
                <form method="POST" class="form-horizontal" id="form" method="post" enctype="multipart/form-data">
                	{!!Form::token()!!}

                    <div class="form-group"><label class="col-sm-2 control-label">TITLE</label>
                        <div class="col-sm-10"><input type="text" class="form-control" name="name" value="{{$artist->name}}"></div>
                    </div>
                    <div class="form-group"><label class="col-sm-2 control-label">DETAILS</label>
                        <div class="col-sm-10"><textarea name="bio" class="form-control" rows="10">{{ $artist->bio }}</textarea></div>
                    </div>
                    <div class="form-group"><label class="col-sm-2 control-label">FACEBOOK</label>
                        <div class="col-sm-10"><input type="url" value="{{$artist->fb}}" class="form-control" name="fb"></div>
                    </div>
                    <div class="form-group"><label class="col-sm-2 control-label">TWITTER</label>
                        <div class="col-sm-10"><input type="url" value="{{$artist->twitter}}" class="form-control" name="twitter"></div>
                    </div>
                    <div class="form-group"><label class="col-sm-2 control-label">YOUTUBE</label>
                        <div class="col-sm-10"><input type="url" value="{{$artist->utube}}" class="form-control" name="utube"></div>
                    </div>
                    <div class="form-group"><label class="col-sm-2 control-label">META DESCRIPTION</label>
                        <div class="col-sm-10"><input type="text" class="form-control" value="{{$artist->meta_description}}" name="meta_description"></div>
                    </div>
                    <div class="form-group"><label class="col-sm-2 control-label">META KEYWORDS</label>
                        <div class="col-sm-10"><input type="text" class="form-control" value="{{$artist->meta_keywords}}" name="meta_keywords"></div>
                    </div>
                    <div class="form-group"><label class="col-sm-2 control-label">IMAGE</label>
                      <div class="col-md-10">
                        <div id="image-cropper">
                        <div class="cropit-preview"></div>

                        <input type="range" class="cropit-image-zoom-input" />

                        <!-- The actual file input will be hidden -->
                        <input type="file" class="cropit-image-input"/>
                        <input type="hidden" name="image">
                        <!-- And clicking on this button will open up select file dialog -->
                        <div class="select-image-btn btn btn-success">Browse</div>
                        <div class="btn btn-warning">Set</div>
                        </div>
                      </div>
                    </div>

      <br>
      <br>
      <br>

                	<div class="hr-line-dashed"></div>
	                <div class="form-group">
	                    <div class="col-sm-8 col-sm-offset-2">
	                        <button class="btn btn-default" type="button" onclick="location.reload();">Cancel</button>
	                        <button class="btn btn-primary" type="submit">Save Changes</button>
	                    </div>
	                </div>

                </form>
        </div>
    </div>
</div>
@stop
@section('js')
  <script src="{{asset('assets/back/vendor/cropit/jquery.cropit.js')}}" charset="utf-8"></script>
  <script type="text/javascript">
    $('#image-cropper').cropit();
    $('.cropit-preview-image').attr('src','{{ asset($artist->img) }}')
    $('.select-image-btn').click(function() {
      $('.cropit-image-input').click();
    });

    $('.btn-warning').click(function(event) {
       var imageData = $('#image-cropper').cropit('export');
       $('input[name="image"]').val(imageData);
    });
  </script>

@stop
