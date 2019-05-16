@extends('layouts.front.master')
@section('title','Guidelines to Post')

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
      <h3 class="text-center">Guidelines To Post</h3>
      <span class="pageTitleUnderline mb-4"></span>

        <div class="row">
          <div class="col-lg-6">
            <iframe width="100%" height="250" src="https://www.youtube.com/embed/Cw16fJKbMmU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          </div>
          <div class="col">
            <p>
              IdeaSpies is encouraging you to be observant and post clever ideas you see that improve our lives. Our purpose is to inspire action by sharing clever ideas.
            </p>
            <p>
              These guidelines are designed to help you post a clever idea on IdeaSpies that is explained simply so it will be shared.
            </p>
            <p>
              IdeaSpies showcases ideas happening now ie they are ideas that exist, they’re not just in someone’s head.
            </p>
            <p>
              When you see a clever idea:
            </p>
            <ol>
              <li>Register to become an Idea Spy</li>
              <li>Tap the “Post Idea” button on the home page</li>
            </ol>
          </div>
        </div>
        <hr>
        <div class="row">
          <h6><strong>Posting with an image</strong></h6>
          <div class="col-sm-12">
            <ul class="pl-3">
              <li>
                <strong>Idea Title</strong> - Choose a positive title that conveys <strong>a benefit</strong> or something different, not just the product name
              </li>
              <li>
                <strong>Category</strong> - Choose the idea category from the drop down menu
              </li>
              <li>
                <strong>Description</strong> - Describe the <strong>essence of the idea</strong> so people can understand it quickly. If it’s a startup state the “elevator pitch”. Write max 100 words in one paragraph (not multiple paragraphs). You can add a link for more information. You’re also welcome to include your email address if you want people to contact you.
              </li>
              <li>
                <strong>Add an image</strong> - Choose an image taken by your phone or from your photo library that shows the product or service well in <strong>horizontal (landscape)</strong> form. The image should be between 300 pixels and 1000 pixels height and width and below 10Mb -not a logo. If you need an image try <a href="https://pixabay.com/">Pixabay</a> for free ones you can use.
              </li>
            </ul>
          </div>
        </div>
        <hr>
        <div class="row">
          <h6><strong>Posting with a URL</strong></h6>
          <div class="col-sm-12">
            <ul class="pl-3">
              <li>Add an idea title and category as above.</li>
              <li>Then simply add the URL (website link) for the idea you’d like to share.</li>
              <li>Note that when you post with a URL it shares to social media with a stock photo rather than the photo with the link. So although it’s easier to post with a URL on IdeaSpies than with an image, the idea doesn’t share as well.</li>
              <li>Tap “Submit”</li>
            </ul>
          </div>
        </div>
        <hr>
        <div class="row">
          <h6><strong>Editing and deleting your post</strong></h6>
          <div class="col-sm-12">
            <p>
              By going to “My Posts” in the menu bar you can edit and delete your posts. After your idea has been shared changes can’t be made to the headline or photo.
            </p>
          </div>
        </div>
          <hr>
        <div class="row">
          <h6><strong>Sharing your idea</strong></h6>
          <div class="col-sm-12">
            <p>
              You should share the idea you’ve posted on IdeaSpies to your social media with the share icons under the idea you’ve posted to maximise awareness. Your idea may also be shared to IdeaSpies social media which are becoming more and more popular. Google “”clever ideas” to check the popularity of IdeaSpies.
            </p>
          </div>
        </div>
          <hr>
        <div class="row">
          <h6><strong>Questions/Comments</strong></h6>
          <div class="col-sm-12">
            <p>
              If these guidelines aren’t followed your post may be deleted by the administrator.
If you have any questions or comments on these guidelines please contact <a href="https://www.ideaspies.com/lynn.wood@ideaSpies.com">lynn.wood@ideaSpies.com</a>
            </p>
          </div>
        </div>
          <hr>
        <div class="row">
          <h6><strong>Congratulations!</strong></h6>
          <div class="col-sm-12">
            <p>
              After posting an idea you’re a genuine Idea Spy! “Idea Spies are observant people who care about the world and make it better by sharing clever ideas happening around them.”
            </p>
            <p>
              You can add this title on your bios including on LinkedIn. We’re planning to create a community of Idea Spies around the world who are truly embracing innovation.
            </p>
          </div>
        </div>

    </div>
  </div>

@endsection
