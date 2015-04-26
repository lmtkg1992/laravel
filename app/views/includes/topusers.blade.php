<?php
	$base_url = URL::to('/');
?>
<div id="topUserContent">
 <h3 class="topUsers">Top users</h3>
  <ul class="topUsersSort topUsersSortHome">
      <li><a class="selected" data-sort="week" href="#">Tuần</a> / </li>
      <li><a data-sort="month" href="#" class="">Tháng</a> / </li>
      <li><a data-sort="all" href="#" class="">Tất cả</a> </li>
  </ul>
  <div class="clear">
  </div>
<div class="topUsers">
<?php 
if (0)
	foreach ($topusers as $key => $item) {
?>


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
	
<?php
}?>
</div>

<div class="clear"></div>
</div>