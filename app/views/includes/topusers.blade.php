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


	foreach ($topusers as $user) {
?>


	<div class="item">
    	<a href="<?php echo $base_url?>/user/<?php echo $user->username?>" title="<?php echo $user->displayname?>">
    	 <?php
            $src = 'http://graph.facebook.com/'.$user->id.'/picture' ;
            // $src = $base_url .'/images/no-profile-photo.png';
          ?>
          <img src="<?php echo $src?>" alt='<?php echo $user->displayname?>' /> 
        	
          <div class="info">
    	       <span class="name"><?php echo $user->displayname?></span> 
            <span class="views"><?php echo $user->view_count?></span>
		      </div>
		</a>
	</div>
	
<?php
}?>
</div>

<div class="clear"></div>
</div>