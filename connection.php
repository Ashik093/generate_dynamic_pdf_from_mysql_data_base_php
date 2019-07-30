<?php
	$hostName="localhost";
	$userName="nasim_practice";
	$userPwd="nasim_practic";
	$dbName="nasim_practice";
	$connect=mysqli_connect($hostName,$userName,$userPwd,$dbName);
	if($connect){
		//echo "connected";
	}
	else{
		 die(mysqli_error($connection));
	}
?>