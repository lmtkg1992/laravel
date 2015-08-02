
<?php $base_url = URL::to('/'); 
if(isset($photos)){
?>
<div style="position: static;" id="moving-boxes">

    <div class="s-300">
        <h3 class="image-box">Ảnh mới</h3>
    <?php 
  
    foreach ($photos as $photo) { ?>
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
                                <span title="Lượt xem" class="views"><?php echo $photo->photo_view_count?></span>
                                <span title="Lượt bình luận" class="comments"><?php echo $photo->photo_comment_count?></span>
                               
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
    <?php }?>
    </div>                                
</div>

<?php }?>


