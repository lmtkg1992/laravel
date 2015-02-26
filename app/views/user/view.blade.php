
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>

<style type="text/css">
    .profile-pad .profile-image {
        overflow: hidden;
        float: left;
    }
    .profile-pad .profile-info {
        float: left;
        width: 208px;
        height: 280px;
        padding: 20px 20px 0;
        background-color: #222;
        display: block;
        color: #fff;
        border-radius: 0 5px 0 0;
        -webkit-border-radius: 0 5px 0 0;
        -moz-border-radius: 0 5px 0 0;
        position: relative;
        text-shadow: 0 -1px rgba(0, 0, 0, .2);
        box-shadow: 0 -68px rgba(0, 0, 0, .2) inset;
        -moz-box-shadow: 0 -68px rgba(0, 0, 0, .2) inset;
        -webkit-box-shadow: 0 -68px rgba(0, 0, 0, .2) inset;
    }
    .profile-pad .profile-image img {
        display: block;
        float: left;
        width: 480px;
        height: 300px;
        background-color: #222;
    }
    .profile-pad .profile-image a img {
        border: none;
    }
    .main-filter {
        background-color: #f4f4f4;
        border-radius: 5px 5px 0 0;
        -webkit-border-radius: 5px 5px 0 0;
        -moz-border-radius: 5px 5px 0 0;
        height: 43px;
        overflow: hidden;
        box-shadow: 0 1px #fff inset, 0 -1px #ddd inset;
        -moz-box-shadow: 0 1px #fff inset, 0 -1px #ddd inset;
        -webkit-box-shadow: 0 1px #fff inset, 0 -1px #ddd inset;
    }
    .profile-pad a.friendship, .profile-pad a.settings {
        display: block;
        text-indent: -9999px;
        overflow: hidden;
        width: 36px;
        height: 36px;
        position: absolute;
        bottom: 15px;
        right: 20px;
        -webkit-transition: opacity .2s linear;
        -moz-transition: opacity .2s linear;
        border: 1px solid rgba(0, 0, 0, .4);
        box-shadow: 0 0 0 1px rgba(255, 255, 255, .2) inset;
        -moz-box-shadow: 0 0 0 1px rgba(255, 255, 255, .2) inset;
        -webkit-box-shadow: 0 0 0 1px rgba(255, 255, 255, .2) inset;
        border-radius: 50px;
        -webkit-transition: background-color .2s linear;
        -moz-transition: background-color .2s linear;
        background: url(../images/sprite_v12.png) -400px -100px no-repeat rgba(255, 255, 255, .1);
    }

</style>

<div id="main">
    <div id="content-holder">
        <div class="profile-pad">
            <div class="profile-image">
                <a href="http://chatvl.com/user/nguyenuit">
                <img src="http://graph.facebook.com/<?php echo $user->id?>/picture?width=480&amp;height=300" alt="nguyenuit">
                </a>
            </div>
            <div class="profile-info" href="#" style="background:#333333">
                <h3><a href="http://chatvl.com/user/nguyenuit"><?php echo $user->displayname?></a></h3>
                <h4><span class="post-title ptitle">Số bài đăng:</span> <span class="post-content pcontent"><?php echo $post_count?></span></h4>
                <h4><span class="post-title ptitle">Lượt xem:</span> <span class="view-content pcontent"><?php echo $view_count?></span></h4>
                <h4><span class="like-title ptitle">Được Like:</span> <span class="like-content pcontent"><?php echo $like_count?></span></h4>
                <h4><span class="like-title ptitle">Bình luận:</span> <span class="comment-content pcontent"><?php echo $comment_count?></span></h4>
                <h4><span class="rank-title ptitle">Thứ hạng:</span> <span class="rank-content pcontent">12709</span></h4>
                <h4><span class="level-title ptitle">Level:</span> <span class="level-content pcontent">1</span></h4>
                <p></p>
                <p><a rel="nofollow" href="" target="_blank" style="color:#FFFFFF"></a></p>
                <a class="friendship" href="http://chatvl.com/user/nguyenuit/messages">Messages</a>
            </div>
        </div>
        <div class="main-filter with-topping">
            <ul class="content-type">
                <li><a class="current" href="http://chatvl.com/user/nguyenuit"><strong>Bài viết</strong> (0)</a></li>
                <li><a class="" href="http://chatvl.com/user/nguyenuit/messages"><strong>Thông điệp</strong> (<fb:comments-count href="http://chatvl.com/user/nguyenuit/messages" fb-xfbml-state="rendered" class=" fb_comments_count_zero"><span class="fb_comments_count">0</span></fb:comments-count>)</a></li>
            </ul>
        </div>
        <div id="content" listpage="">
            <div id="entries-content" class="list">
                <ul id="entries-content-ul" class="col-1">

                </ul>
            </div>
          
        </div>
    </div>
</div>

@stop