<?php

ini_set('memory_limit','1000M');
set_time_limit(0);
error_reporting(0);

 $ports = array(21, 22, 23, 25, 53, 80, 110, 143, 443, 465, 3690, 1433, 3306, 5432, 8080);


?>
<!DOCTYPE HTML>
<html>
<body onload="new Accordian('basic-hostscan',5,'header_highlight');">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>hostscan</title>
</head>




<div id="test1-header" class="hostscan_headings">General Info</div>
<div id="test1-content">
<div class="hostscan_child">

</div>
</div>

<?php
$connection = mysqli_connect("localhost","root","","hash_analyzer");
$sql = "SELECT ip_addr FROM IPstatus_config ORDER BY id";
$result = mysqli_query($connection, $sql);
while($row = mysqli_fetch_assoc($result))
{
 $ip_addr = $row['ip_addr'];
 foreach($row as $ip)
{
        if($look = @fsockopen(long2ip($ip), $port, $err, $err_string, 1)) {
       echo $port.', ';
       fclose($look);
       }
      }
      echo '</p>';
}
?>

</div>
</body>
</html>