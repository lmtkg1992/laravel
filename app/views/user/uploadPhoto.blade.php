
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/')?>

{{ HTML::script('js/angular.min.js') }}

{{ HTML::script('js/user/app.js') }}

{{ HTML::script('https://cdnjs.cloudflare.com/ajax/libs/ng-tags-input/3.0.0/ng-tags-input.js') }}

{{ HTML::style('https://cdnjs.cloudflare.com/ajax/libs/ng-tags-input/3.0.0/ng-tags-input.css') }}


@include('pages.elements.switchPhotoVideo')

<div class="content form_photo col-xs-12 col-sm-12 col-md-12" ng-app="uploadPhotoApp">

    <div ng-controller="uploadPhotoCtrl">
   
        <form id="uploadPhotoForm" name="uploadPhotoForm" enctype="multipart/form-data" method="post" class="form-horizontal">

            <input name="type" value="Photo" type="hidden">
            <input id="post_type" name="post_type" value="Photo" type="hidden">
            <h3>Đăng ảnh</h3>

            <div class="form-group row">
                <div class="col-xs-12 col-md-4">
                    <label class="control-label" for="image">File ảnh:</label>
                </div>
                <div class="col-xs-12 col-md-6">

                    <input id="image" name="image" style="display:block;" type="file">
                    
                    <span style="font-size:10px">Định dạng cho phép là JPEG, GIF hoặc PNG.</span>
                    <p class="error">{{ $errors->first('image') }}</p>
                </div>
            </div>

            <div class="form-group row">
                <div class="col-xs-12 col-md-4">
                    <label class="control-label" for="title">Tiêu đề:</label>
                </div>
                <div class="col-xs-12 col-md-8">

                    <input id="title" class="form-control" name="title" maxlength="150" value="" type="text">

                    <div class="error" ng-show="uploadPhotoForm.title.$dirty && uploadPhotoForm.title.$invalid">
                        <small class="error" ng-show="uploadPhotoForm.title.$error.required">
                            Bạn cần nhập title
                        </small>
                      
                    </div>
                  
                </div>
            </div>
            <div class="form-group row">

                <div class="col-xs-12 col-md-4">
                    <label class="control-label" for="tag">Tags <span>(không bắt buộc):</span></label>
                </div>
                <div class="col-xs-12 col-md-8">
                  
                    <tags-input ng-model="tags"></tags-input>

                    <!-- <p class="error">{{ $errors->first('tags') }}</p> -->
                </div>
            </div>


            <div class="form-group row">
                <div class="col-xs-12 col-md-4">

                    <label class="control-label" for="source">Nguồn <span>(không bắt buộc)</span>:</label>
                </div>
                <div class="col-xs-12 col-md-8">
                    <input class="form-control" name="source" value="" maxlength="300" type="text">
                    
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
                    <button type="submit" class="btn btn-default" style="margin-right:20px">Quay Lại</button>
                    <button ng-click="uploadPhoto()" class="btn btn-primary">Đăng Ảnh</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">


    var upload_url = '<?php echo Request::url()?>';
    if (upload_url.search('user/upload-photo') !== -1){
        $('ul.switch .tab_photo .arrow-up').show();
        $('ul.switch .tab_video .arrow-up').hide();
    }
   
</script>


@stop

@section('sidebar_content')

@include('includes.video_photo_upload_rules')

@stop
