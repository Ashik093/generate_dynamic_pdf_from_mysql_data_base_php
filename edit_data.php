<!DOCTYPE html>
<html>
	<head>
		<title>
			Edit Page
		</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=decice-width, initial-scale=1.0">
	</head>
	<body>
		<?php
			require_once("connection.php");
			$id=$_REQUEST["id"];
			$query="SELECT * FROM tbl_user WHERE id='$id'";
			$run_query=mysqli_query($connect,$query);
			if($run_query==true){
				$data=mysqli_fetch_array($run_query);
				?>
					<form method="post" action="edit_data_core.php">
						<input type="text" placeholder="Enter the first name" value="<?php echo $data['fname']; ?>" name="fname"/>
						<input type="text" placeholder="Enter the lastname" value="<?php echo $data['lname']; ?>"  name="lname"/>
						<input type="email" placeholder="Enter the email address" value="<?php echo $data['email_addr']; ?>"  name="email_addr"/>
						<input type="hidden" value="<?php echo $data['id'];?>" name="id" />
						<input type="password" placeholder="Enter the password" value="<?php echo $data['user_pwd']; ?>"  name="user_pwd"/>
						<input type="submit" value="Update" name="update_btn"/>
					</form>
				<?php
				
			}
		?>
		
		
		
		
		
	</body>
</html>