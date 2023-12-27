<?php
require_once('connection.php');

$products = [];

$sql = 'SELECT products.*, brand.name as bname, categories.name as cname, CONCAT("http://localhost/react_ashion/",products.image) as image FROM `products`
join brand on brand.id=products.brand_id
join categories on categories.id=products.category_id order by products.id ASC';
$result = $mysqli->query($sql);
while ($row = $result->fetch_object()) {
    $products[] = $row;
}
echo json_encode($products);
