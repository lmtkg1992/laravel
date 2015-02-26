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

    <script type="text/javascript">
    window.home_page = 1;     
    function last_msg_funtion() 
    {
       

        window.home_page =  parseInt(window.home_page) + 1;
       
      

        $.ajax({
            url: '<?php echo $base_url?>/home/get_page',
            // type:"POST",
            data: { 
               home_page: window.home_page
            },
            dataType    : 'html',
            async:false,
            
            success:function(data){ 

                console.log(data);
                // var html = '';
                // for(var idx in data.videos){

                    // html += '<li class="gag-link" gagid="" itemtype="list">';
                    // html += data.videos[idx].title;

                    
                    // html +='</li>';
                    
                // } 
                // for(var idx in data.photos){

                    // html += '<li>'+data.photos[idx].title+'</li>';
                    
                // }
                // $('#entries-content-ul').append(html);
            }
        });
    }

    $(window).scroll(function(){    

        if ($(window).scrollTop() >= $(document).height() - $(window).height() - 300){
          
          last_msg_funtion();

        }

    });

    </script>
       
@stop


