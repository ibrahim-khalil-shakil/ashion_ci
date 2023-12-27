<?php
include 'connection.php';

$data = [];

$sql = 'SELECT products_home.*, CONCAT("http://localhost/react_ashion/",products_home.image) as image FROM `products_home` order by products_home.id ASC';
$result = $mysqli->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_object()) {
        $data[] = $row;
    }
    echo json_encode(array("status" => 1, "data" => $data));
} else {
    echo json_encode(array("status" => 0, "data" => ""));
}
