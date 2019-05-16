@extends('layouts.back.master') 
@section('current_title','Edit Post') 
@section('css')
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-3.5.2/select2.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/styles/jquery.tag-editor.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-bootstrap/select2-bootstrap.css')}}" /> 
@stop 
@section('current_path')
<div id="hbreadcrumb" class="pull-right">
    <ol class="hbreadcrumb breadcrumb">
        <li><a href="{{url('admin/post/list')}}">Post Management</a></li>

        <li class="active">
            <span>Edit Post</span>
        </li>
    </ol>
</div>


@stop 
@section('content')

<div class="row">
    <div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-body">
                {!! Form::model($post, [ 'method' => 'POST', 'url' => ['/admin/post/edit', $post->id], 'class' => 'form-horizontal', 'files' => true ]) !!}

                     <div class="form-group">
                        <div class="{{ $errors->has('type') ? 'has-error' : ''}}">
                            {!! Form::label('type', 'Type *', ['class' => 'col-md-2 control-label']) !!}
                            <div class="col-md-10">
                                {!! Form::select('type',  ['0' => 'content only','1' => 'image','2' => 'video','3' => 'url'], null, ['class' => 'form-control', 'required' => 'required', 'id' => 'postType']) !!}
                                {!! $errors->first('type', '<p class="help is-danger">:message</p>') !!}
                            </div>
                        </div>
                    </div>
                    <div class="form-group post-types" data-type="3" {{ $post->type === 'url' ? '' : 'style=display:none' }}>
                        <div class="{{ $errors->has('url') ? 'has-error' : ''}}">
                            {!! Form::label('url', 'URL *', ['class' => 'col-md-2 control-label']) !!}
                            <div class="col-md-10">
                                {!! Form::url('url',null, ['class' => 'form-control col-sm-10']) !!}
                                {!! $errors->first('url','<p class="help is-danger">:message</p>') !!}
                            </div>
                        </div>
                    </div>

                    <div class="form-group post-types" data-type="2" {{ $post->type === 'video' ? '' : 'style=display:none' }}>
                        <div class="{{ $errors->has('video') ? 'has-error' : ''}}">
                            {!! Form::label('video', 'New Video *', ['class' => 'col-md-2 control-label']) !!}
                            <div class="col-md-10">
                                {!! Form::file('video', ['class' => 'form-control col-sm-10']) !!}
                                <small>Max 20MB</small>
                                {!! $errors->first('video','<p class="help is-danger">:message</p>') !!}
                                <div class="col-md-6">
                                    @if ($post->type === 'video')
                                        <video controls src="{{ asset($post->video_path) }}"></video>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group post-types" data-type="1" {{ $post->type === 'image' ? '' : 'style=display:none' }}>
                        <div class="{{ $errors->has('image') ? 'has-error' : ''}}">
                            {!! Form::label('image', 'New Image *', ['class' => 'col-md-2 control-label']) !!}
                            <div class="col-md-10">
                                {!! Form::file('image', ['class' => 'form-control col-sm-10']) !!}
                                <small>Max 500KB</small>
                                {!! $errors->first('image','<p class="help is-danger">:message</p>') !!}

                                <div class="col-md-6">
                                    @if ($post->type === 'image')
                                        <img src="{{ asset($post->img_path) }}"  class="img-responsive" alt="">
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    

                    <div class="form-group">
                        <div class="{{ $errors->has('title') ? 'has-error' : ''}}">
                            {!! Form::label('title', 'Titile *', ['class' => 'col-md-2 control-label']) !!}
                            <div class="col-md-10">
                                {!! Form::text('title',null, ['class' => 'form-control col-sm-10', 'required' => 'required']) !!} 
                                <small>Max 100 Characters</small>
                                {!! $errors->first('title','
                                <p class="help is-danger">:message</p>') !!}
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="{{ $errors->has('category_id') ? 'has-error' : ''}}">
                            {!! Form::label('category_id', 'Category *', ['class' => 'col-md-2 control-label']) !!}
                            <div class="col-md-10">
                                {!! Form::select('category_id', $categories, null, ['class' => 'form-control', 'required' => 'required']) !!} {!! $errors->first('category_id',
                                '
                                <p class="help is-danger">:message</p>') !!}
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="{{ $errors->has('content') ? 'has-error' : ''}}">
                            {!! Form::label('content', 'Description *', ['class' => 'col-md-2 control-label']) !!}
                            <div class="col-md-10">
                                {!! Form::textarea('content',null, ['class' => 'form-control col-sm-10', 'required' => 'required']) !!}
                                {!! $errors->first('content','<p class="help is-danger">:message</p>') !!}
                            </div>
                        </div>
                    </div>

                     

                {!! Form::close() !!}

                    <span class="form-horizontal">

                    

                    <div class="form-group">
                        <div class="{{ $errors->has('tags') ? 'has-error' : ''}}">
                            {!! Form::label('tags', 'Tags *', ['class' => 'col-md-2 control-label']) !!}
                            <div class="col-md-10">
                                {!! Form::text('tags',null, ['class' => 'form-control col-sm-10', 'placeholder' => '#hash #tags', 'required' => 'required', 'data-role'=>"tagsinput"]) !!}
                                {!! $errors->first('tags','<p class="help is-danger">:message</p>') !!}
                            </div>
                        </div>
                    </div>

                    <div class="hr-line-dashed"></div>
                    <div class="form-group">
                        <div class="col-sm-8 col-sm-offset-2">
                            <button class="btn btn-default" type="button" onclick="location.reload();">Cancel</button>
                            <button class="btn btn-primary" id="submitBtn">Done</button>
                        </div>
                    </div>

                    </span>
            </div>
        </div>
    </div>

    
@stop 
@section('js')
    <script src="{{asset('assets/back/vendor/select2-3.5.2/select2.min.js')}}"></script>
    <script src="{{asset('assets/back/scripts/jquery.caret.min.js')}}"></script>
    <script src="{{asset('assets/back/scripts/jquery.tag-editor.min.js')}}"></script>
    <script src="{{asset('assets/back/vendor/jquery-validation/jquery.validate.min.js')}}"></script>
    <script type="text/javascript">

    $(document).ready(function () {

        console.log();

        showSelected($('#postType').val())
        

        
       $('#postType').on('change', event => {
           const selectedValue = event.target.value

                       
           showSelected(selectedValue)

       })
    
       

       $("#category_id").select2()

       $('#tags').tagEditor({ initialTags: {!! json_encode($tags) !!} })

              $('#submitBtn').click(e => {

           let tags = $('#tags').tagEditor('getTags')[0].tags

           console.log(tags);
           

           tags.forEach((element,index) => {
               console.log('aa');
               
               $('form').append('<input name="tags['+index+']" hidden value="'+element+'">');
           });

           $('form').submit()
       })
})

function showSelected(selectedValue) {
    const type = $('.post-types')

    type.each(el => {

        let element = $(type[el])

        console.log(element.data('type'));
//    console.log();
        
        
        if (element.data('type') == selectedValue) {
            element.show()
        }else{
            element.hide()
        }
        

    })
}
    </script>    

@stop