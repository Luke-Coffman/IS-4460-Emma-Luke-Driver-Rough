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
	$CustomerID = $_POST['customerid'];
	$Firstname = $_POST['firstname'];
	$Lastname = $_POST['lastname'];
	$Streetaddress = $_POST['streetaddress'];
	$City = $_POST['city'];
	$State = $_POST['state'];
	$Zipcode = $_POST['zipcode'];
	$UserID = $_POST['userid'];
	//echo $isbn.'<br>';
	
	$query = "INSERT INTO customer (customerid, firstname, lastname, streetaddress, city, state, zipcode, userid) VALUES ('$customerid', '$firstname', '$lastname', '$streetaddress', '$city', '$state', '$zipcode', '$userid')";
	
	//echo $query.'<br>';
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
header("Location: viewcustomer.php");//this will return you to the view all page
	
	
	
	
}



?>