<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$connection = mysqli_connect("localhost","root","","hash_analyzer");

        function myOS(){
            if (strtoupper(substr(PHP_OS, 0, 3)) === (chr(87).chr(73).chr(78)))
                return true;

            return false;
        }

         function ping($ip_addr){
            if (myOS()){
                if (!exec("ping -n 1 -w 1 ".$ip_addr." 2>NUL > NUL && (echo 0) || (echo 1)"))
                    return true;
            } else {
                if (!exec("ping -q -c1 ".$ip_addr." >/dev/null 2>&1 ; echo $?"))
                    return true;
            }

            return false;
        }

$sql = "SELECT ip_addr, device_name FROM IPstatus_config ORDER BY id";

$result = mysqli_query($connection, $sql);

while($row = mysqli_fetch_assoc($result))
{
    $ip = $row['ip_addr'];
    $device_name = $row['device_name'];

    if (ping($ip)){
        $query = "INSERT INTO IPstatus (ip_addr,status,device_name) VALUES ('$ip','Up','$device_name')";
    }else{
        $query = "INSERT INTO IPstatus (ip_addr,status,device_name) VALUES ('$ip','Down','$device_name')";
    }

    $query_run = mysqli_query($connection,$query);
}
echo "{\"Check\":\"Mate\"}";
?>