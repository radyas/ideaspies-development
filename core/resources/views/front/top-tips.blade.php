@extends('layouts.front.master') @section('title','Top Tips | www.cybertech.com')

@section('css')
  <style media="screen">
  #shortIntroVideo{
    width: 500px;
  }
  .background-1{
    background: #eeeeee; /* Old browsers */
    background: -moz-linear-gradient(top, #eeeeee 0%, #efefef 100%); /* FF3.6-15 */
    background: -webkit-linear-gradient(top, #eeeeee 0%,#efefef 100%); /* Chrome10-25,Safari5.1-6 */
    background: linear-gradient(to bottom, #eeeeee 0%,#efefef 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#eeeeee', endColorstr='#efefef',GradientType=0 ); /* IE6-9 */
  }
  @media (max-width: 575px) {
    #shortIntroVideo{
      width: 100% !important;
    }
  }

  .team-boxed {
    color:#313437;
  }

  .team-boxed p {
    color:#7d8285;
  }

  .team-boxed h2 {
    font-weight:bold;
    margin-bottom:40px;
    padding-top:40px;
    color:inherit;
  }

  @media (max-width:767px) {
    .team-boxed h2 {
      margin-bottom:25px;
      padding-top:25px;
      font-size:24px;
    }
  }

  .team-boxed .intro {
    font-size:16px;
    max-width:500px;
    margin:0 auto;
  }

  .team-boxed .intro p {
    margin-bottom:0;
  }


  .team-boxed .item {
    text-align:center;
  }

  .team-boxed .item .box {
    text-align:center;
    padding:15px;
    background-color:rgba(11, 20, 51, 0.1);
    margin-bottom:15px;
  }

  .team-boxed .item .name {
    font-weight:bold;
    margin-top:28px;
    margin-bottom:8px;
    color:inherit;
  }

  .team-boxed .item .title {
    text-transform:uppercase;
    font-weight:bold;
    color:#d0d0d0;
    letter-spacing:2px;
    font-size:13px;
  }

  .team-boxed .item .description {
    font-size:15px;
    margin-top:15px;
    margin-bottom:20px;
  }

  .team-boxed .item img {
    max-width:160px;
  }

  .team-boxed .social {
    font-size:18px;
    color:#a2a8ae;
  }

  .team-boxed .social a {
    color:inherit;
    margin:0 10px;
    display:inline-block;
    opacity:0.7;
  }

  .team-boxed .social a:hover {
    opacity:1;
  }

  .support-horizontal {
    color:#313437;
    /* background-color:#fff; */
  }

  .support-horizontal p {
    color:#7d8285;
  }

  .support-horizontal h2 {
    font-weight:bold;
    margin-bottom:40px;
    padding-top:40px;
    color:inherit;
  }

  @media (max-width:767px) {
    .support-horizontal h2 {
      margin-bottom:25px;
      padding-top:25px;
      font-size:24px;
    }
  }

  .support-horizontal .intro {
    font-size:16px;
    max-width:500px;
    margin:0 auto 10px;
  }



  .support-horizontal .item {
    padding-bottom:40px;
    min-height:160px;
  }

  @media (max-width:767px) {
    .support-horizontal .item {
      padding-bottom:30px;
      min-height:160px;
    }
  }

  .support-horizontal .item .name {
    font-size:18px;
    font-weight:bold;
    margin-top:10px;
    margin-bottom:15px;
    color:inherit;
  }

  @media (max-width:991px) {
    .support-horizontal .item .name {
      margin-top:22px;
    }
  }

  .support-horizontal .item .description {
    font-size:15px;
    margin-bottom:0;
  }


  </style>
@endsection

@section('content')

  <div class="container pb-4">
    <div class="">
      <h3 class="text-center">Top tips to see clever ideas</h3>
      <span class="pageTitleUnderline mb-4"></span>

        <p>
          We all tend to live not noticing our environment unless it’s absolutely necessary, particularly now when we’re focused on our mobile phones. This means missing some of life’s riches.  We encourage you to be more observant-to look for the clever, the surprising, the interesting, and the humorous.
        </p>

        <p>
          Often this is easier to do when you travel to new environments, especially internationally.  There are many benefits of being more observant or mindful, a prime one being that you can see more opportunities in life. These tips should help you become more observant and see clever ideas, just as they have helped us:
        </p>

        <ol>
          <li>Slow down</li>
          <li>Walk more looking ahead and up</li>
          <li>Watch people</li>
          <li>Listen more</li>
          <li>Plan ahead when you are going to new places</li>
          <li>Keep an open mind and focus on the local</li>
          <li>Smile</li>
          <li>Keep a record of clever ideas you see on IdeaSpies! <a href="{{url('guidelines')}}">Guidelines</a> to post.</li>
        </ol>

        <div class="text-center my-2">
          <img src="{{ asset('assets/front/images/top-tips.jpg') }}" alt="" style="max-width: 100%;">
          <p class="mt-3">The first idea shared to ideaSpies-a TV in a hotel bathroom mirror- seen in Toronto, Canada</p>
        </div>

    </div>
  </div>

@endsection
