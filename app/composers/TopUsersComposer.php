<?php

class TopUsersComposer{

	public function compose($view){

		$topusers = DB::table('users')
            // ->join('users AS u', 'p.user_id', '=', 'u.id')          
            // ->join('files AS f', 'f.parent_id', '=', 'p.id')          
            ->orderBy('view_count','DESC')
            ->select(array('*'))
            // ->skip(0)
            ->take(10)
            ->select(array('id', 'username', 'displayname', 'view_count'))
            ->get();
            foreach ($topusers as $key => &$item) {
                 
                  $item->view_count = show_view_count($item->view_count);

            }
           


		$view->with('topusers', $topusers);

	}

}