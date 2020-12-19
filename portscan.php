<?php

ini_set('memory_limit','1000M');
set_time_limit(0);
error_reporting(0);

 $linux = TRUE;
 $users = array('root');
 $crawl = array('.htaccess', 'robots.txt', 'info.php', 'administrator/', 'admin/', 'cms/', 'server-status/', 'readme.html');
 $ports = array(21, 22, 23, 25, 53, 80, 110, 143, 443, 465, 3690, 1433, 3306, 5432, 8080);

if(isset($_GET['url'])) {
    echo gethostbyname($_GET['url']);
}

?>
<!DOCTYPE HTML>
<html>
<body onload="new Accordian('basic-hostscan',5,'header_highlight');">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>hostscan</title>
</head>

<div id="logo"><h1>PortScan</h1></div>
<div id="basic-hostscan" >
<div id="test-content">
<div class="hostscan_child">

<h2>Scan Settings</h2>

<form action="" method="post">
<div class="form_settings">
<p>
	<span>Start</span>
	<input class="contact" type="text" name="start" value="<?= (empty($_POST['start'])?'127.0.0.1':htmlspecialchars($_POST['start'])) ?>" />
</p>
<p>
	<span>End</span>
	<input class="contact" type="text" name="end" value="<?= (empty($_POST['end'])?'127.0.0.10':htmlspecialchars($_POST['end'])) ?>" />
</p>
<p style="padding-top: 15px">
	<span>&nbsp;</span>
	<input class="submit" type="submit" value="Scan!" />
</p>
</div>


<h2>Options</h2>

<div class="form_settings">
<p>
	<span>Nmap</span>
	<input class="contact" type="text" name="ncmd" value="<?= (empty($_POST['ncmd'])?'-sV':htmlspecialchars($_POST['ncmd'])) ?>" />
</p>
<p><span>Deep Scan</span><input class="contact" type="checkbox" name="deep" /></p>
</div>
</form>
</div>
</div>

<?php if(isset($_POST['start']) && isset($_POST['end']) && ip2long($_POST['start']) !== false && ip2long($_POST['end']) !== false) { ?>

<div id="test1-header" class="hostscan_headings">General Info</div>
<div id="test1-content">
<div class="hostscan_child">

<?php

        echo '<p><b>Target</b> '.$_POST['start'].' - '.$_POST['end'].'</p>';
        echo '<p><b>Started at</b> '.date('H:i:s').'</p>';

          if(isset($_POST['deep']) && $linux == TRUE) {
            $ncmd = $_POST['ncmd'];
            echo '<p><b>Nmap</b> ('.$_POST['start'].')</p>';
            if($ex = exec('nmap '.
            	escapeshellcmd($ncmd).
            	' '.
            	$_POST['start'], $out)) {
            foreach(array_slice($out,1,count($out)) as $rec)
            {
                echo $rec.'<br />';
            }
            } else {
            echo 'Nmap not installed.<br />';
            }
          }

        ?>

</div>
</div>

<?php

    $i = 1;
    for ($ip = ip2long($_POST['start']); $ip<=ip2long($_POST['end']); $ip++) {
      $i++;
      echo '<div id="test'.$i.'-header" class="hostscan_headings">'.long2ip($ip).'</div>';
      echo '<div id="test'.$i.'-content">';
      echo '<div class="hostscan_child">';
      

      //Ports

      echo '<p><b>Open ports:</b> ';
      foreach($ports as $port) {
        if($look = @fsockopen(long2ip($ip), $port, $err, $err_string, 1)) {
       echo $port.', ';
       fclose($look);
       }
      }
      echo '</p>';

    //HTTP


        if($checkwww = fsockopen(long2ip($ip), 80, $errno, $errstr, 5)) {

            $src = file_get_contents('http://'.long2ip($ip));
            echo '<br /><b>Response Headers</b><br />';
            foreach ($http_response_header as $header) {
                echo $header.'<br />';
            }
            foreach ($http as $metoda)
            {
         echo $metoda;
        $out = $metoda." / HTTP/1.1\r\n";
        $out .= "Host: ".long2ip($ip)."\r\n";
        $out .= "Connection: Close\r\n\r\n";
        fwrite($checkwww, $out);
        echo ' '.fgets($checkwww, 128).'<br />';
        fclose($checkwww);
        $checkwww = fsockopen(long2ip($ip), 80, $errno, $errstr, 5);
            }

    if(isset($_POST['deep'])) {
    echo '<br /><b>Title</b><br />';
    $url = 'http://'.long2ip($ip).'/';
    $fp = file_get_contents($url);

        if (preg_match("/<title>(.*)<\/title>/siU", $fp, $title_matches)) {
        $title = preg_replace('/\s+/', ' ', $title_matches[1]);
        $title = trim($title);
        echo $title.'<br />';
        } else {
            echo '...nothing here. <br />';
        }

    echo '<br /><b>Crawler</b><br />';
    foreach ($crawl as $url) {
    $urlnew = 'http://'.long2ip($ip).'/'.$url;
    $ch = curl_init($urlnew);
    curl_setopt($ch, CURLOPT_NOBODY, true);
    curl_exec($ch);
    $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);

    if($status == 200){
       echo $url.' ('.$status.')<br />';
    }
    curl_close($ch);
    }
    echo '<br />';
    }

            } else {
            echo '<h2><b>&raquo;</b> HTTP seems not working (80).</h2>';
            }
      echo '</div></div>';
    }
  }

    ?>
</div>
<div id="footer">
<p><?php echo file_get_contents('http://bot.whatismyipaddress.com/'); ?></p>
</div>
</body>
</html>