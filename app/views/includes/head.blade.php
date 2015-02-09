<style type="text/css">

</style>
<?php   
		$base_url = URL::to('/');

	
		$user = Auth::user();

		 ?>
	<nav id="navbar" class="navbar navbar-default" role="navigation">
 		<div class="container">
 		  <div class="btn-toolbar col-3 col-sm-12 col-md-12 col-lg-4 col" style="">
	  		 	
	           
            </div>
	 		<div class="navbar-header">
	 		
		      <button type="button" class="navbar-toggle btn btn-primary" data-toggle="modal" data-target="#menu_popup">
		     
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		       
		        <!-- Choose Category -->
		      </button>
	         <div class="modal fade modal-sm" id="menu_popup" tabindex="-1" role="dialog" aria-labelledby="Choose Category" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">Choose Category</h4>
                </div>
                
                    <div class="list-group">
                              <a class="list-group-item" href="#snap_0"><i class=""></i> Dining / Retails</a> 
         
                              <a class="list-group-item" href="#snap_1"><i class=""></i> Hotel</a> 
         
                              <a class="list-group-item" href="#snap_2"><i class=""></i> Air</a> 
         
                         
                    </div>
                </div>
		    </div>
		  

			<div class="collapse navbar-collapse col-9 col-sm-12 col-md-12 col-lg-8 col" id="bs-navbar-collapse" style="padding-left: 0px;">
		  		<ul class="nav navbar-nav" style="display: block !important">
		  

						 <li class="current"><a href="<?= $base_url .'/home'?>">Home</a></li>
						<li><a href="<?= $base_url?>/vote">Bình chọn</a>
						<li><a href="<?= $base_url?>/video">Video</a></li>	
						<li>
							<a href="<?= $base_url?>/upload-photo">
								<img src ='<?= $base_url?>/images/upload_icon.png' alt='Dang Anh' />Dang Anh
							</a>
						</li>
			  	</ul>
			  	<div id="headerRight">
						<?php
						if (
							
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
					        	
					             
					                $src = 'http://graph.facebook.com/'.$user->id.'/picture?type=normal' ;
					            
					              ?>
					              <img src="<?php echo $src; ?>" alt='profile avatar' style="height:40px"  /> 
					        	</a>
					            <ul class='ul_info'>
					            	
					                <li><a href="<?= $base_url?>/photos/<?php echo $user->id;?>"/>Ảnh của bạn</a></li>
					                <li>
					                	<a href="<?= $base_url?>/user/<?php echo $user->username?>">Thông tin cá nhân</a>
					                </li>
					                <li><a href="<?= $base_url?>/user/changepassword">Đổi mật khẩu</a></li>
					                <li><a href="<?= $base_url ?>/logout">Thoát</a></li>
					            </ul>
					        </div>

						<?php } ?>
					</div>

			  	<!-- <div id="block"></div> -->
		  		
	  		</div>
	  	</div>

	  
	</nav>

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