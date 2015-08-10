<?php

class PhotoController extends BaseController {

	
	public function index($page = 1){	


	 	$itemPerPage = 10;
        $photos = Photo::getPhotos(5, $page);
		

        return View::make("pages.photos")
            ->with('photos', $photos)
            ->with('page', $page);
 		;

		
	}
	

	
}
