<?php

use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class Video extends Eloquent implements UserInterface, RemindableInterface {

	use UserTrait, RemindableTrait;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'videos';

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	// protected $hidden = array('password', 'remember_token');

	// protected $fillable = ['email', 'password'];
	public static function getVideos($itemPerPage, $page) {

      	
  	 	$videos = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*', 'v.id AS video_id', 'v.creation_date AS video_creation_date'))
            ->skip(($page - 1) * $itemPerPage)
            ->take($itemPerPage)
            ->orderBy('video_id', 'DESC')
            ->get();

        foreach ($videos as $key => &$video) {
       
          $video->time_interval = calculate_time_period($video->video_creation_date);
	    }

    	return $videos;

	}
	public static function getVideo($id) {
		$video = DB::table('videos AS v')
	            ->join('users AS u', 'v.user_id', '=', 'u.id')          
	            ->where('v.id', $id)
	            ->select(array('*', 'v.id AS video_id', 'v.creation_date AS video_creation_date'))
	            ->first();
        $video->time_interval = calculate_time_period($video->video_creation_date);
      	$video->video_view_count = show_view_count($video->video_view_count);
      	$video->view_count = show_view_count($video->view_count);
      	return $video;
	}
	public static function getPreviousVideo($id) {
		return DB::table('videos')
	            ->where('id', '<', $id)
	            ->orderBy('id', 'desc')
	            ->select('id')
	            ->first();
    }
    public static function getNextVideo($id) {
      	return DB::table('videos')
	            ->where('id', '>', $id)
	            ->orderBy('id', 'desc')
	            ->select('id')
	            ->first(); 
    }

}
