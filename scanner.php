<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

require('configure.php');
require('config.php');

//starting varibale for generating report
$report = "SecMon File Check for $acct\r\n\r\n";

//intitializing arrays 
$baseline = array();
$current = array();
$added = array();
$altered = array();
$deleted = array();	
$testing = null;

//	Get date and time of last scan for report
$last_scanned_records = @mysqli_query($scandb, "SELECT `scan_log` FROM scan_time WHERE `acct` = '$acct' ORDER BY `scan_time` DESC LIMIT 1");
if ($last_scanned_records && 0 < mysqli_num_rows($last_scanned_records))
{
	//	Get last timestamp
	while($last_datetime = @mysqli_fetch_assoc($last_scanned_records))
	{
		$last_scanned = $last_datetime['scan_time'];
		$firstscan = false;
	}
} else {
	$firstscan = true;
	$count_baseline = 0;
}

//Start timer (scan duration)
$start = microtime(true);

//get file paths, hash values and last modified dates to compare against current files

$baseline_results = @mysqli_query($scandb,"SELECT `file_path`, `file_hash`, `file_last_mod` FROM file_scan_log WHERE `acct` = '$acct' ORDER BY `file_path` ASC");

if ($baseline_results) 
{
	while ($baseline_files = @mysqli_fetch_assoc($baseline_results))
	{
		$baseline[$baseline_files['file_path']] = array(
			'file_hash' => $baseline_files['file_hash'],
			'file_last_mod' => $baseline_files['file_last_mod']);
	}

	//Get the count of baseline records
	$count_baseline = count($baseline);

	if (0 == $count_baseline) 
	{
		//Check for missing file by checking $firstscan
		if (!$firstscan)
		{
			$report .= "Empty baseline table!\r\nPROBABLE ATTACK\r\n(ALL files are deleted)!\r\n\r\n";	
		}
	}
	
	$report .= "$count_baseline files accessed by an attacker.\r\n";
	
}

//Scan directories and generate hash values for current files
$dir = new RecursiveDirectoryIterator(SCAN_PATH);
$iter = new RecursiveIteratorIterator($dir);
while ($iter->valid())
{
	//skip directories with dot and probhited directories
	if (!$iter->isDot() && !(in_array($iter->getSubPath(), $skip)))
	{
		//	Get or set file extension ('' vs null)
		if (is_null(pathinfo($iter->key(), PATHINFO_EXTENSION)))
		{
			$ext = '';
		} else {
			$ext = strtolower(pathinfo($iter->key(), PATHINFO_EXTENSION));
		}
		//Check for allowed file extension OR defined in $ext_array variable from
		if (
			(in_array($ext, $ext_array, true)) ||	
			// in allowed extension array
			(empty($ext_array) && !in_array($ext, $excl_array, true)) ||	
			// OR NOT in excluded extension array
			(empty($ext) && $extensionless) )	
			// OR extensionless AND extensionless is allowed
		{
			$file_path = $iter->key();
			//Ensure $file_path without \'s (backslash) ,,if found replace with /
			$file_path = str_replace(chr(92),chr(47),$file_path);
			
			//Handle addition to $current array
			$current[$file_path] = array('file_hash' => hash_file("sha1", $file_path), 'file_last_mod' => date("Y-m-d H:i:s", filemtime($file_path)));

			//IF file_path is not in baseline, file was ADDED
			if (!array_key_exists($file_path, $baseline))
			{
				$added[$file_path] = array('file_hash' => $current[$file_path]['file_hash'], 'file_last_mod' => $current[$file_path]['file_last_mod']);
			
				//INSERT added record in baseline table
				@mysqli_query($scandb, "INSERT INTO file_scan_log SET `file_path` = '$file_path', `file_hash` = '" . $added[$file_path]['file_hash'] . "', `file_last_mod` = '" . $added[$file_path]['file_last_mod'] . "', `acct` = '$acct'");
				if ($testing && mysqli_error($scandb)) echo mysqli_error($scandb);

				//INSERT added file record in history table except if it is $firstscan to prevent unnecessary records
				if(!$firstscan) 
				{
					@mysqli_query($scandb, "INSERT INTO file_history SET `time_stamp` = '" . date('Y-m-d h:i:s') . "', `status` = 'Added', `file_path` = '$file_path', `old_hash` = 'Not Applicable', `new_hash` = '" . $added[$file_path]['file_hash'] . "', `file_last_mod` = '" . $added[$file_path]['file_last_mod'] . "', `acct` = '$acct'");
					if ($testing && mysqli_error($scandb)) echo mysqli_error($scandb);
				}  else {
					//	First Scan entry into history table
 					@mysqli_query($scandb, "INSERT INTO file_history SET `time_stamp` = '" . date('Y-m-d h:i:s') . "', `status` = 'Added', `file_path` = 'FIRST SCAN', `old_hash` = 'Not Applicable', `new_hash` = 'Not Applicable', `file_last_mod` = 'Not Applicable', `acct` = '$acct'");
					if ($testing && mysqli_error($scandb)) echo mysqli_error($scandb);
				}	//	End of handling $added array entry

			} else {

				//If file is edited 
				if ($baseline[$file_path]['file_hash'] <> $current[$file_path]['file_hash'] || $baseline[$file_path]['file_last_mod'] <> $current[$file_path]['file_last_mod'])
				{
					$altered[$file_path] = array('old_hash' => $baseline[$file_path]['file_hash'], 'new_hash' => $current[$file_path]['file_hash'], 'file_last_mod' => $current[$file_path]['file_last_mod']);
				
					//UPDATE altered record in baseline
					@mysqli_query($scandb,"UPDATE file_scan_log SET `file_hash` = '" . $altered[$file_path]['new_hash'] . "', `file_last_mod` = '" . $altered[$file_path]['file_last_mod'] . "' WHERE `file_path` = '$file_path' AND `acct` = '$acct'");
					if ($testing && mysqli_error($scandb)) echo mysqli_error($scandb);

					//INSERT altered file info in history table
					@mysqli_query($scandb,"INSERT INTO file_history SET `time_stamp` = '" . date('Y-m-d h:i:s') . "', `status` = 'Edited', `file_path` = '$file_path', `old_hash` = '" . $altered[$file_path]['old_hash'] . "', `new_hash` = '" . $altered[$file_path]['new_hash'] . "', `file_last_mod` = '" . $altered[$file_path]['file_last_mod'] . "', `acct` = '$acct'");
					if ($testing && mysqli_error($scandb)) echo mysqli_error($scandb);
				}
			}
		}	//	End of handling $altered array entry
	}	// End of handling $current record entry
	$iter->next();
}

