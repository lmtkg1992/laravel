<?php

class UserController extends BaseController {

	public function __construct()
    {
      
    }
	
	public function index(){
		// $data = User::where ('email', 'nguyenuit@gmail.com')->get(); 
		// return View::make('user.list')->with('users', $data);
		return View::make('user.list');
		// return $this->user->all();
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
			// return Auth::user();
		}
		return 'failed!';
	}

	public function logout()
	{
		Auth::logout();
		return Redirect::to('/login');
	}

	public function submit_album()
	{

		// var_dump(Auth::user());
		// echo '<pre>';
		// var_dump(Input::file('image')->getclienToriginalName());



		$destinationPath = 'uploads/photos';

		$upload_success = Input::file('image')->move($destinationPath, Input::file('image')->getclienToriginalName());

		 //start save in files table
       
		// echo '<pre>';

		// var_dump($file);

		// $this->db->insert('files', $data);



		// die('ss');
		$album =  array(
	                'title'         =>ucfirst(Input::get('title')),
	              
	                'creation_date' =>date("Y-m-d H:i:s"),
	                'modified_date' =>date("Y-m-d H:i:s"), 
	                // 'photo_ids'     =>$photo_ids, 
	                'user_id'       =>Auth::user()->id,
	                'url_album'     =>Str::slug(Input::get('title'), '-'),
	                // 'category_id'   =>$post['category'],
	                //@todo: get real representive image for album
	                // 'rept_photo_id' => isset($file_ids['0']) ? $file_ids['0'] : '',
	                'status'        => 1, 
	                'is_home'       => 0,
	                'view_count'    => '', 
	                'comment_count' => '',
	                'source' => Input::get('source'),
	                'sensitive_content' => Input::get('sensitive_content')
	    		);
		// var_dump($album);

		$album_id = DB::table('albums')->insertGetId($album);

		 $file = array(
        	
	        'parent_type'	=> 'album', 
	        'parent_id'		=> $album_id,
	        'user_id'		=> Auth::user()->id,
	        'creation_date'	=> date("Y-m-d H:i:s"),
	        'modified_date'	=> date("Y-m-d H:i:s"),
	       
	        'storage_path'	=> 'public/photos/'. Input::file('image')->getClientOriginalName(),

	        'extension'		=> Input::file('image')->getClientMimeType(),
	        'name'			=> Input::file('image')->getClientOriginalName(),
	        'mime_major'	=> 'image',
	        'mime_minor'	=> Input::file('image')->getClientMimeType(),
          

		);
		DB::table('files')->insert($file);


		// check tag if exist
		$tag = DB::table('tags')->where('name', '=', Input::get('tags'))->first();

		if (!$tag){
			// tag not exist
			$tag = array(
					'name' => Input::get('tags')
				);

			$tag_id = DB::table('tags')->insertGetId($tag);

		}else{
			//select tag
			$tag_id = $tag->id;

		}
		// end check

		$tags_albums = array(

				'album_id' => $album_id,
				'tag_id' => $tag_id
			);

		DB::table('tags_albums')->insert($tags_albums);


		return Redirect::to('/home');

	}
	
	public function upload_album()
	{
		if (Auth::user()){

			return View::make('user.uploadAlbum');
		}else{
			return Redirect::to('/home');
		}
	}	
	public function view($username){

		$data = User::where('username', 'nguyenuit')->first(); 

		$query = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*'))
           
           ;
           
        $post_count = count($query->get());

        $view_count = $query->sum('v.view_count');
        $like_count = $query->sum('v.like_count');
        $comment_count = $query->sum('v.comment_count');
            
            // echo $sum;
		// dd(DB::getQueryLog());
            // die('ss');

	
		return View::make('user.view')
		->with('user', $data)
		->with('post_count', $post_count)
		->with('view_count', $view_count)
		->with('like_count', $like_count)
		->with('comment_count', $comment_count)
		;

	}


}
