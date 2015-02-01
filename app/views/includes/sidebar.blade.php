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
<?php $base_url = URL::to('/'); ?>
<div style="position: static;" id="moving-boxes">
    <div class="s-300">
        <h3 class="image-box">Ảnh mới</h3>
    <?php foreach ($photos as $photo) { ?>
        <div class="box darkBox randomBox">
            <div>                   
                <div class="photoListItemSmall">
                    <a target="_blank">
                       
                        <img style="max-width:150px; max-height:150px; float:left" src="<?php echo $base_url . '/'.$photo->storage_path?>" alt="<?php echo $photo->title?>"/>
                    
                        <div class="info" style="float:right; margin-left:0" >
                            <h3>
                                <?php echo $photo->title?>
                            </h3>
                            <div class="stats">
                                <span title="Lượt xem" class="views">200</span>
                                <span title="lượt bình luận" class="comments">0</span>
                                <span title="lượt thích" class="likes">3</span>
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


