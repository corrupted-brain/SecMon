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

//$pattern = '/(?i:Hacked|hack|breached|Fucked|Greetz|haxor|zindabaad)/';
$pattern = '/(?i:hacked by|doxed by|hacked|greetz to|greetz|greets to|greets|defaced by|defaced|owned by|owned|rooted by|r00t|w00t|w007|r007|injected by|doxed|hacker|1337|leet|pwned|zindabaad|haxor|fucked|breached|cyber army|hacker crew|hacker crewz|we are anonymous|security is just illusion)/';
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

	$sql = "SELECT website, description FROM deface_config ORDER BY id";
	$result = mysqli_query($connection, $sql);

	while($row = mysqli_fetch_assoc($result)){
		$url = $row['website'];
		$remark = $row['description'];

		if(!empty(callURL($url))){
			if(preg_match($pattern, callURL($url))){
				$query = "INSERT INTO Deface (website,status,remark) VALUES ('$url','defaced','$remark')";
			}else{
				$query = "INSERT INTO Deface (website,status,remark) VALUES ('$url','fine','$remark')";
			}
		}else{
			$query = "INSERT INTO Deface (website,status,remark) VALUES ('$url','Something Went Wrong','$remark')";
		}
		$query_run = mysqli_query($connection,$query);
	}
	?>

</body>
</html>