<?php
header("Content-Type: text/plain"); 

// API key
$virustotal_api_key = "959cc31aef5007c4b6966e88e88e712df7b2528a3a39523718836d4618846c6c";


// fetch file hash from  database.
$connection = mysqli_connect("localhost","root","","hash_analyzer");
$sql = "SELECT file_hash,file_path FROM virus WHERE acct='Kailash'";
$result = mysqli_query($connection, $sql);
while($row = mysqli_fetch_assoc($result))
{
 $file_hash = $row['file_hash'];
 $file_path = $row['file_path'];

        foreach ($row as $file_hash)
        {

//echo $result;
//$file_hash = "2d75cc1bf8e57872781f9cd04a529256";

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
    echo "$file_path"." ==> There were ".$api_reply_array['positives']." positives found.\n\n";
    //print_r($api_reply_array);
    exit;
}
}
}
?>