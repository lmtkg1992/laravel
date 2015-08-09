<li class="video">
    <div class="content col-xs-12 col-sm-8 col-md-8">
        <a target="_blank" href="<?= $base_url . '/video/' .$video->video_id; ?>" class="jump_focus">
            <?php if ($video->youtube_id){?>
            <img src="//i.ytimg.com/vi/<?php echo $video->youtube_id?>/0.jpg" width="450px">
            <?php }else{
                // @todo: lay hinh video image mac dinh cua site
                }?>
        </a>
        <img class="videoIndicator" src="<?php echo $base_url?>/images/play_icon.png">  
    </div>
    <div class="post-info col-xs-12 col-sm-4 col-md-4">
        <div style="position: static; top: 55px;" class="info scriptolution-stop">
            <h1>
                <a target="_blank" href="<?= $base_url . '/video/' .$video->video_id; ?>" class="jump_focus">
                    <?= $video->title ?>
           
                </a>
            </h1>
             <div class="uinfo">
                bởi <a href="<?php echo $base_url?>/user/<?php echo $video->username?>">
                <?php echo $video->displayname?></a>
               
                <span><?php echo $video->time_interval?></span>
            </div>
            <div class="p-stats">
                <span title="Lượt xem" class="views"><?php echo $video->video_view_count?></span>
                <span class="comments"><?php echo $video->video_comment_count?></span>
            </div>
            
            <ul class="actions vote-<?= $video->video_id?>">
                <li class="vote-down-<?= $video->video_id?>">
                    <a id="vote-down-btn-<?= $video->video_id?>" data-video-id='<?= $video->video_id?>' data-value='-1' class="vote-action-video" href="javascript:void(0);"><span>Chán</span></a>
                </li>
                <li class="vote-up-<?= $video->video_id?>">
                    <a id="vote-up-btn-<?= $video->video_id?>" data-video-id='<?= $video->video_id?>' data-value='1' class="vote-action-video" href="javascript:void(0);"><span>Chất</span></a>
                </li>
            </ul>

      </div>
    </div>
</li> 