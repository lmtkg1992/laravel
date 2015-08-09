<?php

class HomeController extends BaseController {


	public function index($page = 1){	

         
    $itemPerPage = 5;
    $videos = Video::getVideos(5, $page);
		     
    return View::make("pages.home")
	 		->with('videos', $videos)
      ->with('page', $page);
	 		;
		  
	}
     
}
