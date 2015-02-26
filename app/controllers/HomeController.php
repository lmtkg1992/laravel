<?php

class HomeController extends BaseController {


	public function index(){	

           

            $page = 1 - 1;

		$videos = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*', 'v.id AS video_id'))
            ->skip($page * 2)
            ->take(2)
            ->orderBy('video_id', 'DESC')
            ->get();


		$photos = DB::table('photos AS p')
            ->join('users AS u', 'p.user_id', '=', 'u.id')          
            ->join('files AS f', 'f.parent_id', '=', 'p.id')          
            
            ->select(array('*', 'p.id AS photo_id'))
            ->skip($page * 2)
            ->take(2)
            ->orderBy('p.id', 'DESC')
            ->get();

            foreach ($photos as $key => &$value) {
               
                  $value->wtf = calculate_time_period($value->creation_date);
            }
            // echo '<pre>';
            // var_dump($photos);
            // die('ss');

	 	return View::make("pages.home")
	 		->with('videos', $videos)
	 		->with ('photos', $photos)
	 		;
		  
	}
      public function get_page(){

            $page = Input::get('home_page') - 1;

            $videos = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*', 'v.id AS video_id'))
            ->skip($page * 2)
            ->take(2)
            ->orderBy('video_id', 'DESC')
            ->get();


            $photos = DB::table('photos AS p')
            ->join('users AS u', 'p.user_id', '=', 'u.id')          
            ->join('files AS f', 'f.parent_id', '=', 'p.id')          
            
            ->select(array('*', 'p.id AS photo_id'))
            ->skip($page * 2)
            ->take(2)
            ->orderBy('p.id', 'DESC')
            ->get();

            $video_html = '';

            foreach ($videos as $video) {
        
                  $video_html += View::make("pages.elements.video", array('video', $video));
            }

            return $video_html;      
            // return json_encode(array('videos'=>$videos, 'photos'=>$photos));

      }
     
	
	

}
