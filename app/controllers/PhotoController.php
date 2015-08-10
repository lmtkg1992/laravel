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

	public function detail($id){	


		
		$photo = Photo::getPhoto($id);

		$previous = Photo::getPreviousPhoto($id);
		$next = Photo::getNextPhoto($id);
        
		return View::make('pages.photo.detail')
		->with('photo', $photo)
		->with('previous', $previous ? $previous->id : null)
		->with('next', $next ? $next->id : null)
		;
		
	}
	

	
}
