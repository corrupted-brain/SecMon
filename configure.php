<?php
$connection = mysqli_connect("localhost","root","","hash_analyzer");
$query = "SELECT * FROM filescan_config";
$query_run = mysqli_query($connection,$query);
if (mysqli_num_rows($query_run) > 0)
{
	while ( $row = mysqli_fetch_array($query_run)) {
		$email = $row["email"];
		$account = $row["account"];
		$scan_path = $row["scan_path"];
	}
}
$acct = $account;
if ($_SERVER['REMOTE_ADDR']=='127.0.0.1')
{
//define("SCAN_PATH", '{local Virtual Host}');
	define("SCAN_PATH", '$scan_path');
} else {
	//set SCAN_PATH inside your webspace
	define("SCAN_PATH", "$scan_path");
}
$scan_path_length = strlen(SCAN_PATH);
$report_out = false;
$email_out = false;
$address = $email;
$ext_array = array(); //empty for all filetypes, right not hardcoded here 
//Make extensions lower case for scanner comparison
$ext_array = array_map('strtolower',$ext_array);
$excl_array = array('ftpquota','swf','fla'); //excluded extensions
//Make extensions lower case for scanner comparison
$excl_array = array_map('strtolower',$excl_array);
//Scan extensionless files?
$extensionless = false;
//directories to ignore,empty array will check all directories in the SCAN_PATH
$skip = array("protected", "private");
//	$indent for report indent
$indent = " &nbsp; &nbsp;";
$indent2 = $indent . $indent;

?>
