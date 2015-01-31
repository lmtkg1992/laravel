<?php

class SideBarComposer{

	public function compose($view){

		$data = DB::table('videos AS v')
            ->join('users AS u', 'v.user_id', '=', 'u.id')          
            
            ->select(array('*', 'v.id AS video_id'))
            ->get();

		$view->with('sidebar', $data);

	}

}