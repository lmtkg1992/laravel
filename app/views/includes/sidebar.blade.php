<style type="text/css">
    
.side-bar {
    float: left;
    font-size: 12px;
    margin-left: 20px;
    margin-top: 10px;
    overflow: hidden;
    width: 300px;
}
.side-bar .s-300 {
    margin-bottom: 5px;
    width: 300px;
}
.image-box, .video-box {
    border-bottom: 1px solid #0087F7;
    padding-bottom: 5px;
    font-size: 18px;
    margin: 0px 0px 10px;
}
</style>

<div style="position: static;" id="moving-boxes">
    <?php foreach ($sidebar as $item) { ?>
    <div class="s-300">
        <h3 class="image-box">Ảnh mới</h3>
        <div class="box darkBox randomBox">
            <div>                   
                <div class="photoListItemSmall">
                    <a target="_blank" href="http://thichvl.net/v/176133?ref=chatvl">
                        <div class="img-wrap">
                       
                             <iframe width="200" height="200" src="//www.youtube.com/embed/<?php echo $item->youtube_id;?>" frameborder="0" allowfullscreen></iframe>
                        </div>
                        <div class="watermark-clear"></div> 
                        <div class="info">
                            <h3>
                                <?php echo $item->title?>
                            </h3>
                            <div class="stats">
                                <span title="Lượt xem" class="views">200</span>
                                <span title="lượt bình luận" class="comments">0</span>
                                <span title="lượt thích" class="likes">3</span>
                            </div>
                            <div class="user">
                                <span class="user-by">bởi</span> <span class="name">Beck Già</span>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </a>
                </div>
                         
            </div>
        </div>

       
    </div>
    <?php }?>
                                    
    <!-- <div class="s-300"></div> -->
</div>


