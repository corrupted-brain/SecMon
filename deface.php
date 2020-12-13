<!DOCTYPE html>
<html>
<head>
	<title>Defacement Detection</title>
</head>
<body>
<?php
$connection = mysqli_connect("localhost","root","","hash_analyzer");
/*$urls=array('tcioe.edu.np/4u.html',
			'192.168.1.1',
			'google.com',
			'meteo.dhm.gov.np/cms',
			'uniglobecollege.edu.np/index1.php'
		); */

$pattern = '/(?i:Hacked|hack|breached|Fucked|Greetz|haxor|zindabaad)/';

function callURL($url){
	
	global $pattern;
	global $regexMatch;

	$curl = curl_init();
	curl_setopt_array($curl, array(
		CURLOPT_URL => $url,
		CURLOPT_RETURNTRANSFER => true,
		CURLOPT_ENCODING => "",
		CURLOPT_MAXREDIRS => 10,
		CURLOPT_TIMEOUT => 0,
		CURLOPT_FOLLOWLOCATION => true,
		CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		CURLOPT_CUSTOMREQUEST => "GET",
		CURLOPT_HTTPHEADER => array(
			'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0',
			'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
			'Connection: keep-alive',
		),
	));

	$response = curl_exec($curl);
	curl_close($curl);

	return $response;
}
?>
<pre>
	<?php
	$sql = "SELECT website, remark FROM Deface_config ORDER BY id";
	$result = mysqli_query($connection, $sql);
	while($row = mysqli_fetch_assoc($result))
	{
		$ip_addr = $row['website'];
		$remark = $row['remark'];
		foreach($row as $url){
			if(!empty(callURL($url))){
				if(preg_match($pattern, callURL($url))){
				//echo "URL: ".$url."<br>";
				//echo "Status : Website Might Be Defaced.<br><br>";
				$status = "defaced";
				 $query = "INSERT INTO Deface (website,status,remark) VALUES ('$url','$status','$remark')";
    $query_run = mysqli_query($connection,$query); 
			}else{
				//echo "URL    : ".$url."<br>";
				//echo "Status : Hurray! Website Is Fine.<br><br>";
					$status = "fine";
				 $query = "INSERT INTO Deface (website,status,remark) VALUES ('$url','$status','$remark')";
    $query_run = mysqli_query($connection,$query); 
			}
		}else{
			//echo "URL    : ".$url."<br>";
			//echo "Status : Something Went Wrong!!!<br><br>";
			$status = "Something went wrong.";
				 $query = "INSERT INTO Deface (website,status,remark) VALUES ('$url','$status','$remark')";
    $query_run = mysqli_query($connection,$query); 
		}
	}
}
	?>

</body>
</html>
