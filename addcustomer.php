<html>
	<head>
	
	</head>
	
	<body>
		<form method='post' action='addcustomer.php'>
			<pre>
				CustomerID: <input type='text' name='customerid'>
				Firstname: <input type='text' name='firstname'>
				Lastname: <input type='text' name='lastname'>
				Streetaddress: <input type='text' name='streetaddress'>
				City: <input type='text' name='city'>
				State: <input type='text' name='state'>
				Zipcode: <input type='text' name='zipcode'>
				UserID: <input type='text' name='userid'>
				<input type='submit' value='Add Customer'>
			</pre>
		</form>
	</body>
</html>


<?php
//import credentials for db
require_once  'login.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

//check if returnid exists
if(isset($_POST['customerid'])) 
{
	//Get data from POST object
	$customerid = $_POST['customerid'];
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$streetaddress = $_POST['streetaddress'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$zipcode = $_POST['zipcode'];
	$userid = $_POST['userid'];
	//echo $isbn.'<br>';
	
	$query = "INSERT INTO customer (customerid, firstname, lastname, streetaddress, city, state, zipcode, userid) VALUES ('$customerid', '$firstname', '$lastname', '$streetaddress', '$city', '$state', '$zipcode', '$userid')";
	
	//echo $query.'<br>';
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
header("Location: viewcustomer.php");//this will return you to the view all page
	
	
	
	
}



?>