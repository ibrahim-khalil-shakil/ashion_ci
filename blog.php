<?php
require_once('connection.php');

$blogs = [];

$sql = "SELECT * FROM blog";
$result= $mysqli->query($sql);
while ($row = $result->fetch_object()){
    $blogs[]= $row;
}
echo json_encode($blogs);