<?php

use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class Photo extends Eloquent implements UserInterface, RemindableInterface {

	use UserTrait, RemindableTrait;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'photos';

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	// protected $hidden = array('password', 'remember_token');

	// protected $fillable = ['email', 'password'];
	public static function getPhotos($itemPerPage, $page) {

      	
  	 	$photos = DB::table('photos AS p')
        ->join('users AS u', 'p.user_id', '=', 'u.id')          
        ->join('files AS f', 'f.parent_id', '=', 'p.id')          
        
        ->select(array('*', 'p.id AS photo_id', 'p.creation_date AS photo_creation_date'))
        ->skip(($page- 1) * $itemPerPage)
        ->take($itemPerPage)
        ->orderBy('p.id', 'DESC')
        ->get();

        
        foreach ($photos as $key => &$photo) {
       
          $photo->time_interval = calculate_time_period($photo->photo_creation_date);
	    }

    	return $photos;

	}
	public static function getPhoto($id) {
		$photo = DB::table('photos AS p')
	            ->join('users AS u', 'p.user_id', '=', 'u.id')          
             	->join('files AS f', 'f.parent_id', '=', 'p.id')       
	            ->where('p.id', $id)
	            ->select(array('*', 'p.id AS photo_id', 'p.creation_date AS photo_creation_date'))
	            ->first();
        $photo->time_interval = calculate_time_period($photo->photo_creation_date);
      	$photo->photo_view_count = show_view_count($photo->photo_view_count);
      	$photo->view_count = show_view_count($photo->view_count);
      	return $photo;
	}
	public static function getPreviousPhoto($id) {
		return DB::table('photos')
	            ->where('id', '<', $id)
	            ->orderBy('id', 'desc')
	            ->select('id')
	            ->first();
    }
    public static function getNextPhoto($id) {
      	return DB::table('photos')
	            ->where('id', '>', $id)
	            ->orderBy('id', 'desc')
	            ->select('id')
	            ->first(); 
    }
}
