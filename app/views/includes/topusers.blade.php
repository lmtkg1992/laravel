<?php
	$base_url = URL::to('/');
?>
<div id="topUserContent">
<?php 
	foreach ($topusers as $key => $item) {
?>

<div class="topUsers">
	<div class="item">
    	<a href="<?php echo $base_url?>/user/<?php echo $item->username?>" title="<?php echo $item->displayname?>">
    	 <?php
            $src = 'http://graph.facebook.com/'.$item->id.'/picture?type=normal' ;
          ?>
          <img src="<?php echo $src; ?>" alt='profile avatar' /> 
        	
            <div class="info">
            	<span class="name"><?php echo $item->displayname?></span> <span class="views"><?php echo $item->view_count?></span>
			</div>
		</a>
	</div>
	
</div>
<?php
}?>
<div class="clear"></div>
</div>