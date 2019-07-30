<?php

	require_once("connection.php");
	$btn=$_REQUEST["submit_btn"];
	$fname=$_REQUEST["fname"];
	$lname=$_REQUEST["lname"];
	$email_addr=$_REQUEST["email_addr"];
	$user_pwd=$_REQUEST["user_pwd"];
	$file_name=$_FILES["avatar"]["name"];
	$file_tmp_name=$_FILES["avatar"]["tmp_name"];
	$file_location="avatar/";
	$file_unique_name=uniqid();
	$file_destination=$file_unique_name.".jpg";
	move_uploaded_file($file_tmp_name,$file_location."".$file_destination);
	if(isset($btn)){
		if(!$file_name){
			$query="INSERT INTO tbl_user (fname,lname,email_addr,user_pwd) VALUES('$fname','$lname','$email_addr','$user_pwd')";
			$run_query=mysqli_query($connect,$query);
			if($run_query){
				header("location: index.php?msg=data saved");
			}
			else{
				header("location: index.php?msg=data not saved");
			}
			
		}
		else{
			
			$query="INSERT INTO tbl_user (fname,lname,email_addr,user_pwd,img) VALUES('$fname','$lname','$email_addr','$user_pwd','$file_destination')";
			$run_query=mysqli_query($connect,$query);
			if($run_query){
				header("location: index.php?msg=data saved");
			}
			else{
				header("location: index.php?msg=data not saved");
			}
		}
		
	}
?>