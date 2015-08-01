<style type="text/css">

</style>
	<?php   				
	$base_url = URL::to('/');

	
	$user = Auth::user();

 	?>
	<nav id="navbar" class="navbar navbar-default" role="navigation">
 		<div class="container">
 		
	 		<div class="navbar-header">

				<div class="collapse navbar-collapse col-xs-12 col-sm-12 col-md-12 col-lg-8 col" id="bs-navbar-collapse">

					<div class="head-logo">
						<a href="<?php echo $base_url.'/home'?>">
							<img src="<?php echo $base_url .'/images/logo-white.png'?>" alt="cố gắng lên" id="logo"/>
							<img src="<?php echo $base_url .'/images/small-logo.png'?>" alt="cố gắng lên" id="small-logo"/>
						</a>
					</div>	


			  		<ul class="nav navbar-nav">

					 	<li class="current"><a href="<?= $base_url .'/home'?>">Mới</a></li>
					 	<li class="current"><a href="<?= $base_url .'/hot'?>">Hot</a></li>
						<li><a href="<?= $base_url?>/vote">Chờ duyệt</a>
						<li><a href="<?= $base_url?>/photo">Ảnh</a></li>
						<li>
							<a href="<?= $base_url?>/upload-photo">
								<img src ='<?= $base_url?>/images/upload_icon.png' alt='Dang Anh' />Đăng Ảnh
							</a>
						</li>
				  	</ul>
				  	<div id="headerRight">
						<?php
						if (
							
							!$user
							){
					 	?>
					        <div id="login">
					            <a href="<?= $base_url?>/login">Đăng nhậ̣p</a>
					        </div>
					        <div id="upload">
					        	<a href="<?php echo $base_url?>/upload-video">Đăng bài</a>
			        		</div>
						
						<?php
						}else{
						?>
							<div class="avatar noNoti">
					            <a class="avatarLink">
					        	 <?php
					        	
					             
					                $src = 'http://graph.facebook.com/'.$user->id.'/picture?type=normal' ;
					            
					              ?>
					              <img src="<?php echo $src; ?>" alt='profile avatar' style="height:50px;width:50px;border-radius:25px"  /> 
					        	</a>
					            <ul class='ul_info'>
					            	
					                <li>
					                	<a href="<?= $base_url?>/user/<?php echo $user->username?>">Trang cá nhân</a>
					                </li>
					                <li><a href="<?= $base_url?>/user/changepassword">Đổi mật khẩu</a></li>
					                <li><a href="<?= $base_url ?>/logout">Thoát</a></li>
					            </ul>
					        </div>

						<?php } ?>
					</div>
					<!-- end header right -->
				</div>
		  		
	  		</div>
	  	</div>

	  
	</nav>

<script type="text/javascript">
$(document).ready(function(){


	$('a.avatarLink, ul.ul_info').hover(function(){
		
		if ($('ul.ul_info').is(':visible')){
			$('ul.ul_info').hide();
		}else{

			$('ul.ul_info').show();
		}
	});
});
</script>