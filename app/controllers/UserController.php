<?php

class UserController extends BaseController 	
{
		
	public function index(){
		
		return View::make('user.list');
	
	}
	public function upload()
	{

		
	}
	public function login(){

	

		if (Auth::check()){
			return Redirect::to('/home');
		}else{
			
			return View::make('user.login');
		}
	}
	
	public function validate_login(){

		if (Auth::attempt(Input::only('email', 'password'))){

			return Redirect::to('/home');
		}
		return 'failed!';
	}

	public function logout()
	{
		Auth::logout();
		return Redirect::to('/login');
	}

	public function upload_photo()
	{
		if (Auth::user()){

			
			$autocomplete_tags = $this->autocomplete_tags();

			return View::make('user.uploadPhoto')
			->with('autocomplete_tags', $autocomplete_tags)
			;
		}else{
			return Redirect::to('/login');
		}
	}	
	public function autocomplete_tags(){
		$db_tags = DB::table('tags')->get();
			

		$autocomplete_tags = array();

		foreach ($db_tags as $value) {

			$autocomplete_tags[] = $value->name;
		}
		$autocomplete_tags = '["' . implode('","', $autocomplete_tags) . '"]';
		$autocomplete_tags = htmlspecialchars($autocomplete_tags);	

		return $autocomplete_tags;
	}

	public function submit_photo()
	{

		// var_dump(Input::get('tags'));
		// die('ss');

		App::setLocale('vi');

	 	$rules = array(
	        'image'         => 'required|mimes:jpeg,gif,png|max:2000',
	        'title'         => 'required|max:100|min:10',  
	        'tags' 			=> 'max:20',
	        'source' 		=> 'max:100|min:5'	                
	       
	    );
	   	$validator = Validator::make(Input::all(), $rules);

		// check if the validator failed -----------------------
		if ($validator->fails()) {

		    // get the error messages from the validator
		    $messages = $validator->messages();

		    // redirect our user back to the form with the errors from the validator
		    return Redirect::to('/upload-photo')->withErrors($validator);

		} 
		else {

			$destinationPath = 'uploads/photos';

			if (Input::hasfile('image') && Input::file('image')->isValid()){


				$upload_success = Input::file('image')->move($destinationPath, Input::file('image')->getclienToriginalName());
			}

			
			
			$photo =  array(
		                'title'         =>ucfirst(Input::get('title')),
		              
		                'creation_date' =>date("Y-m-d H:i:s"),
		                'modified_date' =>date("Y-m-d H:i:s"), 
		              
		                'user_id'       =>Auth::user()->id,
		                
		                'status'        => 1, 
		                'is_home'       => 0,
		                'view_count'    => '', 
		                'comment_count' => '',
		                'source' => Input::get('source'),
		                'sensitive_content' => Input::get('sensitive_content')
		    		);
			

			$photo_id = DB::table('photos')->insertGetId($photo);

		 	$file = array(
	        	
		        'parent_type'	=> 'photo', 
		        'parent_id'		=> $photo_id,
		        'user_id'		=> Auth::user()->id,
		        'creation_date'	=> date("Y-m-d H:i:s"),
		        'modified_date'	=> date("Y-m-d H:i:s"),
		       
		        'storage_path'	=> 'uploads/photos/'. Input::file('image')->getClientOriginalName(),

		        'extension'		=> Input::file('image')->getClientMimeType(),
		        'name'			=> Input::file('image')->getClientOriginalName(),
		        'mime_major'	=> 'image',
		        'mime_minor'	=> Input::file('image')->getClientMimeType(),
	          

			);
			DB::table('files')->insert($file);


			$this->update_tags(Input::get('tags'), $photo_id, 'photo');


			return Redirect::to('/home');
		}

	}
	
	public function update_tags($tags, $id, $type)
	{
		// check tag if exist
		foreach ($tags as $value) 
		{
		
			$tag = DB::table('tags')->where('name', '=', $value )->first();

			if (!$tag){
				// tag not exist
				

				$tag_id = DB::table('tags')->insertGetId(array(
						'name' => $value,
						'rank' => '1'
					));

			}else{
				//select tag
				$tag_id = $tag->id;

				
				DB::statement("update tags set rank = rank + 1 where id='$tag_id'"); 

				// @todo update rank

			}
			// end check
			if ($type == 'photo'){

				DB::table('tags_photos')->insert(array(

					'photo_id' => $id,
					'tag_id' => $tag_id
				));
			}
			else{
				DB::table('tags_videos')->insert(array(

					'video_id' => $id,
					'tag_id' => $tag_id
				));
			}

			
		}

	}
	public function upload_video()
	{

		if (Auth::user()){

			$autocomplete_tags = $this->autocomplete_tags();
			return View::make('user.uploadVideo')->with('autocomplete_tags', $autocomplete_tags);
		}else{
			return Redirect::to('/home');	
		}
	}

	public function submit_video()
	{

		$rules = array(
         	'url'	=> 'required',
	        'title' => 'required|max:100|min:10',  
	        'tags' 	=> 'max:20',
	        'source'=> 'max:100|min:5'	                
	       
	    );

		
	   	$validator = Validator::make(Input::all(), $rules);

		// check if the validator failed -----------------------
		if ($validator->fails()) {

		    // get the error messages from the validator
		    $messages = $validator->messages();

		    // redirect our user back to the form with the errors from the validator
		    return Redirect::to('/upload-photo')
		        ->withErrors($validator);

		} 
		else {

			$embed = explode("?v=", Input::get('url'));

			$video = array(
                'title'         =>ucfirst(Input::get('title')),
              
                'creation_date' =>date("Y-m-d H:i:s"),
                'modified_date' =>date("Y-m-d H:i:s"), 
                
                'user_id'       =>Auth::user()->id,
                'url'     		=> Input::get('url'),
                'youtube_id' 	=> isset($embed[1]) ? $embed[1] : '',
               	
                'view_count'    => '', 
                'comment_count' => '',
                'source' => Input::get('source'),
                'sensitive_content' => Input::get('sensitive_content')
    		);

			$video_id = DB::table('videos')->insertGetId($video);

			$this->update_tags(Input::get('tags'), $video_id, 'video');
				
			return Redirect::to('/home');
		}

	}
	public function profile($username,$page = 1)
	{

		$data = User::where('username', 'nguyenuit')->first(); 

		$query = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*'))
           
           ;
           
        $post_count = count($query->get());

        $view_count = $query->sum('v.view_count');
        $like_count = $query->sum('v.like_count');
        $comment_count = $query->sum('v.comment_count');
            
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

	
		return View::make('user.profile')
		->with('user', $data)
		->with('post_count', $post_count)
		->with('view_count', $view_count)
		->with('like_count', $like_count)
		->with('comment_count', $comment_count)
		->with('videos', $videos)
 		->with('photos', $photos)
      	->with('page', $page);
		;

	}


}
