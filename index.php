<!DOCTYPE html>
<html>
	<head>
		<title>
			Home Page
		</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=decice-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	</head>
	<body>
		<form enctype="multipart/form-data" method="post" action="register_core.php">
			<input type="text" placeholder="Enter the first name" name="fname"/>
			<input type="text" placeholder="Enter the lastname" name="lname"/>
			<input type="email" placeholder="Enter the email address" name="email_addr"/>
			<input type="password" placeholder="Enter the password" name="user_pwd"/>
			<input type="file"name="avatar"/>
			<input type="submit" value="Register" name="submit_btn"/>
		</form>
		<br/><br/>
			<a href="index.php">Reload</a><br><br>
			<a href="generat_pdf.php" name="pdf" target="_blank">Generate PDF</a><br><br>
			<form method="post" action="">
				<input type="text" name="search" placeholder="Enter the search key"/>
				<input type="submit" name="searchbtn" value="Search"/>
			</form>
			<br/><br/><br/><br/>
			<?php
				require_once("connection.php");
				if(isset($_REQUEST["searchbtn"])){
					if(empty($_REQUEST["search"])){

					}
					else{
						$key=$_REQUEST["search"];
						$query="SELECT * FROM tbl_user WHERE fname LIKE '%$key%'";
						$run_query=mysqli_query($connect,$query);
						if($run_query==true){
							?>

								<table border="1px solid black">
									<tr>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Email Address</th>
										<th>Password</th>
										<th>Registration Date</th>
										<th>Picture</th>
										<th>Action</th>
									</tr>

									<?php
										while($row=mysqli_fetch_array($run_query)){
										?>

											<tr>
												<td><?php echo $row["fname"];?></td>
												<td><?php echo $row["lname"];?></td>
												<td><?php echo $row["email_addr"];?></td>
												<td><?php echo $row["user_pwd"];?></td>
												<td><?php echo $row["date"];?></td>
												<td><center><img width="40px" src="avatar/<?php echo $row["img"];?>"/></center></td>
												<td><a href="edit_data.php?id=<?php echo $row['id'];?>">Edit</a> | <a onclick="return confirm('Are you sure?');" href="delete_core.php?id=<?php echo $row['id'];?>">Delete</a></td>
											</tr>
										<?php
									?>
								</table>
							<?php
							}
						}
					}
				}
			?>
		<br/><br/><br/><br/>
		<?php

			if(isset($_REQUEST["msg"])){
				echo $_REQUEST["msg"];

			}

		?>
		<table border="1px solid black">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email Address</th>
				<th>Password</th>
				<th>Registration Date</th>
				<th>Picture</th>
				<th>Action</th>
			</tr>
			<?php
			require_once("connection.php");
			$query="SELECT * FROM tbl_user";
			$run_query=mysqli_query($connect,$query);
			if($run_query==true){

				while($data=mysqli_fetch_array($run_query)){
					?>

							<tr>
								<td><?php echo $data["fname"];?></td>
								<td><?php echo $data["lname"];?></td>
								<td><?php echo $data["email_addr"];?></td>
								<td><?php echo $data["user_pwd"];?></td>
								<td><?php echo $data["date"];?></td>
								<td><center><img width="40px" src="avatar/<?php echo $data["img"];?>"/></center></td>
								<td><a href="edit_data.php?id=<?php echo $data['id'];?>">Edit</a> | <a onclick="return confirm('Are you sure?');" href="delete_core.php?id=<?php echo $data['id'];?>">Delete</a></td>
							</tr>

					<?php


				}
			}
		?>
		</table>


	</body>
</html>
