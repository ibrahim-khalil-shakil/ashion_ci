<?php
include 'connection.php';
$data = json_decode(file_get_contents("php://input"));

if ($data) {
    if ($data->id) {
        $sql = "UPDATE coupons set "; // start query
    } else {
        $sql = "INSERT into coupons set "; // start query
    }

    foreach ($data as $k => $v) {
        if ($k !== 'id') { // Skip 'id' field in the loop
            $sql .= "$k = '$v',"; // Build the query
        }
    }

    $sql = rtrim($sql, ","); // remove last , from query

    if ($data->id) {
        $sql .= " where id= '" . $data->id . "' "; // start query
    }
    $result = $mysqli->query($sql);
    if ($result)
        echo json_encode(array("status" => 1));
    else
        echo json_encode(array("status" => 0));
} else {
    echo json_encode(array("status" => 0, "message" => "No data received."));
}
