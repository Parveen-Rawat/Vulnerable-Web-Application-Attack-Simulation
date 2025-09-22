<?php 
$host = "localhost";
$user = "root";
$password = "<password>";
$db = "vulnlab";

//connecting to mariadb

$conn = new mysqli($host,$user,$password,$db);
if($conn->connect_error){
	die("Connection failed: ".$conn->connect_error);
}

// Take input from POST Method Request

$username=$_POST['username'];
$password=$_POST['password'];


//avoiding sanitization and validation of userinput for making it sqli vulnerable


$sql="SELECT * FROM users WHERE username ='$username' AND password = '$password'";
$results=$conn->query($sql);

if($results && $results->num_rows > 0){
	echo "<h2>Login Successful!! Enjoy Your Stay</h2>";
}else{
	echo "<h2>INVALID CREDENTIALS WTH ARE YOU DOING??? </h2>";
}


$conn->close();
?>



