<?php

$acct = 'Kailash';

if ($_SERVER['REMOTE_ADDR']=='127.0.0.1')
{
//	***	define("SCAN_PATH", '{local Virtual Host}');
	define("SCAN_PATH", '/home/kailash/Desktop/college');
//	*** define("SCANNER_PATH", '{local path to}'.'/scandb.php}');
	//	define("SCANNER_PATH", 'X:/path/to/superscan/');
} else {
	//	For security, set SCAN_PATH inside your webspace
	define("SCAN_PATH", "/home/kailash/Desktop/college");
	// 	and SCANNER_PATH outside (NOT in public_html)	
	//	define("SCANNER_PATH", "/home/account/superscan/");
}
$scan_path_length = strlen(SCAN_PATH);

$report_out = false;

$email_out = false;

$addresses = array("kailashbohara0x00@gmail.com");

$ext_array = array(); //empty for all filetypes
//	Make extensions lower case for scanner comparison
$ext_array = array_map('strtolower',$ext_array);

$excl_array = array('ftpquota','swf','fla'); //excluded extensions
//	Make extensions lower case for scanner comparison
$excl_array = array_map('strtolower',$excl_array);

//	Scan extensionless files?
$extensionless = false;

// 	directories to ignore
//		An empty array will check all directories in the SCAN_PATH tree
$skip = array("protected", "private");

//	$indent for report indent
$indent = " &nbsp; &nbsp;";
$indent2 = $indent . $indent;

?>