//	Compare and generate $deleted array $deleted contains records of file_path in $baseline but not in $current
$deleted = array_diff_key($baseline, $current);
//Next line necessary for Windows
$deleted = str_replace(chr(92),chr(47),$deleted);

foreach($deleted as $key => $value)
{
	//delete file from baseline table
	mysqli_query($scandb,"DELETE FROM file_scan_log WHERE `file_path` = '$key' LIMIT 1");
	if ($testing && mysqli_error($scandb)) 
	{
		echo mysqli_error($scandb);
	} else {
		if ($testing) echo "<p>Deleted " . $key . "'s baseline record.</p>";
	}

	//	Record deletion in history table
	@mysqli_query($scandb, "INSERT INTO file_history SET `time_stamp` = '" . date('Y-m-d h:i:s') . "', `status` = 'Deleted', `file_path` = '$key', `old_hash` = '" . $deleted[$key]['file_hash'] . "', `new_hash` = 'Not Applicable', `file_last_mod` = '" . $deleted[$key]['file_last_mod'] . "', `acct` = '$acct'");
	if ($testing && mysqli_error($scandb)) echo mysqli_error($scandb);
}
//	End of Deleted file handling
//	Get scan duration
$elapsed = round(microtime(true) - $start, 5);
	
//	Add count summary to report
$count_current = count($current);
$count_added = count($added);
if (!$firstscan)
{
	foreach($added as $filename => $value) $report .= "$indent2 + " . substr($filename,$scan_path_length) . "\r\n";
}

$count_altered = count($altered);
$report .= "$indent $count_altered EDITED files updated.\r\n";
foreach($altered as $filename => $value) $report .= "$indent2 " . chr(177) . " " . substr($filename,$scan_path_length) . "\r\n";

$count_deleted = count($deleted);
$report .= "$indent $count_deleted files DELETED from baseline.\r\n";
foreach($deleted as $filename => $value) $report .= "$indent2 - " . substr($filename,$scan_path_length) . "\r\n";

echo "\r\n";

$count_changes = $count_added + $count_altered + $count_deleted;
	
//Completed update of history table for Unchanged

if (0 == $count_changes)
{  
    $path = "No changes in files.\r\n";

	//	Update history table
	@mysqli_query($scandb,"INSERT INTO file_history SET `time_stamp` = '" . date('Y-m-d h:i:s') . "', `status` = 'Unchanged', `file_path` = '$path', `old_hash` = 'Not Applicable', `new_hash` = 'Not Applicable', `file_last_mod` = 'Not Applicable', `acct` = '$acct'");
	if (mysqli_error($scandb)) echo mysqli_error($scandb);

	// update scanned table
	@mysqli_query($scandb,"INSERT INTO scan_log SET `scan_time` = '" . date('Y-m-d h:i:s') . "', `changes` = '$count_changes', `acct` = '$acct'");  
	if ($testing && mysqli_error($scandb)) echo mysqli_error($scandb);

	$report .= "File structure is unchanged since last scan.\r\n\r\nThe baseline now contains $count_current files.\r\n\r\nScan executed in $elapsed seconds.";
	
} else {
	
	@mysqli_query($scandb,"INSERT INTO scan_log SET `scan_time` = '" . date('Y-m-d h:i:s') . "', `found_changes` = '$count_changes', `acct` = '$acct'");  
	if ($testing && mysqli_error($scandb)) echo mysqli_error($scandb);

//	Clean-up history table and scanned table by deleting entries over 30 days old
@mysqli_query($scandb,"DELETE FROM file_history WHERE `time_stamp` < DATE_SUB(NOW(), INTERVAL 30 DAY)");
if ( mysqli_error($scandb)) echo "History table clean-up problem: " . mysqli_error($scandb) . "<br />";

@mysqli_query($scandb,"DELETE FROM scan_log WHERE `scan_time` < DATE_SUB(NOW(), INTERVAL 30 DAY)");
if ( mysqli_error($scandb)) echo "Scanned table clean-up problem: " . mysqli_error($scandb) . "<br />";
}
//	Destroy tables (release to memory)
$baseline = $current = $added = $altered = $deleted = array();
@mysqli_close($scandb);
echo "{\"Check\":\"Mate\"}";
?>
