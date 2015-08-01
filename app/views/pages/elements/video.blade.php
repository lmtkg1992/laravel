<li class="video">
    <div class="content col-xs-12 col-sm-8 col-md-8">
        <a target="_blank" href="<?= $base_url . '/video/' .$video->video_id; ?>" class="jump_focus">
            <?php if ($video->youtube_id){?>
            <img src="//i.ytimg.com/vi/<?php echo $video->youtube_id?>/mqdefault.jpg" width="450px">
            <?php }else{
                // @todo: lay hinh video image mac dinh cua site
                }?>
        </a>
        <img class="videoIndicator" src="<?php echo $base_url?>/images/play_icon.png">          
    </div>
    <div class="post-info col-xs-12 col-sm-4 col-md-4">
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