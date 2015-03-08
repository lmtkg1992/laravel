<?php
// My common functions
 function calculate_time_period($date = ''){
	$today = new DateTime();
	
	$wtf = new DateTime($date);
	

	$diff = $today->diff(new DateTime($date));

	if ($diff->d){
		if ($diff->d > 1){
			return date('d/m/Y', strtotime($date));
		}else{
			return '1 ngay truoc';
		}
	}
	else if($diff->h){
		return $diff->h . ' gio truoc';
	}
	else if ($diff->i){
		return $diff->i . ' phut truoc';
	}
	else if ($diff->s){
		return $diff->s . ' phut truoc';
	}
	else{
		return '';
	}

    }
?>