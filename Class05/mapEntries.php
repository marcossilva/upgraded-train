<?php
require("dbinfo.php");

function parseToXML($htmlStr)
{
$xmlStr=str_replace('<','&lt;',$htmlStr);
$xmlStr=str_replace('>','&gt;',$xmlStr);
$xmlStr=str_replace('"','&quot;',$xmlStr);
$xmlStr=str_replace("'",'&#39;',$xmlStr);
$xmlStr=str_replace("&",'&amp;',$xmlStr);
return $xmlStr;
}

try {
    $conn = new PDO("mysql:host=127.0.0.1;dbname=".$database, $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully";
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }

// Select all the rows in the markers table
$query = "SELECT * FROM markers";
$rs = $conn->query($query);

header("Content-type: text/xml");

// Start XML file, echo parent node
echo '<markers>';

// Iterate through the rows, printing XML nodes for each
foreach($rs as $value) {
  // ADD TO XML DOCUMENT NODE
  echo '<marker ';
  echo 'name="' . parseToXML($value['name']) . '" ';
  echo 'address="' . parseToXML($value['address']) . '" ';
  echo 'lat="' . $value['lat'] . '" ';
  echo 'lng="' . $value['lng'] . '" ';
  echo 'type="' . $value['type'] . '" ';
  echo '/>';
}

// End XML file
echo '</markers>';

?>
