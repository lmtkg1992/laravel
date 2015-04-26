@extends('layouts.default')

@section('content')

    <?php $base_url = URL::to('/'); ?>

    <div id="entries-content" class="list">
        <ul id="entries-content-ul" class="col-1"> 

        <?php

        foreach ($videos as $video) {
        ?>
            @include('pages.elements.video-vote')
        
        <?php }?> 
       
            
        </ul>
    </div>
    <div id="paging-buttons" class="paging-buttons">
        <a href="#" onclick="return false;" class="previous disabled" <?php if ($page ==1) echo 'style="opacity:0.1"' ?>>« Trang trước</a>
        <a href="<?php echo $base_url . '/home/'.($page + 1)?>" class="older">Trang sau »</a>
    </div>
<script type="text/javascript">
    jQuery( document ).ready( function( $ ) {
        $('.vote-video').on( 'click', function() {
            $.post(
                "voteAjax",
                {
                    "setting_value": '123'
                },
                function( data ) {
                    //do something with data/response returned by server
                },
                'json'
            );
        });
    });
</script>  
@stop


