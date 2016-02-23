<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "hw3");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

//Look for specified table in dataset
$sql = "show tables;";
$tableInDatabase = false;
if($result = mysqli_query($link, $sql)){		
	if(mysqli_num_rows($result) > 0){
		while($row = mysqli_fetch_array($result)){
			if (strcmp($row['Tables_in_hw3'], $_POST['tableName']) == 0){
				$tableInDatabase = true;
				break;
			}
		}
	} else {
		echo "No tables to show in the database";
	}
	mysqli_free_result($result);	
}


//If the table is in the database, get all the headers	and print them
if ($tableInDatabase){
	echo "<form id=\"tableSelection\" action=\"class04_3_1.php\" method=\"post\"><table>";
	$tableName = $_POST['tableName'];
	$sql = "describe $tableName";
	if($result = mysqli_query($link, $sql)){		
		if(mysqli_num_rows($result) > 0){
			while($row = mysqli_fetch_array($result)){
				$field = $row['Field'];
				echo "
				<tr>
					<td><input type=\"checkbox\" name=\"$field-selected\"></td>
					<td style=\"font-weight: bold\">$field</td>
					<td><select name=\"$field-operation\">
						<option value=\"=\">equals</option>
						<option value=\">\">greaterThan</option>
						<option value=\"<\">lessThan</option>
						<option value=\">=\">greaterThanOrEqual</option>
						<option value=\"<=\">lessThanOrEqual</option>
						<option value=\"like\">like</option>
					</select></td>
					<td><input type=\"text\" name=\"$field-value\"></td>
				</tr>";
			}
		}
		mysqli_free_result($result);
	}
	echo "</table><button id=\"submit_2\">Submit</button><input type=\"hidden\" name=\"tableName\" value=\"$tableName\"></form><br>";
	echo "
	<script>

	$(\"#submit_2\").click( function(){
		$.post($(\"#tableSelection\").attr(\"action\"), $(\"#tableSelection :input\").serializeArray(), function(info){
			$(\"#rows\").html(info);
		});
	});
	
	$(\"#tableSelection\").submit(function(){
		return false;
	});

	</script>";
} else {
	echo "The specified table is not in the database!!";
}
// Close connection
mysqli_close($link);
?>