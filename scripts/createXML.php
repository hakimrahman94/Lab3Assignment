<?php
header("Content-type:text/xml");
header("Access-Control-Allow-Origin: *");

$dbconn = mysqli_connect("localhost", "root", "", "myDB");
mysqli_select_db($dbconn, "myDB");
$query = mysqli_query($dbconn, "select * from listofcaps");

$xml = new SimpleXMLElement('<list/>');
while ($row = mysqli_fetch_assoc($query)) {
     $product = $xml->addChild("product");
     $product->addChild("capId", $row["id"]);
     $product->addChild("captitle", htmlspecialchars($row["title"]));
     $product->addChild("cappic", htmlspecialchars($row["picture"]));
     $product->addChild("capprice", $row["price"]);
     $product->addChild("capdiscount", $row["discount"]);
}

mysqli_close($dbconn);
echo $xml->asXML();
?>