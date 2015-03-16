
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>

<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js" type="text/javascript" charset="utf-8"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/tag-it.js" type="text/javascript" charset="utf-8"></script>

<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css">
<link href="css/jquery.tagit.css" rel="stylesheet" type="text/css">

<style type="text/css">
   

</style>
<div class="head col-xs-12 col-sm-12 col-md-12">
<ul class="switch">
        <li class="tab_photo "><a class="photo" href="<?php echo $base_url?>/upload-photo">Ảnh</a></li>
        <li class="tab_video current"><a class="video" href="<?php echo $base_url?>/upload-video">Video</a></li>
    </ul>
</div>


<div class="content form_photo col-xs-12 col-sm-12 col-md-12">
    <form  enctype="multipart/form-data" method="post" class="form-horizontal" action="<?php echo $base_url?>/submit-photo">
        <input name="type" value="Photo" type="hidden">
        <input id="post_type" name="post_type" value="Photo" type="hidden">
        <h3>Đăng ảnh</h3>

        <div class="form-group row">
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="image">File ảnh:</label>
            </div>
            <div class="col-xs-12 col-md-6">
                
                <input id="photo_file_upload" class="form-control" name="image" style="display:block;" type="file">
                <p class="error">{{ $errors->first('image') }}</p>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="title">Tiêu đề:</label>
            </div>
            <div class="col-xs-12 col-md-6">
                
                <input id="post_title" class="form-control" name="title" maxlength="150" value="" type="text">
                <p class="error">{{ $errors->first('title') }}</p>
            </div>
        </div>
        <div class="form-group row">
           
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="tag">Tags<span>(không bắt buộc)</span></label>
            </div>
            <div class="col-xs-12 col-md-8">
           
                <!-- <input type="text" class="form-control" name="tags" id="tags" value="" placeholder="" /> -->

                <ul id="tags"></ul>

                <p class="error">{{ $errors->first('tags') }}</p>
            </div>
        </div>


        <div class="form-group row">
            <div class="col-xs-12 col-md-4">

                <label class="control-label" for="source">Nguồn<span>(không bắt buộc)</span>:</label>
            </div>
            <div class="col-xs-12 col-md-6">
                <input class="form-control" name="source" value="" maxlength="300" type="text">
                <p class="error">{{ $errors->first('source') }}</p>
            </div>
        </div>
        <div class="form-group row text-center">
            <div class="col-xs-12 col-md-12 sensitive_content">

                <input id="sensitive_content" type="checkbox" style="display:inline; margin-right:5px; position:relative; top:2px" name="sensitive_content" value="1">
                <p for="sensitive_content">Nội dung nhạy cảm (Chứa hình ảnh sexy, bikini, đánh nhau, bạo lực, ghê rợn, vi phạm bản quyền)  </p>
                             
            </div>
             <div class="col-xs-12 col-md-12">
                <p style="color:red;font-size: 16px;font-weight: bold;">Bài viết chứa nội dung nhạy cảm sẽ bị xóa nếu bạn KHÔNG đánh dấu</p>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-12 col-md-12 text-center">
                <button type="submit" class="btn btn-default">Huy</button>
                <button type="submit" class="btn btn-primary">Dang Anh</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $("#tags").tagit({
          allowSpaces: true,

        });
    });
</script>


@stop