<?php

class PhotoController extends BaseController {

	
	public function index($page = 1){	


	 	$itemPerPage = 10;

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

        return View::make("pages.photo")
 		// ->with('videos', $videos)
 		->with('photos', $photos)
              ->with('page', $page);
 		;

		
	}
	

	
}
