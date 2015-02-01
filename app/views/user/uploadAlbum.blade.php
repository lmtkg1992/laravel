
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>

<style type="text/css">
   .head ul.switch li a {
        font-size: 12px;
        font-weight: bold;
        color: #999;
        text-shadow: 0 1px 0 #fff;
        display: block;
        line-height: 15px;
        padding: 55px 0 15px;
        width: 50px;
        text-align: center;
    }
    .head ul.switch li a.photo {
        background: url(images/sprite_v12.png) no-repeat -200px -1100px;
    }
    .head ul.switch li.current a.video {
        background: url(images/sprite_v12.png) no-repeat -350px -1100px;
    }
    .head ul.switch li{
        display: inline-block;
    }    

    .head {
        background-color: #f4f4f4;
        border-radius: 5px 5px 0 0;
        -webkit-border-radius: 5px 5px 0 0;
        -moz-border-radius: 5px 5px 0 0;
        padding: 20px 20px 0;
        position: relative;
        box-shadow: 0 1px #fff inset, 0 -1px #DDD inset;
        -moz-box-shadow: 0 1px #fff inset, 0 -1px #DDD inset;
        -webkit-box-shadow: 0 1px #fff inset, 0 -1px #DDD inset;
    }

</style>
<div class="head">
<ul class="switch">
        <li class="tab_photo "><a class="photo" href="<?php echo $base_url?>/upload-photo">Ảnh</a></li>
        <li class="tab_video current"><a class="video" href="<?php echo $base_url?>/upload-video">Video</a></li>
    </ul>
</div>


<div class="content form_photo  col-md-12">
    <form  enctype="multipart/form-data" method="post" class="form-horizontal" action="<?php echo $base_url?>/submit-album">
        <input name="type" value="Photo" type="hidden">
        <input id="post_type" name="post_type" value="Photo" type="hidden">
        <h3>Đăng ảnh</h3>

        <div class="form-group row">
            <div class="col-xs-12 col-md-3">
                <label class="control-label" for="image">File ảnh:</label>
            </div>
            <div class="col-xs-12 col-md-6">
                
                <input id="photo_file_upload" class="form-control" name="image" style="display:block;" type="file">
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-12 col-md-3">
                <label class="control-label" for="title">Tiêu đề:</label>
            </div>
            <div class="col-xs-12 col-md-6">
                
                <input id="post_title" class="form-control" name="title" maxlength="150" value="" type="text">
            </div>
        </div>
        <div class="form-group row">
           
            <div class="col-xs-12 col-md-3">
                <label class="control-label" for="tag">Tags<span>(không bắt buộc)</span></label>
            </div>
            <div class="col-xs-12 col-md-6">
                <input id="photo_tag_input" type="text" class="form-control" name="tags" value="" placeholder="tag 1, tag 2, tag 3, tag 4, tag 5">
                <!-- <p class="info" style="visibility: hidden;">Dùng dấu phẩy ',' để ngăn cách tag. Ví dụ: trẻ trâu, troll, độc thân.</p> -->
            </div>
        </div>


        <div class="form-group row">
            <div class="col-xs-12 col-md-3">

                <label class="control-label" for="source">Nguồn<span>(không bắt buộc)</span>:</label>
            </div>
            <div class="col-xs-12 col-md-6">
                <input class="form-control" name="source" value="" maxlength="300" type="text">
            </div>
        </div>
        <div class="form-group row text-center">
            <div class="col-xs-12 col-md-12">
                <input id="" type="checkbox" style="display:inline; margin-right:5px; position:relative; top:2px" name="sensitive_content" value="1">Nội dung nhạy cảm (Chứa hình ảnh sexy, bikini, đánh nhau, bạo lực, ghê rợn, vi phạm bản quyền)                       </label>
            </div>
             <div class="col-xs-12 col-md-12">
                <p style="color:red;font-size: 16px;font-weight: bold;">Bài viết chứa nội dung nhạy cảm sẽ bị xóa nếu bạn KHÔNG đánh dấu</p>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-12 col-md-12 text-center">
                <button type="submit" class="btn btn-default">Huy</button>
                <button type="submit" class="btn btn-default">Dang Anh</button>
            </div>
        </div>
    </form>
</div>
@stop