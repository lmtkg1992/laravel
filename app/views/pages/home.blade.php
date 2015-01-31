@extends('layouts.default')

@section('content')

    <div id="entries-content" class="list">
        <ul id="entries-content-ul" class="col-1"> 
        <?php

        foreach ($data as $value) {
        	
        
        ?>
        	<li class="gag-link" gagid="174409" itemtype="list" id="entry-174409">
                <div class="content">
                    <div class="img-wrap">
                       
                         <iframe width="450" height="300" src="//www.youtube.com/embed/<?php echo $value->youtube_id;?>" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="watermark-clear"></div>                        
                </div>
                <div class="post-info">
                    <div style="position: static; top: 55px;" class="info scriptolution-stop" id="action-174409">
                        <h1>
                        	<a target="_blank" href="<?= URL::to('/') . '/video/' .$value->video_id; ?>" class="jump_focus">
                       			<?= $value->title ?>
                       
                        	</a>
                        </h1>
                        <div class="uinfo">
                        	bởi <a href="http://chatvl.com/user/beiber1280"><?= $value->displayname?></a>
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


