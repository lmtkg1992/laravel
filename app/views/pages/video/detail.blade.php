@extends('layouts.default')

@section('content')

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.4&appId=264703003672441";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


    <?php $base_url = URL::to('/'); ?>
    <div id="container">
    
	<div id="main">

    	  
        <div id="content-holder">

            <div id="content">
            <div id="post-control-bar" class="spread-bar-wrap">
             
                <div class="post-next-prev">
                    <?php if ($previous){?>
                    <a id="prev_post" class="prev-post" href="<?php echo $base_url .'/video/'.$previous?>"><span class="prev-arrow"></span><span class="prev-label"><script>b64_to_utf8("QsOgaSBUcsaw4bubYw==");</script>Bài Trước</span></a>
                    <?php }?>
                    <?php if ($next){?>
                    <a id="next_post" class="next-post" href="<?php echo $base_url .'/video/'.$next?>"><span class="next-label"><script>b64_to_utf8("QsOgaSBTYXU=");</script>Bài Sau</span><span class="arrow"></span></a>
                    <?php }?>
                </div>
            </div>

                <div class="post-container">
                    <div class="img-wrap">
                        <div id="divVideoAds">
                            <div id="video-container">
                                 <iframe  height="400" width="700" src="//www.youtube.com/embed/<?php echo $video->youtube_id;?>" frameborder="0" allowfullscreen>
                                 </iframe>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="post-info-wrapper">
                    <div class="uploader">
                        <div class="avatar">
                            <img src="http://graph.facebook.com/<?= $video->user_id?>/picture?width=50&amp;height=50">
                        </div>
                        
                        <div class="info">
                            <div class="uploader-name"><a href=""><?= $video->displayname?></a></div>                           
                            <div title="Lượt xem" class="views"><?php echo $video->view_count?></div>
                        </div>
                    </div>
                    
                    <div class="post-info">
                        <div class="post-date">Đăng <?php echo $video->time_interval?></div>
                        <div class="stats">
                            <span title="Lượt xem" class="views"> <span class="number"><?php echo $video->video_view_count?></span></span>
                            <span title="Bình luận" class="comments"> <span class="number"><?php echo $video->video_comment_count?></span></span>
                        </div>
                    </div>
                </div>
                           
            </div>
           <div class="fb-comments" data-href="http://giaitrivl69.tk/video/<?php echo $video->video_id?>" data-width="700" data-numposts="5"></div>
      </div>

	</div>

    </div>
@stop

@section('sidebar_content')

@include('includes.topusers')
@include('includes.photo_sidebar')

@stop
