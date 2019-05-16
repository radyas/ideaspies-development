@extends('layouts.back.master') @section('current_title','Update Permission')
@section('css')

@stop
@section('current_path')
<div id="hbreadcrumb" class="pull-right">
    <ol class="hbreadcrumb breadcrumb">
        <li><a href="{{url('permission/list')}}">Permission Management</a></li>
       
        <li class="active">
            <span>Update Permission</span>
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
                    	<div class="col-sm-10"><input type="text" class="form-control" name="label" value="{{$curPermission->name}}"></div>
                	</div>
                	<div class="form-group"><label class="col-sm-2 control-label">DESCRIPTION</label>
                    	<div class="col-sm-10"><textarea class="form-control" name="description">{{$curPermission->description}}</textarea> </div>
                	</div>
                	
                	
                	
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
<script type="text/javascript">
	$(document).ready(function(){
		$(".js-source-states").select2();

		$("#form").validate({
            rules: {
                name: {
                    required: true
                  
                },
                code:{
                	required: true
                },
                city:{
                	required: true
                },
                email:{
                    email:true
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