@extends('layouts.front.master') @section('title','Enterprise | www.cybertech.com')

@section('css')
  <style media="screen">
  #summeryImage{
    max-width: 250px;
    margin-left: auto;
    margin-right: auto;
  }
@media (max-width: 991px) {
  .card-columns {
    column-count: 2;
  }
}
@media (max-width: 767px) {
  .card-columns {
    column-count: 1;
  }
}

h6 ~p {
    text-align: justify;
}
  
  </style>
@endsection

@section('content')

  <div class="container pb-4">
    <h3 class="text-center">IdeaSpies Enterprise</h3>
    <span class="pageTitleUnderline mb-4"></span>


    {{-- <div class="row pt-3">
    <div class="col">
    <iframe width="100%" height="315" src="https://www.youtube.com/embed/D48Pzs6QwLM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
  </div>
  <div class="col-md-7">
  <h6><strong>True leaders spark innovation by creating an inclusive, open culture </strong></h6>
  <p>
  Innovation is the direct result of a healthy internal ecosystem, creating an innovative culture where work has meaning, brands have genuine value and new thinking leads to useful ideas being implemented.
</p>
<p><strong>
IdeaSpies Enterprise helps to create an innovative culture by inspiring and encouraging the implementation of ideas that help an organisation succeed.
</strong></p>
</div>
</div> --}}

