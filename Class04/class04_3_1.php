<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "hw3");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$first = true;
$sql = "SELECT * FROM " . $_POST['tableName'] . " WHERE ";
$rule = false;
//Loop through keys to look for a selected key
//If there is a selected key means that the checkbox is marked and that field
//is important, otherwise the values of this field is ignored
$keys = array_keys($_POST);
//The last element of $_POST is the tableName, therefore we can ignore it
for ($i=0; $i < (count($_POST)-1) ; $i++) { 
	//If the value is selected we must evaluate the next two values
	//that corresponds to the operation required and the value of the operation
	if (strpos($keys[$i],"selected")){
		$rule = true;
		//If is the first occurence don't add 'AND' in the SQL query
		if ($first){
			$first = false;
		} else {
			$sql .= " AND ";
		}
		//Select substring with column name
		$sql .= explode("-", $keys[$i])[0] . " " . $_POST[$keys[++$i]] . " ". $_POST[$keys[++$i]];
	}
	//If the value is not selected we must skip only one value because
	//the value selected is already the operation and we aonly need to
	//skip the last input
	else {
		$i++;	
	}
}
if (!$rule){
	$sql .= "1";
}
echo $sql;

//Print headers of the table
$headQuery = "describe " . $_POST['tableName'];
$headers = array();

if($result = mysqli_query($link, $headQuery)){		
	if(mysqli_num_rows($result) > 0){
		echo "<table>";
        echo "<tr>";
		while($row = mysqli_fetch_array($result)){
			echo "<th>" , $row['Field'], "</th>";
			array_push($headers, $row['Field']);
			$headers++;
		}
		echo "</tr>";		
	}
}

//Print data of the table
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){
        	echo "<tr>";
        	for ($i=0; $i < count($headers); $i++) { 
        		//Encode chars to allow accented chars
        		echo "<td>" . htmlentities(utf8_encode($row[$headers[$i]]), 0, "UTF-8") . "</td>";
        	}
            echo "</tr>";
        }
        echo "</table>";
        // Close result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
}

echo "</table>";
// Close connection
mysqli_close($link);
?>