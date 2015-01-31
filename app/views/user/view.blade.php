
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>
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
            <div id="paging-buttons" class="paging-buttons">
                                <a href="#" onclick="return false;" class="previous disabled">« Trang trước</a>
                                                <a href="#" onclick="return false;" class="older disabled">Trang sau »</a>
                            </div>
        </div>
    </div>
</div>

@stop