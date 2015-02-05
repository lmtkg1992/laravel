<?php

class HomeController extends BaseController {


	public function index(){	


		$videos = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*', 'v.id AS video_id'))
            // ->skip(0)
            // ->take(2)
            ->orderBy('video_id', 'DESC')
            ->get();


		$photos = DB::table('photos AS p')
            ->join('users AS u', 'p.user_id', '=', 'u.id')          
            ->join('files AS f', 'f.parent_id', '=', 'p.id')          
            
            ->select(array('*', 'p.id AS photo_id'))
            // ->skip(0)
            // ->take(2)
            ->orderBy('p.id', 'DESC')
            ->get();

	 	return View::make("pages.home")
	 		->with('videos', $videos)
	 		->with ('photos', $photos)
	 		;
		  
	}
	
	

}
