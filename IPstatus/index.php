<!DOCTYPE html>
<html>
<head>
	<title>Check IP</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<br/>
	<center>
		<h2>Checking IPs After Each 1 Minute</h2>
		<h3 id="check">Check</h3>
	</center>
	<br/>
	<table id="table_id" class="display">
		<thead>
			<tr>
				<th>ID</th>
                <th>IP Address</th>
                <th>Status</th>
                <th>Date</th>
            </tr>
        </thead>
    </table>
	 <script type="text/javascript">
		setInterval(
			function(){
				$.getJSON("check.php",function(e){
					document.getElementById("check").innerHTML=e.Check;
				})
				$('#table_id').DataTable().ajax.reload();
			},60000); //60000 Millisecond = 1 minute
	</script> 
<!--<script>
    $(document).ready(function () {
  function reload() {
    $("#content").load("check.php");
  }
  setTimeOut(reload, seconds*1000)
}
</script> -->

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script type="text/javascript">
    	$('#table_id').DataTable({
    		"language": {
    			"infoEmpty": "No records available.",
    		},
    		"paging": true,
    		"processing": true,
    		//"serverSide": true,
    		ajax: {
    			url: 'api/index.php',
    			dataSrc: 'IPstatus',
    		},
    		columns: [
    			{ data: 'id' },
    			{ data: 'ip_addr' },
    			{ data: 'status' },
    			{ data: 'logged_date' }
    			],
    		responsive: true,

    		});
    </script>
</body>
</html>