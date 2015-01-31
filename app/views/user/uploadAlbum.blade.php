
@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/') ?>

<div class="content form_photo  col-md-12">
    <form  enctype="multipart/form-data" method="post">
        <input name="type" value="Photo" type="hidden">
        <input id="post_type" name="post_type" value="Photo" type="hidden">
        <h3>Đăng ảnh</h3>

        <div class="form-group row">
            <div class="col-xs-12 col-md-3">
                
                File ảnh                            
            </div>
            <div class="col-xs-12 col-md-6">
                
                <input id="photo_file_upload" class="form-control" name="image" style="display:block;" type="file">
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-12 col-md-3">
                
                Tiêu đề
            </div>
            <div class="col-xs-12 col-md-6">
                
                <input id="post_title" class="form-control" name="title" maxlength="150" value="" type="text">
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-12 col-md-3">
                Nguồn<span>(không bắt buộc)</span>
            </div>
            <div class="col-xs-12 col-md-6">
                <input class="form-control" name="source" value="" maxlength="300" type="text">
            </div>
        </div>
        <div class="form-group row text-center">
            <div class="col-xs-12 col-md-12">
                <input id="" type="checkbox" style="display:inline; margin-right:5px; position:relative; top:2px" name="nsfw" value="1">Nội dung nhạy cảm (Chứa hình ảnh sexy, bikini, đánh nhau, bạo lực, ghê rợn, vi phạm bản quyền)                       </label>
            </div>
             <div class="col-xs-12 col-md-12">
                <p style="color:red;font-size: 16px;font-weight: bold;">Bài viết chứa nội dung nhạy cảm sẽ bị xóa nếu bạn KHÔNG đánh dấu</p>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-12 col-md-12 text-right">
                <button type="submit" class="btn btn-default">Dang anh</button>
                <button type="submit" class="btn btn-default">Huy</button>
            </div>
        </div>
    </form>
</div>
@stop