<?php
// My common functions
 function calculate_time_period($date = ''){
	$today = new DateTime();
	
	// $wtf = new DateTime($date);
	

	$diff = $today->diff(new DateTime($date));

	if ($diff->d){
		if ($diff->d > 1){
			return date('d/m/Y', strtotime($date));
		}else{
			return '1 ngày trước';
		}
	}
	else if($diff->h){
		return $diff->h . ' giờ trước';
	}
	else if ($diff->i){
		return $diff->i . ' phút trước';
	}
	else if ($diff->s){
		return $diff->s . ' giây trước';
	}
	else{
		return '';
	}

}
function show_view_count($view_count){

	return $view_count > 1000 ? number_format($view_count / 1000, 2) .'k' : $view_count;
}
?>