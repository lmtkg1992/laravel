<li class="item">
    <div class="content">
        
        <img style="max-width:400px" src="<?php echo $base_url . '/'.$photo->storage_path?>" alt="<?php echo $photo->title?>"/>
                    
    </div>
    <div class="post-info">
        <div style="position: static; top: 55px;" class="info scriptolution-stop" id="action-174409">
            <h1>
            	<a target="_blank" href="<?= $base_url . '/photo/' .$photo->photo_id; ?>" class="jump_focus">
           			<?= $photo->title ?>
           
            	</a>
            </h1>
            <div class="uinfo">
            	bởi <a href="<?php echo $base_url?>/user/<?php echo $photo->username?>"><?= $photo->displayname?></a>
				<span><?php echo $photo->time_interval ?></span>

               
			</div>
            <div class="p-stats">
            	<span title="Lượt xem" class="views"><?php echo $photo->photo_view_count?></span>
        		<span class="comments"><?php echo $photo->photo_comment_count?></span>
            </div>
           
        </div>
    </div>
</li>