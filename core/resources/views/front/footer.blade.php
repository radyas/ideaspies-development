<div class="row footerLogoBar">
  <div class="container ">
    <div class="row">
        <div class="col-md-6">
          <img id="footer-logo" src="{{ asset('assets/front/images/mainlogo-black.png') }}" alt="">
        </div>
        <div class="col-md-6 text-md-right">
          <ul class="footer-social-links mt-3 mt-md-0">
            <li><strong>Follow us on</strong></li>
          <li><a href="{{$media->fb}}"><i class="fab fa-facebook-f"></i></a></li>
            <li><a href="{{$media->twitter}}"><i class="fab fa-twitter"></i></a></li>
            <li><a href="{{$media->lnkedin}}"><i class="fab fa-linkedin-in"></i></a></li>
            {{-- <li><a href=""><i class="fab fa-google-plus-g"></i></a></li>
            <li><a href=""><i class="fab fa-pinterest-p"></i></a></li>
            <li><a href=""><i class="fab fa-tumblr"></i></a></li> --}}
            <li><a href="{{$media->instagram}}"><i class="fab fa-instagram"></i></a></li>
          </ul>
        </div>
      </div>
  </div>
</div>

<footer>
  <div class="container">


    <hr class="hr-fff">

    <div class="row">
      <div class="col-md-3">
        <img src="{{ asset('assets/front/images/coolAward.jpeg') }}" alt="" width="100%">
      </div>

      <div class="col-md-2">
        <h6><strong>Information</strong></h6>
        <ul class="footer-navigation">
          <li><a href="{{ url('about-us') }}">About Us</a></li>
          <li><a href="{{ url('guidelines') }}">Guidelines</a></li>
          <li><a href="{{ url('terms-of-use') }}">Terms of Service</a></li>
          <li><a href="{{ url('privacy') }}">Privacy Policy</a></li>
          <li><a href="{{ url('contact-us') }}">Contact</a></li>
        </ul>

      </div>

      <div class="col-md-4">
        <h6><strong>About</strong></h6>
        <p>
          We believe in sharing innovation to inspire action. Idea Spies are observant people who care about the world and make it better by sharing clever ideas happening around them. The idea for this ideas platform was born on a trip to Canada in 2015 when a guide said. Promote what you love, rather than bash what you hate.
        </p>
        <p>
          “The future is already here – it’s just not evenly distributed.” William Gibson. IdeaSpies is helping to even the distribution.
        </p>
      </div>

      <div class="col-md-3">
        <h6><strong>Media</strong></h6>
        <ul class="footer-navigation">
          <li><a href="https://www.adviservoice.com.au/2018/11/survey-finds-employees-believe-they-are-the-best-source-of-innovation" target="_blank">AdviserVoice - Nov 2018</a></li>
          <li><a href="https://companydirectors.partica.online/aicd-company-directors/cd-may-2018/flipbook/14" target="_blank">AICD Company Director Magazine- May 2018</a></li>
          <li><a href="http://maturepreneurstalk.libsyn.com/lynn-wood-a-clever-innovative-way-to-start-a-new-venture-promote-what-you-love-rather-than-bash-what-you-dislike" target="_blank">Podcast-May 2018</a></li>
          <li><a href="https://readyfundgo.com/crowdfunding-and-ideation-3-synergies-all-innovators-must-know-about" target="_blank">Ready Fund Go, 8 March 2018</a></li>
          <li><a href="https://yourstory.com/2018/02/idea-spies-platform-sharing-innovative-ideas-getting-feedback" target="_blank">Your Story, 4 Feb 2018</a></li>
          <li><a href="http://www.abnewswire.com/pressreleases/innovation-management-company-announces-joint-venture-with-ideas-platform_127984.html" target="_blank">ABNewsWire, 14 July 2017</a></li>
          <li><a href="https://thenextweb.com/guests/ideaspies-is-an-ideas-platform-showcasing-positive-ideas/#.tnw_JwtNAUgo" target="_blank">TheNextWeb, March 21 2017</a></li>
          <li><a href="https://pledgeitforward.today/women-lead-lynn-wood-founder-ideaspies" target="_blank">Pledge 1%, March 4 2017</a></li>
        </ul>


      </div>

      {{-- <div class="col-md-3">
        <h6><strong>Get in touch with Newsletter</strong></h6>
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Enter E-mail 8. Get 10, off" aria-label="Enter E-mail" aria-describedby="button-addon2">
          <div class="input-group-append">
            <button class="btn btn-sm btn-outline-secondary" type="button" id="button-addon2">Sign Up</button>
          </div>
        </div>

        <h6><strong>we are in social networks</strong></h6>



      </div> --}}

    </div>
    <hr class="hr-fff">

    <div class="row copyright">
      <div class="col-sm-6">
        Ideaspies © <?php echo date("Y") ?> | Another Solution by <a href="https://www.facebook.com/cybertechInt.lk/" target="_blank">Cybertech int</a>
      </div>
      <div class="col-sm-6 text-sm-right mt-2 mt-sm-0">
        {{-- <a href="#">Feedback</a> --}}
        <button href="#" class="btn-2" style="background: transparent;">Subscribe</button>
      </div>
    </div>

  </div>

</footer>


  {{-- <div class="copyright">
    Ideaspies © 2018 | Another Solution by Cyberteck int
    <span class="back-to-top">Back to Top <a href="#" id="scroll"><i class="fas fa-chevron-circle-up"></i></a></span>
  </div> --}}
