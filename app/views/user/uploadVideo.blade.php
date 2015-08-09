
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>

<% HTML::script('js/angular.min.js') %>

<% HTML::script('js/user/upload/app.js') %>

<% HTML::script('js/abcv.php.js') %>


<% HTML::script('https://cdnjs.cloudflare.com/ajax/libs/ng-tags-input/3.0.0/ng-tags-input.js') %>

<% HTML::style('https://cdnjs.cloudflare.com/ajax/libs/ng-tags-input/3.0.0/ng-tags-input.css') %>

@include('pages.elements.switchPhotoVideo')

<div class="content form_video col-xs-12 col-sm-12 col-md-12" ng-app="uploadVideoApp">
  <div ng-controller="uploadVideoCtrl">

    <form id="uploadVideoForm" name="uploadVideoForm" enctype="multipart/form-data" method="post" class="form-horizontal" novalidate="novalidate">
        <input name="type" value="Video" type="hidden">
        <input id="post_type" name="post_type" value="Video" type="hidden">
        <h3>Đăng Video</h3>

        <div class="form-group row">
           
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="title">Đường dẫn Youtube:</label>
            </div>
            <div class="col-xs-12 col-md-8">
                
           
                <input id="video_post_url" type="text" class="form-control" required ng-model="url" name="url" value="">

                <div class="error" ng-show="uploadVideoForm.url.$dirty && uploadVideoForm.url.$invalid">
                    <small class="error" ng-show="uploadVideoForm.url.$error.required">
                        Bạn cần nhập link Youtube
                    </small> 
                   
                  
                </div>
               
            </div>
          
        </div>

        <div class="form-group row">
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="title">Tiêu đề:</label>
            </div>
            <div class="col-xs-12 col-md-8">
                
                <input id="post_title" class="form-control" name="title" ng-model="title" required ng-minlength="10" maxlength="150" value="" type="text">

                <div class="error" ng-show="uploadVideoForm.title.$dirty && uploadVideoForm.title.$invalid">
                    <small class="error" ng-show="uploadVideoForm.title.$error.required">
                        Bạn cần nhập tiêu đề
                    </small> 
                    <small class="error" ng-show="uploadVideoForm.title.$error.minlength">
                        Bạn cần nhập tối thiểu 10 ký tự
                    </small>
                  
                </div>
            </div>
        </div>
        <div class="form-group row">
           
            <div class="col-xs-12 col-md-4">
                <label class="control-label" for="tag">Tags<span>(không bắt buộc):</span></label>
            </div>
            <div class="col-xs-12 col-md-8">
                <tags-input ng-model="tags"></tags-input>
               
            </div>
        </div>


        <div class="form-group row">
            <div class="col-xs-12 col-md-4">

                <label class="control-label" for="source">Nguồn<span>(không bắt buộc):</span></label>
            </div>
            <div class="col-xs-12 col-md-8">
                <input class="form-control" name="source" value="" maxlength="300" type="text">
               
            </div>
        </div>
        <div class="form-group row text-center">
            <div class="col-xs-12 col-md-12 sensitive_content">

                <input id="sensitive_content" type="checkbox" name="sensitive_content" value="1">
                <p for="sensitive_content">Nội dung nhạy cảm (Chứa hình ảnh sexy, bikini, đánh nhau, bạo lực, ghê rợn, vi phạm bản quyền)  </p>
                             
            </div>
             <div class="col-xs-12 col-md-12">
                <p style="color:red;font-size: 16px;font-weight: bold;">Bài viết chứa nội dung nhạy cảm sẽ bị xóa nếu bạn KHÔNG đánh dấu</p>
            </div>
        </div>

       <div class="form-group">
            <div class="col-xs-12 col-md-12 text-center">
                <button type="submit" class="btn btn-default" style="margin-right:20px">Quay Lại</button>
                <button ng-click="uploadVideo()" class="btn btn-primary">Đăng Video</button>
            </div>
        </div>
    </form>
    </div>
</div>
<script type="text/javascript">
    var upload_url = '<?php echo Request::url()?>';
    if (upload_url.search('upload-video') !== -1){
        $('ul.switch .tab_video .arrow-up').show();
        $('ul.switch .tab_photo .arrow-up').hide();
    }
    
    window.base_url = '<?php echo $base_url ?>';
</script>
@stop

@section('sidebar_content')

@include('includes.video_photo_upload_rules')

@stop