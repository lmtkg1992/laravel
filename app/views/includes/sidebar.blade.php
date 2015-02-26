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
.photoListItemSmall .thumbnail {
    float: left;
    max-height: 80px;
    text-align: center;
    width: 100px;
}
.photoListItemSmall .thumbnail img {
    max-height: 75px;
    width: 100px;
}
.photoListItemSmall .info {
    margin-left: 105px;
    float: right;
    width: 111px;
    margin-left: 0;
    font-size: 14px;

}
.photoListItemSmall h3 {
    font-size: 14px;
    margin-top: 0;
    margin-bottom: 5px;
}
.photoListItemSmall:hover h3 {
    color: #0087F7;

}
</style>
<?php $base_url = URL::to('/'); ?>
<div style="position: static;" id="moving-boxes">

    <div class="s-300">
        <h3 class="image-box">Ảnh mới</h3>
    <?php 
    if(isset($sidebar))
    foreach ($sidebar as $photo) { ?>
        <div class="box darkBox randomBox">
            <div>                   
                <div class="photoListItemSmall">
                    <a target="_blank">
                        <div class="thumbnail">
                            
                            <img style="float:left" src="<?php echo $base_url . '/'.$photo->storage_path?>" alt="<?php echo $photo->title?>"/>
                        </div>
                    
                        <div class="info" style="float:right; margin-left:0" >
                            <h3>
                                <?php echo $photo->title?>
                            </h3>
                            <div class="stats">
                                <span title="Lượt xem" class="views"><?php echo $photo->view_count?></span>
                                <span title="Lượt bình luận" class="comments"><?php echo $photo->comment_count?></span>
                               
                            </div>
                            <div class="user">
                                <span class="user-by">bởi</span> <span class="name"><?php echo $photo->displayname?></span>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </a>
                </div>
                         
            </div>
        </div>

       
    <!-- </div> -->
    <?php }?>
    </div>                                
    <!-- <div class="s-300"></div> -->
</div>


