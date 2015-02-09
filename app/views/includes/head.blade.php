<style type="text/css">
	#nav {
	width: 70%;
	margin: 0;
	padding: 7px 6px 0;
	/*background: #7d7d7d url(../images/gradient.png) repeat-x 0 -110px;*/
	/*line-height: 100%;*/

	/*border-radius: 2em;
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;

	-webkit-box-shadow: 0 1px 3px rgba(0,0,0, .4);
	-moz-box-shadow: 0 1px 3px rgba(0,0,0, .4);*/
}
#nav li {
	margin: 0 5px;
	padding: 0 0 8px;
	float: left;
	/*position: relative;*/
	list-style: none;
}


/* main level link */
#nav a {
	font-weight: bold;
	color: #e7e5e5;
	text-decoration: none;
	display: block;
	padding:  8px 20px;
	margin: 0;

	-webkit-border-radius: 1.6em;
	-moz-border-radius: 1.6em;
	
	text-shadow: 0 1px 1px rgba(0,0,0, .3);
}
#nav a img{
    vertical-align: middle;
}
#nav a:hover {
	/*background: #000;*/
	color: #fff;
}

/* main level link hover */
#nav .current a, #nav li:hover > a {
	/*background: #666 url(../images/gradient.png) repeat-x 0 -40px;*/
	color: #FFFFFF;
	/*border-top: solid 1px #f8f8f8;*/

	-webkit-box-shadow: 0 1px 1px rgba(0,0,0, .2);
	-moz-box-shadow: 0 1px 1px rgba(0,0,0, .2);
	/*box-shadow: 0 1px 1px rgba(0,0,0, .2);*/

	/*text-shadow: 0 1px 0 rgba(255,255,255, 1);*/
    text-shadow: 1px 1px 1px #FFFFFF;
}

/* sub levels link hover */
#nav ul li:hover a, #nav li:hover li a {
	background: none;
	border: none;
	color: #666;

	-webkit-box-shadow: none;
	-moz-box-shadow: none;
}
#nav ul a:hover {
	background: #0078ff url(../images/gradient.png) repeat-x 0 -100px !important;
	color: #fff !important;

	-webkit-border-radius: 0;
	-moz-border-radius: 0;

	text-shadow: 0 1px 1px rgba(0,0,0, .1);
}

/* dropdown */
#nav li:hover > ul {
	display: block;
}

/* level 2 list */
#nav ul {
	display: none;

	margin: 0;
	padding: 0;
	width: 185px;
	position: absolute;
	top: 35px;
	left: 0;
	background: #ddd url(../images/gradient.png) repeat-x 0 0;
	border: solid 1px #b4b4b4;

	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;

	-webkit-box-shadow: 0 1px 3px rgba(0,0,0, .3);
	-moz-box-shadow: 0 1px 3px rgba(0,0,0, .3);
	box-shadow: 0 1px 3px rgba(0,0,0, .3);
}
#nav ul li {
	float: none;
	margin: 0;
	padding: 0;
}

#nav ul a {
	font-weight: normal;
	text-shadow: 0 1px 0 #fff;
}

/* level 3+ list */
#nav ul ul {
	left: 181px;
	top: -3px;
}

/* rounded corners of first and last link */
#nav ul li:first-child > a {
	-webkit-border-top-left-radius: 9px;
	-moz-border-radius-topleft: 9px;

	-webkit-border-top-right-radius: 9px;
	-moz-border-radius-topright: 9px;
}
#nav ul li:last-child > a {
	-webkit-border-bottom-left-radius: 9px;
	-moz-border-radius-bottomleft: 9px;

	-webkit-border-bottom-right-radius: 9px;
	-moz-border-radius-bottomright: 9px;
}


#topbar-content{
    margin: 0 auto;
    width: 1000px;
    /*overflow: hidden;*/
}
html[xmlns] #nav {
	display: block;
}
 
* html #nav {
	height: 1%;
}

.login_title {
height: 40px;
line-height: 40px;
background-color: #eee;
}
.login_title span {
float: left;
margin-left: 20px;
font-size: 16pt;
font-weight: bold;
text-transform: uppercase;
}
.login_content {
/*padding: 20px;*/
margin-top: 10px;
margin-left: 30px;
}
.login_without_box {
margin-left: 30px;
margin-top: 10px;
}
.login_without_box_title {
width: 100%;
float: left;
 border-bottom: 1px solid #DDDDDD;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
}
.login_without_box_title span {
font-size: 12px;
color: #555;
font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
}
div.login_nt{
    font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
}
.loginformb {
width: 100%;
float: left;
margin-top: 20px;
}

#loginform {
background-color: #FFFFFF;

min-height: 300px;
overflow: hidden;
max-width: 700px;
border: 1px solid #DDDDDD;
border-radius: 6px;
padding: 12px 20px;
box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
/*margin-left: 20px;*/
}

#headerRight{
	float: right;
	width: 200px;
}
#nav{
	float: left;

}
ul.ul_info{
	background-color: #222;
	display: none;
}
ul.ul_info li{
	padding-top: 5px;

}
ul.ul_info li a{
	text-decoration: none;
}
p.error{
	color: red;
}
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
								<img src ='<?= $base_url?>images/upload_icon.png' alt='Dang Anh' />Dang Anh
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