@extends('layouts.back.master') @section('current_title','UPDATE USER')

@section('css')
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-3.5.2/select2.css')}}" />
<link rel="stylesheet" href="{{asset('assets/back/vendor/select2-bootstrap/select2-bootstrap.css')}}" />

@stop
@section('current_path')
<div id="hbreadcrumb" class="pull-right">
    <ol class="hbreadcrumb breadcrumb">
        <li><a href="{{url('user/list')}}">User Management</a></li>
        <li>
            <span>Users</span>
        </li>
        <li class="active">
            <span>Update User</span>
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
                	<div class="form-group"><label class="col-sm-2 control-label">FIRST NAME</label>
                    	<div class="col-sm-10"><input type="text" name="first_name" class="form-control" value="{{$curUser->first_name}}"></div>
                	</div>
                	<div class="form-group"><label class="col-sm-2 control-label">LAST NAME</label>
                    	<div class="col-sm-10"><input type="text" name="last_name" class="form-control" value="{{$curUser->last_name}}"></div>
                	</div>
                	<div class="form-group"><label class="col-sm-2 control-label">SUPERVISOR</label>
                    	<div class="col-sm-10">
                    		 <select class="js-source-states" style="width: 100%" name="supervisor">
                    		 	<?php foreach ($users as $key => $value): ?>
                    		 		<option value="{{$value->id}}" <?php if($value->id == $curUser->supervisor_id ){?> selected="true" <?php } ?> >{{$value->first_name.' '.$value->last_name}}</option>
                    		 		
                    		 	<?php endforeach ?>
		                        
		                    </select>
                    	</div>
                	</div>
                   
                    <div class="form-group"><label class="col-sm-2 control-label">ROLES</label>
                        <div class="col-sm-10">
                             <select class="js-source-states" style="width: 100%" name="roles[]" multiple="multiple">
                                <?php foreach ($roles as $key => $value): 
                                	echo $value;                                    
                                endforeach ?>
                                
                            </select>
                        </div>
                    </div>
                    <div class="form-group"><label class="col-sm-2 control-label">USERNAME</label>
                        <div class="col-sm-10"><input type="text" value="{{$curUser->username}}" name="username" class="form-control"></div>
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
<script src="{{asset('assets/back/vendor/select2-3.5.2/select2.min.js')}}"></script>
<script src="{{asset('assets/back/vendor/jquery-validation/jquery.validate.min.js')}}"></script>

<script type="text/javascript">
	$(document).ready(function(){
		 $(".js-source-states").select2();

         $("#form").validate({
            rules: {
                first_name: {
                    required: true                  
                },
                last_name:{
                    required: true
                },
                roles:{
                    required: true,

                },
                branch:{
                    required: true
                },
                username:{
                    required: true
                },
                password:{
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