@section('navigation')
<div id='top-bar'>
	<div id='topbar-content'>
	
	<?php   
		// $base_url = base_url();
		$base_url = URL::to('/');
		 ?>
		<ul id="nav">
			<li class="current"><a href="<?= $base_url?>">Home</a></li>
			<!-- <li><a href="#">Hot</a></li> -->
			<li><a href="<?= $base_url?>vote">Bình chọn</a>
			<li><a href="<?= $base_url?>video">Video</a></li>	
			<li>
				<a href="<?= $base_url?>upload-album">
					<img src ='<?= $base_url?>images/upload_icon.png' alt='Dang Anh' />Dang Anh
				</a>
			</li>
			<?php
			// $user = $this->session->userdata('user');

	  //       if (isset($user['userinfo']) ){
			// 	$userinfo = $user['userinfo'];
			// 	$avatar = $user['avatar'];
	  //       }
			?>
		</ul>
		<div id="headerRight">
			<?php
			if (
				// !$user || $user['userinfo'] == null
				1
				){
		 	?>
		        <div class="login">
		            <a href="<?= $base_url?>/login">Đăng nhập</a>
		        </div>
			
			<?php
			}else{
			?>
				<div class="avatar noNoti">
		            <a href="" class="avatarLink">
		        	 <?php
		        	
		              // if (!$userinfo->thumbnail_id){
		              // 	//if no avatar saved in db then default use facebook avatar
		              //   $src = 'http://graph.facebook.com/'.$userinfo->user_id.'/picture?type=normal' ;
		              // }
		              // else{
		              //   //user changed avatar
		              //   $src = base_url() .'public/'. $avatar['storage_path'];
		              // }
		        	 	$src = '';
		              ?>
		              <img src="<?php echo $src; ?>" alt='profile avatar' style="height:40px"  /> 
		        	</a>
		            <ul class='ul_info'>
		            	
		                <li><a href="<?= $base_url?>photos/<?php echo $userinfo->user_id;?>"/>Ảnh của bạn</a></li>
		                <li>
		                	<a href="<?= $base_url?>user/edit">Thông tin cá nhân</a>
		                </li>
		                <li><a href="<?= $base_url?>user/changepassword">Đổi mật khẩu</a></li>
		                <li><a href="<?= $base_url ?>logout">Thoát</a></li>
		            </ul>
		        </div>

			<?php } ?>
		</div>
	</div>

</div>
@stop