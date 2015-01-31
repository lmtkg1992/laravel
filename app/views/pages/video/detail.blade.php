@extends('layouts.default')

@section('content')


    <div id="container">
    
	<div id="main">
    	  
        <div id="content-holder">

            <div id="content">
                <div class="post-container">
                    <div class="img-wrap">
                        <div id="divVideoAds">
                            <div id="video-container">
                                <!-- <iframe id="video-iframe" class="video-iframe" src="http://www.youtube.com/embed/6w34zsEWNys?rel=0&amp;showinfo=0&amp;iv_load_policy=3&amp;modestbranding=1&amp;nologo=1" allowfullscreen="1" frameborder="0" height="410" width="727"></iframe> -->
                                 <iframe  height="410" width="727" src="//www.youtube.com/embed/<?php echo $data->youtube_id;?>" frameborder="0" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="post-info-wrapper">
                    <div class="uploader">
                        <div class="avatar">
                            <img src="http://graph.facebook.com/<?= $data->user_id?>/picture?width=50&amp;height=50">
                        </div>
                        
                        <div class="info">
                            <div class="uploader-name"><a href="http://chatvl.com/user/beiber1280"><?= $data->displayname?></a></div>                           
                            <div title="Lượt xem" class="views">27.264</div>
                        </div>
                    </div>
                    
                    <div class="post-info">
                        <div class="post-date">Đăng 3 giờ trước</div>
                        <div class="stats">
                            <span title="Lượt xem" class="views"> <span class="number">2.795</span></span>
                            <span title="Bình luận" class="comments"> <span class="number">8</span></span>
                        </div>
                    </div>
                </div>
                           
            </div>
          
      </div>

	</div>

    </div>
@stop


