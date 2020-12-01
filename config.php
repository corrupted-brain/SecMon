<?php

/* Store this file outside your webspace if possible */

	define('SERVER','localhost');
	define('USER','root');
	define('PASS','');
	define('DATABASE','hash_analyzer');
	
	$scandb = mysqli_connect(SERVER,USER,PASS,DATABASE);
?>
