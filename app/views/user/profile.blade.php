
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>


    <div class="profile-pad">
        <div class="profile-image">
            <a href="http://chatvl.com/user/<?php echo $user->username?>">
            <img src="http://graph.facebook.com/<?php echo $user->id?>/picture?width=480&amp;height=300" alt="<?php echo $user->username?>">
            </a>
        </div>
        <div class="profile-info" href="#" style="background:#333333">
            <h3><a href="http://chatvl.com/user/<?php echo $user->username?>"><?php echo $user->displayname?></a></h3>
            <h4><span class="post-title ptitle">Số bài đăng:</span> <span class="post-content pcontent"><?php echo $post_count?></span></h4>
            <h4><span class="post-title ptitle">Lượt xem:</span> <span class="view-content pcontent"><?php echo $view_count?></span></h4>
            <h4><span class="like-title ptitle">Được Like:</span> <span class="like-content pcontent"><?php echo $like_count?></span></h4>
            <h4><span class="like-title ptitle">Bình luận:</span> <span class="comment-content pcontent"><?php echo $comment_count ?></span></h4>
            <h4><span class="rank-title ptitle">Thứ hạng:</span> <span class="rank-content pcontent"></span></h4>
            <h4><span class="level-title ptitle">Level:</span> <span class="level-content pcontent">1</span></h4>
            <p></p>
            <p><a rel="nofollow" href="" target="_blank" style="color:#FFFFFF"></a></p>
            <a class="friendship" href="http://chatvl.com/user/nguyenuit/messages">Messages</a>
        </div>
    </div>
    <!-- <div class="main-filter with-topping"> -->
        <!-- <ul class="content-type">
            <li><a class="current" href="http://chatvl.com/user/nguyenuit"><strong>Bài viết</strong> (0)</a></li>
            <li><a class="" href="http://chatvl.com/user/nguyenuit/messages"><strong>Thông điệp</strong> (<fb:comments-count href="http://chatvl.com/user/nguyenuit/messages" fb-xfbml-state="rendered" class=" fb_comments_count_zero"><span class="fb_comments_count">0</span></fb:comments-count>)</a></li>
        </ul> -->
    <!-- </div> -->
  
    <?php $base_url = URL::to('/'); ?>

    <div id="video-content" class="list">
        <ul id="video-content-ul"> 

        <?php

        foreach ($videos as $video) {
        ?>
            @include('pages.elements.video')
        
        <?php }?> 
        <?php
        if (0)
        foreach ($photos as $photo) {
        ?>
           @include('pages.elements.photo')
        <?php }?>
            
        </ul>
    </div>
    <div id="paging-buttons" class="paging-buttons">
        <a href="#" onclick="return false;" class="previous disabled" <?php if ($page ==1) echo 'style="opacity:0.1"' ?>>« Trang trước</a>
        <a href="<?php echo $base_url . '/home/'.$page?>" class="older">Trang sau »</a>
    </div>
       
@stop