<?php

class SideBarComposer{

	public function compose($view){

		$photos = DB::table('photos AS p')
            ->join('users AS u', 'p.user_id', '=', 'u.id')          
            ->join('files AS f', 'f.parent_id', '=', 'p.id')          
            
            ->select(array('*', 'p.id AS photo_id'))
            // ->skip(0)
            // ->take(2)
            ->get();

		$view->with('sidebar', $photos);

	}

}