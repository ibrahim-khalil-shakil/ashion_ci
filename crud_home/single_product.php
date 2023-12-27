<?php
include 'connection.php';
$data = [];
$id=$_GET['id'];
$sql = "SELECT * FROM home_products where id=$id";
$result=$mysqli->query($sql);
while($row = $result->fetch_assoc()){
	$data= $row;
}
echo json_encode($data);