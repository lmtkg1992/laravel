<?php

class HomeController extends BaseController {


	public function index($page = 1){	

           
            $itemPerPage = 2;

		$videos = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*', 'v.id AS video_id'))
            ->skip(($page - 1) * $itemPerPage)
            ->take($itemPerPage)
            ->orderBy('video_id', 'DESC')
            ->get();


		$photos = DB::table('photos AS p')
            ->join('users AS u', 'p.user_id', '=', 'u.id')          
            ->join('files AS f', 'f.parent_id', '=', 'p.id')          
            
            ->select(array('*', 'p.id AS photo_id'))
            ->skip(($page- 1) * $itemPerPage)
            ->take($itemPerPage)
            ->orderBy('p.id', 'DESC')
            ->get();

            foreach ($photos as $key => &$value) {
               
                  $value->time_interval = calculate_time_period($value->creation_date);
            }
            foreach ($videos as $key => &$value) {
               
                  $value->time_interval = calculate_time_period($value->creation_date);
            }
            

	 	return View::make("pages.home")
	 		->with('videos', $videos)
	 		->with('photos', $photos)
                  ->with('page', $page);
	 		;
		  
	}
     
}
