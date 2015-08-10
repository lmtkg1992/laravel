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
                    <a id="prev_post" class="prev-post" href="<?php echo $base_url .'/photo/'.$previous?>"><span class="prev-arrow"></span><span class="prev-label"><script>b64_to_utf8("QsOgaSBUcsaw4bubYw==");</script>Bài Trước</span></a>
                    <?php }?>
                    <?php if ($next){?>
                    <a id="next_post" class="next-post" href="<?php echo $base_url .'/photo/'.$next?>"><span class="next-label"><script>b64_to_utf8("QsOgaSBTYXU=");</script>Bài Sau</span><span class="arrow"></span></a>
                    <?php }?>
                </div>
            </div>

                <div class="post-container">
                    <img src="<?php echo $base_url . '/'.$photo->storage_path?>" alt="<?php echo $photo->title?>"/>
       
                </div>
                
                <div class="post-info-wrapper">
                    <div class="uploader">
                        <div class="avatar">
                            <img src="http://graph.facebook.com/<?= $photo->user_id?>/picture?width=50&amp;height=50">
                        </div>
                        
                        <div class="info">
                            <div class="uploader-name"><a href=""><?= $photo->displayname?></a></div>                           
                            <div title="Lượt xem" class="views"><?php echo $photo->view_count?></div>
                        </div>
                    </div>
                    
                    <div class="post-info">
                        <div class="post-date">Đăng <?php echo $photo->time_interval?></div>
                        <div class="stats">
                            <span title="Lượt xem" class="views"> <span class="number"><?php echo $photo->photo_view_count?></span></span>
                            <span title="Bình luận" class="comments"> <span class="number"><?php echo $photo->photo_comment_count?></span></span>
                        </div>
                    </div>
                </div>
                           
            </div>
          
      </div>

	</div>

    </div>
@stop

@section('sidebar_content')

@include('includes.topusers')
@include('includes.photo_sidebar')

@stop
