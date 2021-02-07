<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$connection = mysqli_connect("localhost","root","","hash_analyzer");
$query = "SELECT id, ip_addr, status, device_name, date FROM IPstatus";
$query_run = mysqli_query($connection,$query);

if($query_run)
{
    $row = mysqli_num_rows($query_run);
    if($row > 0)
        {
            //printf("Number of row in the table : " . $row);
                $dataArr = array();
                $dataArr["IPstatus"] = array();
                $dataArr["totalIPs"] = $row;

                while ($row = mysqli_fetch_assoc($query_run)) {
                    extract($row);
        $e = array(
            "id" => $id,
            "ip_addr" => $ip_addr,
            "status" => $status,
            "device_name" => $device_name,
            "logged_date" => $date,
                );
            //array_push($dataArr, $e);
             array_push($dataArr["IPstatus"], $e);
        }
        echo json_encode($dataArr);
        }
        else
        {
           http_response_code(404);
           echo ("No record found.");
        }
        mysqli_free_result($query_run);
    }
?>