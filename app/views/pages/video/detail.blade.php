@extends('layouts.default')

@section('content')

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
                                 <iframe  height="400" width="700" src="//www.youtube.com/embed/<?php echo $data->youtube_id;?>" frameborder="0" allowfullscreen>
                                 </iframe>
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


