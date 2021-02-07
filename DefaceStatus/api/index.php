<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$connection = mysqli_connect("localhost","root","","hash_analyzer");
$query = "SELECT id, website, status, remark, date FROM Deface";
$query_run = mysqli_query($connection,$query);

if($query_run)
{
    $row = mysqli_num_rows($query_run);
    if($row > 0)
        {
            //printf("Number of row in the table : " . $row);
                $dataArr = array();
                $dataArr["DEFACEstatus"] = array();
                $dataArr["totalURLs"] = $row;

                while ($row = mysqli_fetch_assoc($query_run)) {
                    extract($row);
        $e = array(
            "id" => $id,
            "website" => $website,
            "status" => $status,
            "remark" => $remark,
            "date" => $date,
                );
            //array_push($dataArr, $e);
             array_push($dataArr["DEFACEstatus"], $e);
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