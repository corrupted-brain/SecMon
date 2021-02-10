<?php
$connection = mysqli_connect("localhost","root","","hash_analyzer");
$query = "SELECT * FROM filescan_config";
$query_run = mysqli_query($connection,$query);
if (mysqli_num_rows($query_run) > 0)
{
	while ( $row = mysqli_fetch_array($query_run)) {
		$email = $row["email"];
		$account = $row["account"];
	}
}
//	Output as e-mail
$email_out = true;

//$addresses = array("kailashbohara0x00@gmail.com");
$address = $email; 
//	Output to monitor (true or false)
$report_out = false;

//	Account name used to denote a user.
$acct = $account;
//echo $acct;

//	Set PATH
if ($_SERVER['REMOTE_ADDR']=='127.0.0.1')
{
//	*** define("PATH_DB", '{local path to}'.'/db.php}');
	define("PATH_DB", 'X:/path/to/superscan/scandb.php}');
} else {
	define("PATH_DB", "/home/account/scandb.php");
}
//Email template starts from here
$report = "Security Monitoring Daily Report.\r\n\r\n";
//Fetch changes from 1 day back.(24 hrs)
$yesterday = date("Y-m-d H:i:s", mktime(date('H'), date('i'), date('s'), date('n'), date('j')-1,date('Y')));
//$yesterday2 = date("Y-m-d H:i:s", mktime(date('H'), date('i'), date('s'), date('n'), date('j')-1,date('Y')));
$report .= "\nMonitoring report for user $acct .Changes since ".$yesterday.":\r\n\r\n";
//get changes from db
$results = mysqli_query($connection,"SELECT time_stamp, status, file_path, file_last_mod FROM file_history WHERE status IN ('Edited','Deleted') AND time_stamp > '$yesterday'");

if (!$results)
{
	$report .="No changes found!\r\n ";
} else {
	while($result=mysqli_fetch_array($results))
	{
		$report .= $result['time_stamp']." =>  ".strtoupper($result['status'])." =>  ".$result['file_path']."\r\n";

	}
	
}
$report .="\r\n Defacement Report\r\n ";
$results2 = mysqli_query($connection,"SELECT website, status, remark, date FROM Deface WHERE status = 'defaced' AND date > '$yesterday'");
// if (!$results2)
// 	{
		
	while($result2=mysqli_fetch_array($results2))

	{
		$report .= $result2['date']." =>  ".($result2['website'])." =>  ".$result2['status']."\r\n";

	}
	echo $report;
	

// OUTPUT Report
if ($email_out)
{
	$to = $address;
	$mailed = mail($to, $acct . ' Security Monitoring Report',$report); 
}

// To TEST this script, activate the following line on
if ($report_out) echo nl2br($report);

mysqli_close($connection);
?>
