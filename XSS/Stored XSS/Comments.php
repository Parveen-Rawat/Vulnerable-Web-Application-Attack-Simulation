<?php

$host = "localhost";
$user = "root";
$password = "<password>"; 
$db = "vulnlab";

// Connect to MySQL

$conn = new mysqli($host,$user,$password,$db);

//check connection
if($conn->connect_error){
    die("Connection failed: ".$conn->connect_error);
}

// Get input from FORM

$name = $_POST['name'];
$message = $_POST['message'];

// Insert into database --no sanitization intentially

$sql = "INSERT INTO comments (name,message) VALUES ('$name','$message')";
$conn->query($sql);

//Retrive all comments

$result = $conn->query("SELECT name,message FROM comments");

//Display all comments

echo "<h2>All Comments</h2>";
while($row = $result->fetch_assoc()){
    echo "<p><strong>".$row['name'].":</strong>".$row['message']."</p>";
}

$conn->close();
?>