<div class="">
  <div class="card-columns">
    <div class="card">
      <iframe width="100%" height="315" src="https://www.youtube.com/embed/D48Pzs6QwLM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </div>

    <div class="card p-3">
      <h6><strong>True leaders spark innovation by creating an inclusive, open culture </strong></h6>
      <p>
        Innovation is the direct result of a healthy internal ecosystem, creating an innovative culture where work has meaning, brands have genuine value and new thinking leads to useful ideas being implemented.
      </p>
      <p><strong>
        IdeaSpies Enterprise helps to create an innovative culture by inspiring and encouraging the implementation of ideas that help an organisation succeed.
      </strong></p>
    </div>


    <div class="card p-3">
      <h6><strong>What is IdeaSpies Enterprise? </strong></h6>
      <p><strong>IdeaSpies Enterprise is an easy to learn and use idea capture tool that offers a simple, effective, fun way to encourage and rate ideas.</strong>
        It enables an organisation to create an environment of inclusion that encourages internal champions and earns trust. Purpose and passion are the lifeblood of a successful company.
      </p>
      <p>
        However, according to a Gallup Report, only 15% of adults worldwide, who work full time for an employer and are engaged at work, are highly involved in and enthusiastic about their work and workplace. This low % implies significant wasted potential.
      </p>
      <p><strong>
        IdeaSpies Enterprise was conceived and designed to increase the engagement, morale and creative contributions of your employees.
      </strong></p>
      <p>
        <strong>
          It’s easy to learn and use because it’s been tested and refined via the public IdeaSpies platform.
        </strong>
        IdeaSpies is the demonstration model for IdeaSpies Enterprise and you can try it easily
        <strong>
           FOR FREE
        </strong>
        by registering. Hundreds of people around the world have already registered on the public IdeaSpies platform to post ideas.
      </p>
    </div>

    <div class="card p-3">
      <h6><strong>How Does IdeaSpies Enterprise Work? </strong></h6>
      <p>
        People at all levels of an organisation are encouraged to register using their organisation email address, then they can see their colleagues’ ideas to rate and comment on them as well as add their own ideas.
      </p>
      <p>
        They can use their own names or anonymous Idea Spy names. Only people with an organisation’s email address can see the ideas. The platform can operate independently. It can also be used to encourage ideas from B2B customers who are given access.
      </p>
      <p>
        Pre-arranged judges select the best ideas based on the support shown for them ie ratings and comments. Winners are recognised on a timely basis and selected ideas are implemented.
      </p>
    </div>

    <div class="card p-3">
      <h6><strong>Why should you subscribe to IdeaSpies Enterprise? </strong></h6>
      <p><strong>Generate useful, effective and actionable ideas</strong></p>
      <p>
        The best way to generate useful ideas that improve your business is from your team members. They understand your business and want it to succeed.
      </p>
      <p>
        However, one of the biggest challenges in leading teams is encouraging innovative thought. Many employees feel inhibited when the process forces creativity and ideas through structured, time-pressured sessions – a less effective way to encourage and spark creative and innovative ideas.
      </p>
      <p>
        Team Members often get their best ideas when they have Eureka moments outside of meetings, but they may forget about them before they have a chance to bring them up in a future meeting or ideation session
      </p>
      <p><strong>
        IdeaSpies Enterprise solves these challenges. It opens up the ideas conversation, encourages innovative thinking and provides a quick and easy way for them to submit their ideas and build on the ideas submitted by others.
      </strong></p>
      <p><strong>Increase staff engagement and retention</strong></p>
      <p>
        <strong>Your people will feel more enriched and empowered</strong>
         when there is an easy, transparent and effective mechanism to share their ideas, with a timely recognition system, ensuring they will receive credit for ideas they suggest and that their ideas will be seriously considered for testing or implementation. This will also help to encourage teams to collaborate across silos which typically limit ideas outside their realm.
      </p>
    </div>


    <div class="card p-3">
      <p><strong>IdeaSpies Enterprise is Different</strong></p>
      <p>
        While there are other platforms that can add to job enrichment, IdeaSpies is different- it facilitates:
      </p>
      <ol>
        <li><strong>Focus</strong> on idea generation</li>
        <li><strong>Stimulation of ideas</strong>  due to being directly linked to the public IdeaSpies ideas platform</li>
        <li><strong>Use</strong>as it’s easy to see how to use it</li>
        <li><strong>Participation</strong>because the platform is responsive on all devices</li>
        <li><strong>Timely recognition</strong>that encourages participation</li>
        <li><strong>Psychological safety</strong>given ideas can be posted anonymously</li>
        <li><strong>Reduced employee negativity</strong>given it provides a way to submit solutions to perceived problems</li>
        <li><strong>Fun!</strong></li>
      </ol>
    </div>


    <div class="card p-3">
      <h6><strong>Transparent Pricing</strong></h6>
      <p>Licensing fee per annum + GST (Australia only)</p>
      <p>10-100 employees US$3,000</p>
      <p>10-100 employees US$3,000</p>
      <p>101-200 employees US$4,000</p>
      <p>201-500 employees US$5,000</p>
      <p>Negotiable for more employees</p>
    </div>


    <div class="card p-3">
      <h6><strong>Summary</strong></h6>
      <p><strong>
        In summary, you can trial IdeaSpies Enterprise FOR FREE easily by using the public IdeaSpies platform. IdeaSpies Enterprise is a simple, easy to learn and use, agile idea sharing platform that aligns a business with its employees by facilitating them working together, both creatively and productively, to create and submit ideas and turn them into positive actions. Client ideas can come through employees or directly to the platform.
      </strong></p>
      <p>
        The IdeaSpies Enterprise platform’s simplicity means it’s easy for you, as a leader with many demands on your time, to implement and use it with team members.
      </p>
      <p><strong>
        Extra Bonus: Become part of a Community of Innovation Leaders
      </strong></p>
      <img id="summeryImage" src="{{ asset('assets/front/images/20faa09-600x309.jpg') }}" alt="">
      <p>
        <strong>As an IdeaSpies Enterprise Leader you’ll join a select group of business innovation leaders.</strong>
       Through this group you can compare results and learn more about practical ways to create an innovative culture which improves staff engagement and retention. This fuels outside-in thinking and influence, to avoid inadvertently becoming a closed culture.
      </p>
    </div>

<div class="card p-3">
  <h6><strong>Case Study</strong></h6>
  <p>
    KPMG GWS (Greater Western Sydney) completed a successful trial of IdeaSpies Enterprise in December 2017. You can read it here. KPMG Enterprise continues to use and improve the platform.
  </p>
</div>






  </div>
</div>

</div>

@endsection
