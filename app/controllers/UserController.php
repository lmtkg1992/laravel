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

	public function upload_album()
	{
		// die('ss');

		// Input::file('file');

		// $data = array(
  //               'title'         =>ucfirst($post['title']),
              
  //               'creation_date' =>date("Y-m-d H:i:s"),
  //               'modified_date' =>date("Y-m-d H:i:s"), 
  //               'photo_ids'     =>$photo_ids, 
  //               'user_id'       =>$userinfo->user_id,
  //               'url_album'     =>convertForUrl($post['title']),
  //               'category_id'   =>$post['category'],
  //               //@todo: get real representive image for album
  //               'rept_photo_id' => isset($file_ids['0']) ? $file_ids['0'] : '',
  //               'status'        => 1, 
  //               'is_home'       => 0,
  //               'view_count'    => '', 
  //               'comment_count' => ''
  //           );
  //       $this->db->insert('albums', $data); 
        //end save in albums table
        //end upload album

        // redirect(base_url());



		return View::make('user.uploadAlbum');
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
