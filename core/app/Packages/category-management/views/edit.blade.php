@extends('layouts.back.master') 
@section('current_title','Edit Category') 
@section('css')
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-3.5.2/select2.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-bootstrap/select2-bootstrap.css')}}" /> 
@stop 
@section('current_path')
<div id="hbreadcrumb" class="pull-right">
    <ol class="hbreadcrumb breadcrumb">
        <li><a href="{{url('admin/category/list')}}">Category Management</a></li>

        <li class="active">
            <span>Edit Category</span>
        </li>
    </ol>
</div>


@stop 
@section('content')

<div class="row">
    <div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-body">
                <form method="POST" class="form-horizontal" id="form">
                    {!!Form::token()!!}

                    <div class="form-group"><label class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10"><input type="text" class="form-control" name="name" value="{{ old('name') ? old('name') : $category->name}}" required></div>
                    </div>


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
    <script src="{{asset('assets/back/vendor/select2-3.5.2/select2.min.js')}}"></script>
    <script src="{{asset('assets/back/vendor/jquery-validation/jquery.validate.min.js')}}"></script>
    <script type="text/javascript">
        $(document).ready(function(){
		$(".js-source-states").select2();

		$("#form").validate({
            rules: {
                label: {
                    required: true
                  
                },
                menu_url:{
                	required: true
                },
                parent_menu:{
                	required: true
                },               
                tel:{
                	digits:true
                }
            },
            submitHandler: function(form) {
                form.submit();
            }
        });
	});
    </script>

    
@stop