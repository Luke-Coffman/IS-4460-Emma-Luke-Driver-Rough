<html>
	<head>
	
	</head>
	
	<body>
	<h1> Add a Product </h1>
		<form method='post' action='addproducts.php'>
			<pre>
				ProductID: <input type='text' name='ProductID'>
				ProductName: <input type='text' name='ProductName'>
				Price: <input type='text' name='Price'>
				Inventory: <input type='text' name='Inventory'>
				SkiType: <input type='text' name='SkiType'>
				<input type='submit' value='Add Product'>
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
if(isset($_POST['ProductID'])) 
{
	//Get data from POST object
	$ProductID = $_POST['ProductID'];
	$ProductName = $_POST['ProductName'];
	$Price = $_POST['Price'];
	$Inventory = $_POST['Inventory'];
	$SkiType = $_POST['SkiType'];
		
	//echo $isbn.'<br>';
	
	$query = "INSERT INTO Products (ProductID, ProductName, Price, Inventory, SkiType) VALUES ('$ProductID', '$ProductName', '$Price', '$Inventory', '$SkiType')";
	
	//echo $query.'<br>';
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
header("Location: viewproducts.php");//this will return you to the view all page
	
	
	
	
}



?>