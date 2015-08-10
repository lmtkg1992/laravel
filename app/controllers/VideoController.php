<?php

class VideoController extends BaseController {

	public function index($page = 1){	

         
	    $itemPerPage = 5;
	    $videos = Video::getVideos(5, $page);
			     
	    return View::make("pages.videos")
		 		->with('videos', $videos)
	      ->with('page', $page);
		 		;
		  
	}
     
	public function detail($id){	


		
		$video = Video::getVideo($id);

		$previous = Video::getPreviousVideo($id);
		$next = Video::getNextVideo($id);
        
		return View::make('pages.video.detail')
		->with('video', $video)
		->with('previous', $previous ? $previous->id : null)
		->with('next', $next ? $next->id : null)
		;
		
	}

	
}
