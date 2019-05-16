@extends('layouts.back.master') @section('current_title','New Role')
@section('css')
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-3.5.2/select2.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-bootstrap/select2-bootstrap.css')}}" />
@stop
@section('current_path')
<div id="hbreadcrumb" class="pull-right">
    <ol class="hbreadcrumb breadcrumb">
        <li><a href="{{url('user/list')}}">User Management</a></li>
        <li><a href="{{url('user/role/list')}}">Role Management</a></li>
       
        <li class="active">
            <span>New Role</span>
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

                	<div class="form-group"><label class="col-sm-2 control-label">NAME</label>
                    	<div class="col-sm-10"><input type="text" class="form-control" name="name"></div>
                	</div>
                	<div class="form-group"><label class="col-sm-2 control-label">PERMISSION</label>
                    	<div class="col-sm-10">
                    		 <select class="js-source-states" style="width: 100%" name="permissions[]" multiple="multiple">
                    		 	<?php foreach ($permissionArr as $key => $value): ?>
                    		 		<option value="{{$value}}">{{$value}}</option>
                    		 	<?php endforeach ?>
		                        
		                    </select>
                    	</div>
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
                name: {
                    required: true
                  
                }
               
            },
            submitHandler: function(form) {
                form.submit();
            }
        });
	});
	
	
</script>
@stop