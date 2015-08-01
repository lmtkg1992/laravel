<?php

class VideoController extends BaseController {

	



	public function index($id){	


		$video = DB::table('videos AS v')
	            ->join('users AS u', 'v.user_id', '=', 'u.id')          
	            ->where('v.id', $id)
	            ->select(array('*', 'v.id AS video_id', 'v.creation_date AS video_creation_date'))
	            ->first();



        $previous =  DB::table('videos')
	            ->where('id', '<', $id)
	            ->orderBy('id', 'desc')
	            ->select('id')
	            ->first();

      	$next =  DB::table('videos')
	            ->where('id', '>', $id)
	            ->orderBy('id', 'desc')
	            ->select('id')
	            ->first(); 

               
      	$video->time_interval = calculate_time_period($video->video_creation_date);
      	$video->video_view_count = show_view_count($video->video_view_count);
      	$video->view_count = show_view_count($video->view_count);

		return View::make('pages.video.detail')
		->with('video', $video)
		->with('previous', $previous ? $previous->id : null)
		->with('next', $next ? $next->id : null)
		;
		
	}

	
}
