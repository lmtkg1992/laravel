@extends('layouts.default')

@section('content')

    <?php $base_url = URL::to('/'); ?>

    <div id="items-content" class="list">
        <ul id="items-content-ul" class="col-1"> 

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
        $('.vote-action-video').on( 'click', function() {
            vid = $(this).attr('data-video-id');
            vvote = $(this).attr('data-value');
            $.post(
                "voteAjax",
                {
                    "vid":vid ,
                    "vvote":vvote ,
                },
                function(data) {
                    //do something with data/response returned by server
                    if(data.error == false){
                        $('ul.vote-'+vid+' li').removeClass('highlight-vote');
                        if(data.result == 1){
                            $('ul.actions li.vote-up-'+vid).addClass('highlight-vote');
                        }
                        else
                        if(data.result == -1){
                            $('ul.actions li.vote-down-'+vid).addClass('highlight-vote');
                        }
                    }
                },
                'json'
            );
        });
    });
</script>  
@stop


