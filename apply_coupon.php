<?php
require_once('connection.php');

$data = [];
$code = $_GET['code'];
$sql = "SELECT * FROM coupons where code='$code'";
$result= $mysqli->query($sql);
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $data = $row;
}
echo json_encode($data);