<?php
require_once('connection.php');

$products = [];

$sql = "SELECT * FROM trending_offer";
$result= $mysqli->query($sql);
while ($row = $result->fetch_object()){
    $products[]= $row;
}
echo json_encode($products);