<?php

// View::composers(array(
// // 	'SideBarComposer' => array('includes.sidebar'),
// 	'TopUsersComposer' => array('includes.topusers')

// ));

View::composer('includes.topusers', function($view)
{
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

    // $view->with('topusers','123');

});

View::composer('includes.photo_sidebar', function($view)
{
	$photos = DB::table('photos AS p')
            ->join('users AS u', 'p.user_id', '=', 'u.id')          
            ->join('files AS f', 'f.parent_id', '=', 'p.id')          
            
            ->select(array('*', 'p.id AS photo_id'))
            ->skip(0)
            ->take(6)
            ->get();

	$view->with('photos', $photos);


});