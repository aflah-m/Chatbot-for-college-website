<?php
session_start();
include('connection.php');

// Connect to server and select databse.


// username and password sent from form 
$myusername=$_POST['email']; 
$mypassword=$_POST['password']; 


if(isset($_POST['login']))
{

if($myusername=="admin@gmail.com" and $mypassword=="admin")
{
		$_SESSION['user']="admin";
		header("location:admin/dashboard/dashboard.php");
}
else{
			
			header("location:login.php?st=fail");

	
}





}

?>
 
 



