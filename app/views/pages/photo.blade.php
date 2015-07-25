@extends('layouts.default')

@section('content')

    <?php $base_url = URL::to('/'); ?>

    <div id="photo-content" class="list">
        <ul id="photo-content-ul"> 

        <?php

        foreach ($photos as $photo) {
        ?>
            @include('pages.elements.photo')
        
        <?php }?> 
       
            
        </ul>
    </div>
    <div id="paging-buttons" class="paging-buttons">
        <a href="#" onclick="return false;" class="previous disabled" <?php if ($page ==1) echo 'style="opacity:0.1"' ?>>« Trang trước</a>
        <a href="<?php echo $base_url . '/home/'.($page + 1)?>" class="older">Trang sau »</a>
    </div>
  
@stop


