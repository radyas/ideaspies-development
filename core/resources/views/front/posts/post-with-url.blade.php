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

    <h3 class="text-center">Post Idea With URL</h3>
    <span class="pageTitleUnderline mb-4"></span>

    <div class="login-card">
      <p><a class="guidelinesLink" href="{{ url('guidelines') }}">See Guidelines for posting ideas</a></p>

      {{-- <form class="form-horizontal" method="POST" action="{{ route('register') }}"> --}}
      <form class="form-horizontal" method="POST" id="form" action="{{url('addPost')}}">
        {{ csrf_field() }}
        <input type="hidden" name="type" value="url">

        <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
          <label for="title" class=" control-label">Title*</label>

          <div class="">
            <input id="title" type="text" class="form-control" name="title" value="{{ old('title') }}" required autofocus>
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

        <div class="form-group{{ $errors->has('url') ? ' has-error' : '' }}">
          <label for="url" class=" control-label">URL*</label>

          <div class="">
            <input id="url" type="text" class="form-control" name="url" value="{{ old('url') }}" required autofocus>
            <label class="helpText" for="">URL should be https://www.ideaspies.com/8-top-tips </label>
            <div class="row justify-content-end">
              <button id="previewBtn" class="btn btn-primary" data-toggle="modal" data-url="" data-target="#preview">Preview</button>
            </div>
            @if ($errors->has('url'))
              <span class="help-block">
                <strong>{{ $errors->first('url') }}</strong>
              </span>
            @endif
          </div>
        </div>
      </form>

        <div class="form-group">
          <div class="{{ $errors->has('tags') ? 'has-error' : ''}}">
            {!! Form::label('tags', 'Tags ', ['class' => 'control-label']) !!}
            <div class="">
              {!! Form::text('tags',null, ['class' => 'form-control', 'placeholder' => '#hash #tags',  'data-role'=>"tagsinput"]) !!}
              {!! $errors->first('tags','<p class="help is-danger">:message</p>') !!}
            </div>
          </div>
        </div>



        <div class="form-group">
          <div class="">
            <button id="submitBtn" type="submit" class="btn btn-primary btn-block btn-lg btn-signin">
              Submit
            </button>
          </div>
        </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade bs" id="preview" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">URL Preview</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div id="spinner" class="row justify-content-center align-items-center">
            <strong>Loading...</strong>
          </div>
          <iframe src="" frameborder="0" width="100%" height="400px" onload="document.getElementById('spinner').style.display='none';"></iframe>
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

    $('#submitBtn').click(e => {

      let tags = $('#tags').tagEditor('getTags')[0].tags

      console.log(tags);


      tags.forEach((element,index) => {
        console.log('aa');

        $('#form').append('<input name="tags['+index+']" hidden value="'+element+'">');
      });

      $('#form').submit()
    });

    $('#previewBtn').on('click',function(){
        let url = $('#url').val();
       $(this).attr('data-url',url);
    });
    $('#preview').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget) // Button that triggered the modal
      var url = button.data('url'); // Extract info from data-* attributes
      // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
      // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
      var modal = $(this);
      modal.find('.modal-body iframe').attr('src',url)
    });


  </script>
@stop