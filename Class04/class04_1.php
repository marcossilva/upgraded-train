<html>
<body>
<!-- INSERT INTO `hw3`.`family` (`id`, `FirstName`, `LastName`, `Age`) VALUES (NULL, 'João Vitor', 'Augusto', '8'); -->
<?php 
$query = "INSERT INTO " . $_POST["tableName"] . " ";

switch ($_POST["tableName"]) {
	case 'family':
		$query .= "(`id`, `FirstName`, `LastName`, `Age`) VALUES (NULL, '" . $_POST["firstname"] .  "', '" . $_POST["lastName"] .  "', '" . $_POST["age"];
		break;
	case 'games':
		$query .= "(`id`, `gameName`, `addedOn`, `price`) VALUES (NULL, '" . $_POST["gameName"] .  "', '" . $_POST["addedOn"] .  "', '" . $_POST["price"];
		break;
	case 'manga':
		$query .= "(`id`, `name`, `lastChapter`, `mangaka`, `firstChapterYear`) VALUES (NULL, '" . $_POST["name"] .  "' , '" . $_POST["lastChapter"] .  "', '" . $_POST["mangaka"] .  "', '" . $_POST["firstCh"];
		break;
}

$query .= "');";
echo $query;

$con = mysqli_connect('localhost','root','', 'hw3'); 
if (mysqli_connect_errno())  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con, $query);

if($result){
	echo "<br>Success";
} else {
	echo "<br>Failed to insert data";
}

mysqli_close($con);

?><br>


</body>
</html>