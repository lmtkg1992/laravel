<li class="gag-link" gagid="" itemtype="list">
    <div class="content">
        <div class="img-wrap">
           
             <iframe width="450" height="300" src="//www.youtube.com/embed/<?php echo $video->youtube_id;?>" frameborder="0" allowfullscreen></iframe>
        </div>
        <div class="watermark-clear"></div>                        
    </div>
    <div class="post-info">
        <div style="position: static; top: 55px;" class="info scriptolution-stop" id="action-174409">
            <h1>
                <a target="_blank" href="<?= $base_url . '/video/' .$video->video_id; ?>" class="jump_focus">
                    <?= $video->title ?>
           
                </a>
            </h1>
            <div class="uinfo">
                bởi <a href="<?php echo $base_url?>/user/<?php echo $video->username?>"><?= $video->displayname?></a>
                <span><?php echo $video->time_interval?></span>
            </div>
            <div class="p-stats">
                <span title="Lượt xem" class="views"><?php echo $video->view_count?></span>
                <span class="comments"><?php echo $video->comment_count?></span>
            </div>
           
        </div>
    </div>
</li> 