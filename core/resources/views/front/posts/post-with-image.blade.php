@extends('layouts.front.master') @section('title','Register | www.cybertech.com')
@section('css')

  <style media="screen">
    .login-card{
      max-width: 500px;
      margin-top: 0;
    }
  </style>
  <link rel="stylesheet" href="{{asset('assets/back/styles/jquery.tag-editor.css')}}" />

@endsection

@section('content')

  <div class="container">

    <h3 class="text-center">Post Idea With Image</h3>
    <span class="pageTitleUnderline mb-4"></span>

    <div class="login-card">
      <p><a class="guidelinesLink" href="{{ url('guidelines') }}">See Guidelines for posting ideas</a></p>
      {{-- <form class="form-horizontal" method="POST" action="{{ route('register') }}"> --}}

      <form class="form-horizontal" method="POST" action="{{url('addPost')}}" id="form" enctype="multipart/form-data">
        {{ csrf_field() }}
        <input type="hidden" name="type" value="image">
        <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
          <label for="title" class=" control-label">Title*</label>

          <div class="">
            <input id="title" type="text" class="form-control" name="title" value="{{ old('title') }}" required autofocus>
            <label class="helpText" for="">A benefit, not the product name</label>
            @if ($errors->has('title'))
              <span class="help-block">
                <strong>{{ $errors->first('title') }}</strong>
              </span>
            @endif
          </div>
        </div>

        <div class="form-group{{ $errors->has('category_id') ? ' has-error' : '' }}">
          <label for="category" class=" control-label">Category*</label>

          <div class="">
            <select class="form-control" name="category_id" required autofocus>
              <option value="" disabled selected>Please Select</option>
              @foreach($data as $row)
              <option value="{{$row->id}}">{{$row->name}}</option>
              @endforeach
            </select>

            @if ($errors->has('category_id'))
              <span class="help-block">
                <strong>{{ $errors->first('category_id') }}</strong>
              </span>
            @endif
          </div>
        </div>


        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
          <div class="text-left">
          Description 
          </div>
          <div class="text-right">
            <span id="left">100</span> words left</div>
          <div class="">
            <textarea id="description" name="content" class="form-control" ></textarea>
            <label class="helpText" for="">One paragraph (Max 100 words) plus link for more information </label>

            @if ($errors->has('description'))
              <span class="help-block">
                <strong>{{ $errors->first('description') }}</strong>
              </span>
            @endif
          </div>
        </div>


        <div class="form-group{{ $errors->has('image') ? ' has-error' : '' }}">
          <label for="image" class=" control-label">Image*</label>

          <div class="">
            <div id="upload-error"></div>
          <input type="file" class="form-control-file" name="image" id="image" required autofocus>
          <label class="helpText" for="">Max 1M</label>  
            @if ($errors->has('image'))
              <span class="help-block">
              <strong>{{ $errors->first('image') }}</strong>
              </span>
            @endif
          </div>
        </div>

      
        <div class="form-group">
          <div class="{{ $errors->has('tags') ? 'has-error' : ''}}">
            {!! Form::label('tags', 'Tags ', ['class' => 'control-label']) !!}
            <div class="">
              {!! Form::text('tags',null, ['class' => 'form-control', 'placeholder' => '#hash #tags',  'data-role'=>"tagsinput"]) !!}
              {!! $errors->first('tags','<p class="help is-danger">:message</p>') !!}
            </div>
          </div>
        </div>

      </form>


        <div class="form-group">
          <div class="">
            <button type="submit" class="btn btn-primary btn-block btn-lg btn-signin" id="submitBtn">
              Submit
            </button>
          </div>
        </div>

    </div>
  </div>

@endsection

@section('js')
  <script src="{{asset('assets/back/scripts/jquery.tag-editor.min.js')}}"></script>
  <script type="text/javascript">
    $('#tags').tagEditor()

    $("#description").on('keyup', function() {
        if (this.value.match(/\S+/g) == null)
        {
          var words = 0;
        }
        else
        {
          var words = this.value.match(/\S+/g).length;
        }
        if (words > 100) {
            var trimmed = $(this).val().split(/\s+/, 100).join(" ");
            $(this).val(trimmed + " ");
        }
        else if(words == 0) {
            $('#left').text('100');
        }
        else {
            $('#left').text(100-words);
        }
    });

    $('#image').bind('change', function(){
      var size = this.files[0].size/1024/1024;
      if($('#upload-error').length)
      {
        $('#upload-error').html('');
        $('#submitBtn').prop('disabled',false)
      }
      if(size > 1)
      {
        var styles = {
          color : 'red',
          fontWeight : 'bold'
        }
        $('#upload-error').html('File too Large');
        $('#upload-error').css(styles);
        $('#submitBtn').prop('disabled',true)
      }
    });

    $('#submitBtn').click(e => {

      let tags = $('#tags').tagEditor('getTags')[0].tags

      console.log(tags);


      tags.forEach((element,index) => {
        console.log('aa');

        $('#form').append('<input name="tags['+index+']" hidden value="'+element+'">');
      });

      $('#form').submit()
    })
  </script>
@stop