
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>


 @include('pages.elements.switchPhotoVideo')

<div class="content form_video  col-md-12">
    <form  enctype="multipart/form-data" method="post" class="form-horizontal" action="<?php echo $base_url?>/submit-video">
        <input name="type" value="Video" type="hidden">
        <input id="post_type" name="post_type" value="Video" type="hidden">
        <h3>Đăng Video</h3>

        <div class="form-group row">
            <!-- <label> -->
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="title">Đường dẫn Youtube:</label>
            </div>
            <div class="col-xs-12 col-md-8">
                
           
                <input id="video_post_url" type="text" class="form-control" name="url" value="" style="display:block;">
                <p class="error">{{ $errors->first('url') }}</p>
               
            </div>
          
        </div>

        <div class="form-group row">
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="title">Tiêu đề:</label>
            </div>
            <div class="col-xs-12 col-md-8">
                
                <input id="post_title" class="form-control" name="title" maxlength="150" value="" type="text">
                <p class="error">{{ $errors->first('title') }}</p>
            </div>
        </div>
        <div class="form-group row">
           
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="tag">Tags<span>(không bắt buộc):</span></label>
            </div>
            <div class="col-xs-12 col-md-8">
                <ul id="tags"></ul>
                <p class="error">{{ $errors->first('tags') }}</p>
            </div>
        </div>


        <div class="form-group row">
            <div class="col-xs-12 col-md-4">

                <label class="control-label" for="source">Nguồn<span>(không bắt buộc):</span></label>
            </div>
            <div class="col-xs-12 col-md-8">
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
                <button type="submit" class="btn btn-default">Quay Lại</button>
                <button type="submit" class="btn btn-primary">Đăng Video</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    var upload_url = '<?php echo Request::url()?>';
    if (upload_url.search('upload-video') !== -1){
        $('ul.switch .tab_video .arrow-up').show();
        $('ul.switch .tab_photo .arrow-up').hide();
    }
    $(document).ready(function() {
        $("#tags").tagit({
          allowSpaces: true,

        });
    });
</script>
@stop