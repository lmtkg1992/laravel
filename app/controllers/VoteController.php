<?php

class VoteController extends BaseController {

      public function voteAjax(){
            if(Auth::user()){
                  $data_vote_action = Input::all();
                  $old_votes = DB::table('votes')
                        ->where('user_id',Auth::user()->id)
                        ->where('item_type','video')
                        ->where('item_id',$data_vote_action['vid'])
                        ->first();

                  if(isset($old_votes)){

                        DB::table('votes')
                        ->where('user_id',Auth::user()->id)
                        ->where('item_type','video')
                        ->where('item_id',$data_vote_action['vid'])
                        ->delete();
                  }

                  if(!isset($old_votes) || $old_votes->result_vote != $data_vote_action['vvote']){
                        DB::table('votes')->insert(
                            array(
                                  'user_id' => Auth::user()->id,
                                  'item_type' => 'video',
                                  'item_id' => $data_vote_action['vid'],
                                  'result_vote' => $data_vote_action['vvote'],
                                  )
                        );

                        return array(
                              'error' => false,
                              'message' => 'Success',
                              'result' => $data_vote_action['vvote'],
                        );

                  }
                  else{
                        return array(
                              'error' => false,
                              'message' => 'Success',
                              'result' => 0,
                        );
                  }
            }
            else{
                  return array(
                        'error' => true,
                        'message' => 'Fail Auth',
                        );
            }
      }
	public function index($page = 1){	

           
    $itemPerPage = 5;
    $videos = Video::getVideos(5, $page);

 /**/
	 	return View::make("pages.vote")
	 		->with('videos', $videos)
	 		
        ->with('page', $page);
	 		;
		  
	}
     
}
