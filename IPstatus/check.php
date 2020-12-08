<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$connection = mysqli_connect("localhost","root","","hash_analyzer");
$ipArr=array("192.168.1.1","192.168.1.99","192.168.1.204","192.168.1.10","192.168.1.66","192.168.1.4","192.168.1.250");

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
        foreach ($ipArr as $ip)
        {
        	# code... 

    if (ping($ip)){
        //echo nl2br("The device exists \n");
        $status = "Up";
    //$query = "UPDATE IPstatus SET ip_addr = '$ip', status='$status' WHERE id='$id' ";
                $query = "INSERT INTO IPstatus (ip_addr,status) VALUES ('$ip','$status')";
    $query_run = mysqli_query($connection,$query); 
}
    else 
    {
        //echo nl2br("The device is not connected \n");
        $status = "Down";
          // $query = "UPDATE IPstatus SET ip_addr = '$ip', status='$status' WHERE id='$id' ";
             $query = "INSERT INTO IPstatus (ip_addr,status) VALUES ('$ip','$status')";
    $query_run = mysqli_query($connection,$query); 
}
}
echo "{\"Check\":\"Mate\"}";
?>