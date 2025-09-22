<?php

session_start();

//Simple Creditionals precoded


$valid_username = "<userid>";
$valid_password = "<userpassword>";

$username = $_POST['username'];
$password = $_POST['password'];

if($username === $valid_username && $password === $valid_password) {
	$_SESSION['user'] = $username;
	header("Location: dashboard.php");
}else{
	echo "Invalid Credentials";
}

?>

