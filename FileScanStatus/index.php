<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$connection = mysqli_connect("localhost","root","","hash_analyzer");
$query = "SELECT status, file_path, old_hash, new_hash, file_last_mod, acct FROM file_history";
$query_run = mysqli_query($connection,$query);

if($query_run)
{
    $row = mysqli_num_rows($query_run);
    if($row > 0)
        {
            //printf("Number of row in the table : " . $row);
                $dataArr = array();
                $dataArr["FileScanStatus"] = array();
                $dataArr["totalFiles"] = $row;

                while ($row = mysqli_fetch_assoc($query_run)) {
                    extract($row);
        $e = array(
            "status" => $status,
            "file_path" => $file_path,
            "old_hash" => $old_hash,
            "new_hash" => $new_hash,
            "file_last_mod" => $file_last_mod,
            "acct" => $acct,
                );
            //array_push($dataArr, $e);
             array_push($dataArr["FileScanStatus"], $e);
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