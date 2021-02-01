<?php
header("Content-Type: text/plain"); 

// API key
$virustotal_api_key = "959cc31aef5007c4b6966e88e88e712df7b2528a3a39523718836d4618846c6c";

// fetch file hash from  database.
$file_hash = "2d75cc1bf8e57872781f9cd04a529256";

//Checking on virustotal 
$report_url = 'https://www.virustotal.com/vtapi/v2/file/report?apikey='.$virustotal_api_key."&resource=".$file_hash;

$api_reply = file_get_contents($report_url);

// convert the json reply to an array of variables
$api_reply_array = json_decode($api_reply, true);


// your resource is queued for analysis
if($api_reply_array['response_code']==-2){
    echo $api_reply_array['verbose_msg'];
}

// reply is OK (it contains an antivirus report)
// use the variables from $api_reply_array to process the antivirus data
if($api_reply_array['response_code']==1){
    echo "\nWe got an antivirus report, there were ".$api_reply_array['positives']." positives found. Here is the full data: \n\n";
    print_r($api_reply_array);
    exit;
}
?>