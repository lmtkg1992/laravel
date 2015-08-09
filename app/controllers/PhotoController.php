<?php

class PhotoController extends BaseController {

	
	public function detail($page = 1){	


	 	$itemPerPage = 10;
        $photos = Photo::getPhotos(5, $page);
		

        return View::make("pages.photo")
            ->with('photos', $photos)
            ->with('page', $page);
 		;

		
	}
	

	
}
