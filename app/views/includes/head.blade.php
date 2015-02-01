<div id='top-bar'>
	<div id='topbar-content'>
	
	<?php   
		$base_url = URL::to('/');

		$myfile = fopen("/opt/lampp/htdocs/text.txt", "a") or die("Unable to open file!");

		fwrite($myfile, print_r('aaaaaaaaaaaaa', true));
		fclose($myfile);
		$user = Auth::user();

		 ?>
		<ul id="nav">
			<li class="current"><a href="<?= $base_url .'/home'?>">Home</a></li>
			<li><a href="<?= $base_url?>/vote">Bình chọn</a>
			<li><a href="<?= $base_url?>/video">Video</a></li>	
			<li>
				<a href="<?= $base_url?>/upload-photo">
					<img src ='<?= $base_url?>images/upload_icon.png' alt='Dang Anh' />Dang Anh
				</a>
			</li>
			
		</ul>
		<div id="headerRight">
			<?php
			if (
				// !$user || $user['user'] == null
				!$user
				){
		 	?>
		        <div class="login">
		            <a href="<?= $base_url?>/login">Đăng nhập</a>
		        </div>
			
			<?php
			}else{
			?>
				<div class="avatar noNoti">
		            <a class="avatarLink">
		        	 <?php
		        	
		              // if (!$user->thumbnail_id){
		              	//if no avatar saved in db then default use facebook avatar
		                $src = 'http://graph.facebook.com/'.$user->id.'/picture?type=normal' ;
		              // }
		              // else{
		                //user changed avatar
		                // $src = $base_url .'public/'. $avatar['storage_path'];
		        	 	// $src = '';
		              // }
		              ?>
		              <img src="<?php echo $src; ?>" alt='profile avatar' style="height:40px"  /> 
		        	</a>
		            <ul class='ul_info'>
		            	
		                <li><a href="<?= $base_url?>photos/<?php echo $user->id;?>"/>Ảnh của bạn</a></li>
		                <li>
		                	<a href="<?= $base_url?>/user/<?php echo $user->username?>">Thông tin cá nhân</a>
		                </li>
		                <li><a href="<?= $base_url?>user/changepassword">Đổi mật khẩu</a></li>
		                <li><a href="<?= $base_url ?>logout">Thoát</a></li>
		            </ul>
		        </div>

			<?php } ?>
		</div>
	</div>

</div>
<script type="text/javascript">
$(document).ready(function(){


	$('a.avatarLink').click(function(){
		console.log('wtf');
		if ($('ul.ul_info').is(':visible')){
			$('ul.ul_info').hide();
		}else{

			$('ul.ul_info').show();
		}
	});
});
</script>