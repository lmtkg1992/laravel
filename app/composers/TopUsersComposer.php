<?php

class TopUsersComposer{

	public function compose($view){

		$users = DB::table('users')
            // ->join('users AS u', 'p.user_id', '=', 'u.id')          
            // ->join('files AS f', 'f.parent_id', '=', 'p.id')          
            ->orderBy('view_count','DESC')
            ->select(array('*'))
            ->skip(0)
            ->take(2)
            ->get();

		$view->with('topusers', $users);

	}

}