<?php

class VideoController extends BaseController {


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
