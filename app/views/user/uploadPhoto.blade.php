
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/')?>

<% HTML::script('js/angular.min.js') %>

<% HTML::script('js/user/upload/app.js') %>

<% HTML::script('js/abcv.php.js') %>

<% HTML::script('https://cdnjs.cloudflare.com/ajax/libs/ng-tags-input/3.0.0/ng-tags-input.js') %>

<% HTML::style('https://cdnjs.cloudflare.com/ajax/libs/ng-tags-input/3.0.0/ng-tags-input.css') %>


@include('pages.elements.switchPhotoVideo')

<div class="content form_photo col-xs-12 col-sm-12 col-md-12" ng-app="uploadPhotoApp">

    <div ng-controller="uploadPhotoCtrl">
   
        <form id="uploadPhotoForm" name="uploadPhotoForm" enctype="multipart/form-data" method="post" class="form-horizontal" novalidate="novalidate">
           
            <!-- <input name="type" value="Photo" type="hidden"> -->
            <!-- <input id="post_type" name="post_type" value="Photo" type="hidden"> -->
            <h3>Đăng ảnh</h3>

            <div class="form-group row">
                <div class="col-xs-12 col-md-4">
                    <label class="control-label" for="file">File ảnh:</label>
                </div>
                <div class="col-xs-12 col-md-6">

                    <input file-model="file" type="file" required/>
                    
                    <!-- <span style="font-size:10px">Định dạng cho phép là JPEG, GIF hoặc PNG.</span> -->

                    <!-- <div class="error" ng-show="uploadPhotoForm.title.$dirty && uploadPhotoForm.title.$invalid">
                        <small class="error" ng-show="uploadPhotoForm.title.$error.required">
                            Bạn cần nhập tiêu đề
                        </small> 
                        <small class="error" ng-show="uploadPhotoForm.title.$error.minlength">
                            Bạn cần nhập tối thiểu 10 ký tự
                        </small>
                      
                    </div> -->
                    
                </div>
            </div>

            <div class="form-group row">
                <div class="col-xs-12 col-md-4">
                    <label class="control-label" for="title">Tiêu đề:</label>
                </div>
                <div class="col-xs-12 col-md-8">

                    <input id="title" ng-model="title" class="form-control" name="title" required autocomplete="off" ng-minlength="10" maxlength="150" type="text"  />

                    <div class="error" ng-show="uploadPhotoForm.title.$dirty && uploadPhotoForm.title.$invalid">
                        <small class="error" ng-show="uploadPhotoForm.title.$error.required">
                            Bạn cần nhập tiêu đề
                        </small> 
                        <small class="error" ng-show="uploadPhotoForm.title.$error.minlength">
                            Bạn cần nhập tối thiểu 10 ký tự
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

                    
                </div>
            </div>


            <div class="form-group row">
                <div class="col-xs-12 col-md-4">

                    <label class="control-label" for="source">Nguồn <span>(không bắt buộc)</span>:</label>
                </div>
                <div class="col-xs-12 col-md-8">
                    <input class="form-control" ng-model="source" id="source" name="source" value="" maxlength="300" type="text">
                    
                </div>
            </div>
            <div class="form-group row text-center">
                <div class="col-xs-12 col-md-12 sensitive_content">

                    <input id="sensitive_content" type="checkbox" ng-model="sensitive_content" name="sensitive_content" value="1">
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


    window.upload_url = '<?php echo Request::url()?>';
    if (upload_url.search('user/upload-photo') !== -1){
        $('ul.switch .tab_photo .arrow-up').show();
        $('ul.switch .tab_video .arrow-up').hide();
    }
    window.base_url = '<?php echo $base_url ?>';
   
</script>


@stop

@section('sidebar_content')

@include('includes.video_photo_upload_rules')

@stop
