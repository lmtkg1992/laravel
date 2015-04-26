@extends('layouts.default')

@section('content')

    <?php $base_url = URL::to('/'); ?>

    <div id="items-content" class="list">
        <ul id="items-content-ul" class="col-1"> 

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


