<?php
require_once('connection.php');

$instaLinks = [];

$sql = "SELECT * FROM instagram";
$result= $mysqli->query($sql);
while ($row = $result->fetch_object()){
    $instaLinks[]= $row;
}
echo json_encode($instaLinks);