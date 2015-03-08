@extends('layouts.default')

@section('content')

<?php $base_url = URL::to('/'); ?>

    <div id="entries-content" class="list">
        <ul id="entries-content-ul" class="col-1"> 

        <?php

        foreach ($videos as $video) {
        ?>
            @include('pages.elements.video')
        
        <?php }?> 
        <?php

        foreach ($photos as $photo) {
        ?>
    	   @include('pages.elements.photo')
        <?php }?>
            
        </ul>
    </div>
    <div id="paging-buttons" class="paging-buttons">
        <a href="#" onclick="return false;" class="previous disabled">« Trang trước</a>
        <a href="http://chatvl.com/hot/2" class="older">Trang sau »</a>
    </div>
  
@stop


