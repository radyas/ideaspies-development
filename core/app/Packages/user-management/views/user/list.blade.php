@extends('layouts.back.master') @section('current_title','All User')
@section('css')

<style type="text/css">
    #floating-button{
      width: 55px;
      height: 55px;
      border-radius: 50%;
      background: #db4437;
      position: fixed;
      bottom: 50px;
      right: 30px;
      cursor: pointer;
      box-shadow: 0px 2px 5px #666;
      z-index:2
    }

    .plus{
      color: white;
      position: absolute;
      top: 0;
      display: block;
      bottom: 0;
      left: 0;
      right: 0;
      text-align: center;
      padding: 0;
      margin: 0;
      line-height: 55px;
      font-size: 38px;
      font-family: 'Roboto';
      font-weight: 300;
      animation: plus-out 0.3s;
      transition: all 0.3s;
    }
</style>

@stop
@section('current_path')
<div id="hbreadcrumb" class="pull-right">
    <ol class="hbreadcrumb breadcrumb">
        <li><a href="{{url('user/list')}}">User Management</a></li>
       
        <li class="active">
            <span>User List</span>
        </li>
    </ol>
</div>
@stop
@section('content')
<div id="floating-button" data-toggle="tooltip" data-placement="left" data-original-title="Create" onclick="location.href = '{{url('user/add')}}';">
    <p class="plus">+</p>   
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-body">                
             	<table id="example1" class="table table-striped table-bordered table-hover" width="100%">
                    <thead>
                    <tr>
                        <th >#</th>
                        <th>Name</th>
                        <th>Branch</th>
                        <th>Username</th>
                        <th>Role</th>                        
                        <th >Edit</th>
                        <th >Delete</th>
                       
                    </tr>
                    </thead>
                </table>
        	</div>
    	</div>
	</div>
</div>
@stop
@section('js')





<script type="text/javascript">
  var table;
  $(document).ready(function(){   

        table=$('#example1').dataTable( {
            "ajax": '{{url('user/json/list')}}',
            dom: "<'row'<'col-sm-4'l><'col-sm-4 text-center'B><'col-sm-4'f>>tp",
            "lengthMenu": [ [10, 25, 50, -1], [10, 25, 50, "All"] ],
            buttons: [
                {extend: 'copy',className: 'btn-sm'},
                {extend: 'csv',title: 'User List', className: 'btn-sm'},
                {extend: 'pdf', title: 'User List', className: 'btn-sm'},
                {extend: 'print',className: 'btn-sm'}
            ],
             "autoWidth": false
        });

        table.on( 'draw.dt', function () {
            $('.user-delete').click(function(e){             
                  e.preventDefault();
                  id = $(this).data('id');                  
                  confirmAlert(id);                 
                                  
            });
         
        });

        
  });

  function confirmAction(id){
     $.ajax({
      method: "POST",
      url: '{{url('user/delete')}}',
      data:{ 'id' : id  }
    })
      .done(function( msg ) {
        table.fnReloadAjax();
      });    
     
  }
  
  
</script>
@stop