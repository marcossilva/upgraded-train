<html>
<head>
	<title>My Games</title>
</head>
<body>
	<h1>My Games</h1>
<?php 
$con = mysqli_connect('localhost','root','', 'hw3'); 
if (mysqli_connect_errno())  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$sql = "select * from games where 1";
$result = mysqli_query($con, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo "addedOn: " . $row["addedOn"]. " - gameName: " . $row["gameName"]. " - price: " . $row["price"]. "<br>";
    }
} else {
    echo "0 results";
}

mysqli_close($con);
?> 
</body>
</html>