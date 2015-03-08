<?php

class VideoController extends BaseController {

	



	public function index($id){	


		$data = DB::table('videos AS v')
	            ->join('users AS u', 'v.user_id', '=', 'u.id')          
	            ->where('v.id', $id)
	            ->select(array('*', 'v.id AS video_id'))
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


		return View::make('pages.video.detail')
		->with('data', $data)
		->with('previous', $previous ? $previous->id : null)
		->with('next', $next ? $next->id : null)
		;
		
	}

	
}
