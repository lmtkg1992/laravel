
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, minimal-ui">


   <% HTML::script('js/jquery-2.1.3.min.js') %>

   <% HTML::script('js/bootstrap.min.js') %>

   <% HTML::script('js/jquery-ui.min.js') %>

 
   <% HTML::script('js/bootstrap-typeahead.js') %>

   <% HTML::style('css/bootstrap.min.css') %>
   
   <% HTML::style('css/jquery-ui.css') %>

   <% HTML::style('css/jquery.tagit.css') %>

   <% HTML::style('css/style.css') %>

   <% HTML::style('css/mobile_style.css') %>
   

</head>
<body>
    @include('includes.head')

    

  <div class="container">
      
    <div class="row">

        
          <div class="col-xs-12 col-sm-12 col-md-8">   
    
        
            <?php $base_url = URL::to('/') ?>

             <div id='loginform'>
                  <div class="box-title">
                    <h1>
                    ĐĂNG NHẬP
                    </h1>
                  </div>
                  <div class="login_content">
                      <div class="login_wait" style="display: none;"><span>Đang kết nối với tài khoản facebook. Vui lòng chờ ...</span></div>
                      <div class="login_nt" style="display: block;">Click vào nút bên dưới để đăng nhập bằng tài khoản Facebook của bạn
                       <a href="https://www.facebook.com/dialog/oauth?client_id=604212406308675&redirect_uri=<?= $base_url ?>callback_login&scope=email<?= isset($return) ? '&ref='.urlencode($return) : '' ?>">
                          <img src="<?= $base_url ?>/images/facebook-login-button.png" alt='facebook login button' style='width:100px;height:25px' />
                      </a>
                     </div>
                  </div>
                  <?php if(1){?>
                  <!-- start login without facebook -->
                   
                  <div class="login_without_box">
                      <div class="login_without_box_title">
                          <span>Nếu bạn không đăng nhập được bằng Facebook hoặc FB của bạn bị chặn! Hãy thử bằng form bên dưới.</span>
                      </div>
                      <div class="loginformb">
                          <form action="<?php echo $base_url?>/validate_login">
                              <div class="form-group row">
                                <div class="col-xs-12 col-md-3">
                                  <label class="lbl_left_login">Email:</label>
                                </div>
                                <div class="col-xs-12 col-md-6">
                                  <input type="text" id="email" name="email" class="form-control" placeholder="Email đăng nhập"  value="<?= isset($_POST['email']) ? $_POST['email']: '' ?>" />
                                </div>
                              </div>
                              <div class="form-group row">
                                <div class="col-xs-12 col-md-3">
                                  <label class="lbl_left_login">Mật khẩu:</label>
                                </div>
                                <div class="col-xs-12 col-md-6">

                                  <input type="password" id="password" name="password" class="form-control" placeholder="Mật khẩu"  value="<?= isset($_POST['password']) ? $_POST['password']: '' ?>" />
                                </div>
                              </div>
                              <div class="form-group row">
                                  <div class="col-xs-12 col-md-12 text-right">
                                      <button type="submit" class="btn btn-default">Bỏ qua</button>
                                      <button type="submit" class="btn btn-primary">Đăng nhập</button>
                                  </div>

                              </div>
                          </form>
                         
                      </div>
                  </div>
                  <?php }?>
                  <!--  end login without facebook  -->

              </div>  
          </div>
    </div>
  </div>
</body>