@extends('layouts.front.master') @section('title','About Us | www.cybertech.com')

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
    color:#d64c1e;
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
    color:#045985;
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
    text-align: justify;
  }

  .text-justify {
    text-align: justify;
  }



  </style>
@endsection

@section('content')

  <div class="container pb-4">

    <div class="">
      <h3 class="text-center">About Us</h3>
      <span class="pageTitleUnderline mb-4"></span>

      <!-- <div class="team-boxed">
        <div class="row justify-content-center">
          <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/lynn-wood.jpg') }}">
              <h5 class="name">Lynn Wood</h5>
              <p class="title">Chief IdeaSpies</p>
              <div class="social"><a href="https://au.linkedin.com/in/lynn-wood-74972b16" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/trish-kelly.jpg') }}">
              <h5 class="name">Trish Kelly</h5>
              <p class="title">Deputy Chief IdeaSpies</p>
              <div class="social"><a href="https://www.linkedin.com/in/trishmkelly/" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
        </div>
      </div> -->

      <div class="col-md-12 text-center">
        <iframe id="shortIntroVideo" height="315" src="https://www.youtube.com/embed/7BWE_KFww5Q" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
      </div>

      <h6 class="text-justify mt-4"><strong>We believe in sharing innovation to inspire action.</strong></h6>
      <p class="text-justify">
        Idea Spies are observant people who care about the world and make it better by sharing clever ideas happening around them -see short intro video.
      </p>
      
      <p class="mt-3 text-justify">
        The idea for this ideas platform was born on a trip to Canada in 2015 when a guide said.
      </p>
      <h6 class="text-justify">
        <strong>‘Promote what you love, rather than bash what you hate’</strong>
      </h6>

      <p class="text-justify mt-3">
        There are now about 2.000 clever ideas, happening now, posted on IdeaSpies. You can easily search the ideas by category and word, share and rate them. The platform shows the most popular as well as the most recent ideas.If you <a href="{{ url('register') }}" target="_blank">register to become an Idea Spy</a> you can also comment and add ideas as well as receive IdeaSpies Weekly.
      </p>

      <h6 class="text-justify">
        <strong>“The future is already here – it’s just not evenly distributed.” William Gibson.</strong>
      </h6>
      <p class="text-justify">
        IdeaSpies is helping to even the distribution.
      </p>

    </div>
    <hr class="mt-4">
    <h4 class="text-justify mt-4"><strong>IdeaSpies Enterprise</strong></h4>
    <p class="text-justify">
      The public IdeaSpies is the FREE demonstration model for IdeaSpies Enterprise,  a simple, fun way to encourage ideas from staff. You can see a short video that shows how IdeaSpies Enterprise works here
    </p>
    <hr>
    <h4 class="text-center mt-4"><strong>Our Team</strong></h4>

    <div class="team-boxed">
      <div class="row people justify-content-center">

          <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/lynn-wood.jpg') }}">
              <h5 class="name">Lynn Wood</h5>
              <p class="title">Chief Idea Spy</p>
              <div class="social"><a href="https://au.linkedin.com/in/lynn-wood-74972b16" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
           <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/trish-kelly.jpg') }}">
              <h5 class="name">Trish Kelly</h5>
              <p class="title">Deputy Chief Idea Spy</p>
              <div class="social"><a href="https://www.linkedin.com/in/trishmkelly" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
           <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/emma-house.jpg') }}">
              <h5 class="name">Emma House</h5>
              <p class="title">Little Chief Idea Spy</p>
              <div class="social"><a href="https://www.linkedin.com/in/connectwithemma" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
           <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/shanil-fernando.jpg') }}">
              <h5 class="name">Shanil Fernando</h5>
              <p class="title">Head of IT Idea Spy</p>
              <div class="social"><a href="https://www.linkedin.com/in/shanil-fernando-2768bb60" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
           <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/doug-freeman.jpg') }}">
              <h5 class="name">Doug Freeman</h5>
              <p class="title">Communications Idea Spy</p>
              <div class="social"><a href="https://www.linkedin.com/in/dougatideascapeinc" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
           <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/chris-liddell.jpg') }}">
              <h5 class="name">Chris Liddell</h5>
              <p class="title">Apprentice Idea Spy</p>
              <div class="social"><a href="https://www.linkedin.com/in/chrisliddell" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
           <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/anne-massey.jpg') }}">
              <h5 class="name">Anne Massey</h5>
              <p class="title">Champion Idea Spy</p>
              <div class="social"><a href="https://www.linkedin.com/in/anne-massey-462915" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 item">
            <div class="box"><img class="rounded-circle" src="{{ asset('assets/front/images/team/john-katsiris.jpg') }}">
              <h5 class="name">John Katsiris</h5>
              <p class="title">Consultant-IdeaSpies Enterprise</p>
              <div class="social"><a href="https://www.linkedin.com/in/johnkatsiris" target="_blank"><i class="fab fa-linkedin"></i></a></div>
            </div>
          </div>

      </div>
    </div>

  </div>

  <div class="row background-1">
    <div class="container">
      <h4 class="text-center mt-4 mb-3"><strong>Support</strong></h4>

      <div class="support-horizontal">
        <div class="row support">
            <div class="col-sm-6 item">
              <div class="row">
                <div class="col-md-12 col-lg-4"><a href="#"><img class="img-fluid" src="{{ asset('assets/front/images/support/ashurst.png') }}"></a></div>
                <div class="col">
                  <h3 class="name">Ashurst</h3>
                  <p class="description">
                    Mark Stanbridge, Ashurst Partner, said, “At each of our Boardroom Lunches one of our M+A lawyers presents ideas from IdeaSpies- they enjoy it, and it gives them an opportunity to present ideas they see on Idea Spies to leading directors in Australia.”
                  </p>
                </div>
              </div>
            </div>

            <div class="col-sm-6 item">
              <div class="row">
                <div class="col-md-12 col-lg-4"><a href="#"><img class="img-fluid" src="{{ asset('assets/front/images/support/cellmid.png') }}"></a></div>
                <div class="col">
                  <h3 class="name">CELLMID</h3>
                  <p class="description">
                    Maria Halasz, CEO Cellmid Limited, said “We posted our idea on IdeaSpies when we had brought a brand new technology to help women with hair loss. After looking at IdeaSpies our entire team became galvanised and even those with no social marketing knowledge, such as our scientists and admin team, got right behind it.”
                  </p>
                </div>
              </div>
            </div>
        </div>

        <div class="row support">
            <div class="col-sm-6 item">
              <div class="row">
                <div class="col-md-12 col-lg-4"><a href="#"><img class="img-fluid" src="{{ asset('assets/front/images/support/phil-aus.png') }}"></a></div>
                <div class="col">
                  <h3 class="name">Philanthropy Australia</h3>
                  <p class="description">
                    Sarah Davies, CEO Philanthropy Australia said, “The IdeaSpies platform is such an exciting innovation. It is a terrific space for not-for-profits to share their clever ideas and inspire others to think about how they can make the world a better place.”
                  </p>
                </div>
              </div>
            </div>

            <div class="col-sm-6 item">
              <div class="row">
                <div class="col-md-12 col-lg-4"><a href="#"><img class="img-fluid" src="{{ asset('assets/front/images/support/kmpg.png') }}"></a></div>
                <div class="col">
                  <h3 class="name">KPMG</h3>
                  <p class="description">
                    David Pring, Managing Partner Western Sydney, KPMG Australia said “IdeaSpies Enterprise was very well received by staff. It’s thought provoking and easy to use, with no training needed. In the early stages of the trial we made some suggestions which were immediately taken up to improve the platform.<br/>

                    “Staff saw the program as an opportunity to suggest ideas that could improve the way they work. In addition to specific ideas we saw themes coming from the ideas that have led to improvements.<br/>

                    “We believe that, as well as useful ideas and themes, we gained a benefit in improving staff engagement. We’re also very pleased that the winning ideas are attractive to clients and expected to generate extra revenue.”
                  </p>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container">

    <h4 class="text-center mt-4 mb-3"><strong>Award</strong></h4>
    <div class="text-center">
      <a href="http://anthillonline.com/top-100-coolest-companies-in-australia-2016/" target="_blank">
        <img src="{{ asset('assets/front/images/cool-company-award-300x133.jpeg') }}" alt="" style="max-width: 350px;">
        <p>click here for more infomation</p>
      </a>
    </div>


    <hr class="mt-4">
    <h4 class="text-center mt-4 mb-3"><strong>Media</strong></h4>

    <div class="row text-center pb-4">

        <div class="col-md-6 col-lg-4 my-2">
          <a href="https://www.adviservoice.com.au/2018/11/survey-finds-employees-believe-they-are-the-best-source-of-innovation" target="_blank">AdviserVoice – Nov 2018</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="https://companydirectors.partica.online/aicd-company-directors/cd-may-2018/flipbook/14" target="_blank">AICD Company Director Magazine- May 2018</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="http://maturepreneurstalk.libsyn.com/lynn-wood-a-clever-innovative-way-to-start-a-new-venture-promote-what-you-love-rather-than-bash-what-you-dislike" target="_blank">Podcast-May 2018</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="https://readyfundgo.com/crowdfunding-and-ideation-3-synergies-all-innovators-must-know-about" target="_blank">Ready Fund Go, 8 March 2018</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="https://yourstory.com/2018/02/idea-spies-platform-sharing-innovative-ideas-getting-feedback" target="_blank">Your Story, 4 Feb 2018</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="http://www.abnewswire.com/pressreleases/innovation-management-company-announces-joint-venture-with-ideas-platform_127984.html" target="_blank">ABNewsWire, 14 July, 2017</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="https://thenextweb.com/guests/ideaspies-is-an-ideas-platform-showcasing-positive-ideas/#.tnw_JwtNAUgo" target="_blank">TheNextWeb, March 21 2017</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="https://pledgeitforward.today/women-lead-lynn-wood-founder-ideaspies" target="_blank">Pledge 1%, March 4 2017</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="http://philanthropyaustralia.cmail19.com/t/ViewEmail/d/12D0C6D5FAED9E21/DA4CE91A7EF34E5525D77A725F39070E" target="_blank">Philanthropy Weekly. Nov 8 2016</a>
        </div>
        <div class="col-md-6 col-lg-4 my-2">
          <a href="https://us13.campaign-archive.com/?u=e89d2de0882a60664fc161c72&id=a1e3657fd1&e=370229978f" target="_blank">Startup Soda Nov 6 2016</a>
        </div>
         <div class="col-md-6 col-lg-4 my-2">
          <a href="https://www.startupranking.com/ideaspies" target="_blank">Startup Ranking Nov 10 2016</a>
        </div>

    </div>

  </div>

@endsection
