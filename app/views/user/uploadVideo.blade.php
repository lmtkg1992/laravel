
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>


<div class="head">
<ul class="switch">
        <li class="tab_photo "><a class="photo" href="<?php echo $base_url?>/upload-photo">Ảnh</a></li>
        <li class="tab_video current"><a class="video" href="<?php echo $base_url?>/upload-video">Video</a></li>
    </ul>
</div>


<div class="content form_photo  col-md-12">
    <form  enctype="multipart/form-data" method="post" class="form-horizontal" action="<?php echo $base_url?>/submit-video">
        <input name="type" value="Photo" type="hidden">
        <input id="post_type" name="post_type" value="Photo" type="hidden">
        <h3>Đăng Video</h3>

        <div class="form-group row">
            <!-- <label> -->
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="title">Đường dẫn Youtube:</label>
            </div>
            <div class="col-xs-12 col-md-6">
                
           
                <input id="photo_post_url" type="text" class="form-control" name="url" value="" style="display:block;">
                <p class="error">{{ $errors->first('url') }}</p>
               
            </div>
          
        </div>

        <div class="form-group row">
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="title">Tiêu đề:</label>
            </div>
            <div class="col-xs-12 col-md-6">
                
                <input id="post_title" class="form-control" name="title" maxlength="150" value="" type="text">
                <p class="error">{{ $errors->first('url') }}</p>
            </div>
        </div>
        <div class="form-group row">
           
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="tag">Tags<span>(không bắt buộc)</span></label>
            </div>
            <div class="col-xs-12 col-md-6">
                <input id="photo_tag_input" type="text" class="form-control" name="tags" value="" placeholder="tag 1, tag 2, tag 3, tag 4, tag 5">
            </div>
        </div>


        <div class="form-group row">
            <div class="col-xs-12 col-md-4">

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
                <button type="submit" class="btn btn-primary">Dang Video</button>
            </div>
        </div>
    </form>
</div>
@stop