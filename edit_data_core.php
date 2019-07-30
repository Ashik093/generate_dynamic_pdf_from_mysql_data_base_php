<?php
	require_once("connection.php");
	$id=$_REQUEST['id'];
	$btn=$_REQUEST['update_btn'];
	$fname=$_REQUEST['fname'];
	$lname=$_REQUEST['lname'];
	$email_addr=$_REQUEST['email_addr'];
	$user_pwd=$_REQUEST['user_pwd'];
	if(isset($btn)){
		$query="UPDATE tbl_user SET fname='$fname',lname='$lname',email_addr='$email_addr',user_pwd='$user_pwd' WHERE id='$id'";
		$run_query=mysqli_query($connect,$query);
		if($run_query==true){
			header("location: index.php?msg=data has been updated");
			
		}
	}
?>