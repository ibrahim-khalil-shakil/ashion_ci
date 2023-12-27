<?php
require_once('connection.php');

$products = [];

$sql = 'SELECT products_home.*, CONCAT("http://localhost/react_ashion/",products_home.image) as image FROM `products_home` order by products_home.id ASC';
$result= $mysqli->query($sql);
while ($row = $result->fetch_object()){
    $products[]= $row;
}
echo json_encode($products);