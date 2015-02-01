@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/'); ?>
    <div id="entries-content" class="list">
        <ul id="entries-content-ul" class="col-1"> 

        <?php

        foreach ($videos as $video) {
        ?>
            <li class="gag-link" gagid="174409" itemtype="list" id="entry-174409">
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
                            <span>20 phút trước</span>
                        </div>
                        <div class="p-stats">
                            <span title="Lượt xem" class="views">817</span>
                            <span class="comments">1</span>
                        </div>
                       
                    </div>
                </div>
            </li>
        <?php }?> 
        <?php

        foreach ($photos as $photo) {
        ?>
        	<li class="gag-link" gagid="174409" itemtype="list" id="entry-174409">
                <div class="content">
                    
                    <img style="max-width:400px" src="<?php echo $base_url . '/'.$photo->storage_path?>" alt="<?php echo $photo->title?>"/>
                    <!-- <div class="watermark-clear"></div>                         -->
                </div>
                <div class="post-info">
                    <div style="position: static; top: 55px;" class="info scriptolution-stop" id="action-174409">
                        <h1>
                        	<a target="_blank" href="<?= $base_url . '/photo/' .$photo->photo_id; ?>" class="jump_focus">
                       			<?= $photo->title ?>
                       
                        	</a>
                        </h1>
                        <div class="uinfo">
                        	bởi <a href="<?php echo $base_url?>/user/<?php echo $video->username?>"><?= $photo->displayname?></a>
							<span>20 phút trước</span>
						</div>
                        <div class="p-stats">
                        	<span title="Lượt xem" class="views">817</span>
                    		<span class="comments">1</span>
                        </div>
                       
                    </div>
                </div>
            </li>
        <?php }?>
            
        </ul>
    </div>
       
@stop


