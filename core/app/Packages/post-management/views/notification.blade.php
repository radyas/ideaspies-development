@extends('layouts.back.master')
@section('current_title','All Notifications')
@section('css')

<style type="text/css">
    .notify-row{
        margin: 2em;
        /* margin-bottom: 2em; */
        /* margin-top: 2em; */
    }
    .notify-row div {
        background-color: #f3f2f2;
        padding: 10px;
    }
    .notify-row div:hover {
        background-color: #dddddd;
    }
</style>



@stop
@section('current_path')
<div id="hbreadcrumb" class="pull-right">
    <ol class="hbreadcrumb breadcrumb">
        <li><a href="{{url('admin/post/list')}}">Post Management</a></li>

        <li class="active">
            <span>Notifications</span>
        </li>
    </ol>
</div>


@stop
@section('content')

<div class="row">
    <div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-body">
                <div class="container">
                    @foreach ($posts as $item)
                        <a href="{{ url('post/'.$item->id) }}">
                            <div class="row notify-row">
                                <div class="col-md-12">
                                    <p>
                                        idea <b>{{ $item->title }}</b> posted by <b>{{ $item->addedUser->username }}</b>
                                        <br><small>{{ $item->created_at->diffForHumans() }}</small>
                                    </p>
                                </div>
                            </div>
                        </a>
                    @endforeach
                </div>

                <div class="row">
                    <div class="col-md-12 text-center">
                        {!! $posts->render() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@stop
@section('js')


@stop
