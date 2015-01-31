<?php

class HomeController extends BaseController {


	public function index(){	


		$data = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*', 'v.id AS video_id'))
            ->skip(0)
            ->take(2)
            ->get();

            // ->toSqL();
            // dd(DB::getQueryLog());
            // die('ss');

        	$myfile = fopen("text.txt", "a") or die("Unable to open file!");

			fwrite($myfile, print_r($data, true));
			fclose($myfile);


		 return View::make("pages.home", array('data' => $data));
		  
	}
	
	

}
