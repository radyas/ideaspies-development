<div class="row">
  @foreach ($related as $post)
    <div class="col-md-3 post-wrapper">
      <div class="img-container post-container">
        <a href="{{url('post/'.$post->id)}}">
          @if ($post->type == 'image')
            <img src="{{ asset($post->img_path) }}" alt="post-image" width="100%">
          @endif

          @if ($post->type == 'video')
            <!-- <iframe src="{{ asset($post->video_path) }}" autoplay=false></iframe> -->
            <video src="{{ asset($post->video_path) }}" controls="true" height="238px"></video>
          @endif
        </a>
      </div>
      <p class="py-2 mb-0">
        @if($post->idea_of_the_week == 1)
          <span class="title-red">Idea of the week</span>
        @endif
        <span class="title-1">{{$post->category->name ?? ''}}</span>
      </p>
      <a href="{{url('post/'.$post->id)}}">
        <h6 class="title-2 post-title">{{$post->title}}</h6>
      </a>
      <p>
        {{substr($post->content,0,140)}}
        <a href="{{url('post/'.$post->id)}}">
          <span class="btn-readMore">Read More &#10148;</span>
        </a>
      </p>
      <p>
        <span>{{date("jS F Y", strtotime($post->created_at))}}</span> <span>by {{$post->addedUser->first_name.' '.$post->addedUser->last_name}}</span>
      </p>
    </div>
  @endforeach
</div>
