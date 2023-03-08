<?php

//import credentials for db
require_once  'login.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);



if(isset($_POST['delete']))
{
	$returnid = $_POST['customerid'];

	$query = "DELETE FROM customer (customerid, firstname, lastname, streetaddress, city, state, zipcode, userid) VALUES ('$customerid', '$firstname', '$lastname', '$streetaddress', '$city', '$state', '$zipcode', '$userid')";
	
	//Run the query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Return to the viewallcustomer page
	header("Location: viewcustomer.php");
	
}


?>