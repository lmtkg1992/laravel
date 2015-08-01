<?php

class HomeController extends BaseController {


	public function index($page = 1){	

           
           // var_dump(Config::get('app.timezone'));
           // die('wtf');

            $itemPerPage = 5;

		$videos = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*', 'v.id AS video_id', 'v.creation_date AS video_creation_date'))
            ->skip(($page - 1) * $itemPerPage)
            ->take($itemPerPage)
            ->orderBy('video_id', 'DESC')
            ->get();


            foreach ($videos as $key => &$value) {
               
                  $value->time_interval = calculate_time_period($value->video_creation_date);
            }

            /*echo '<pre>';            
            print_r($videos);
            die;*/

	 	return View::make("pages.home")
	 		->with('videos', $videos)
	 		// ->with('photos', $photos)
                  ->with('page', $page);
	 		;
		  
	}
     
}
