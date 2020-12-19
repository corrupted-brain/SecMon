<!DOCTYPE html>
<html>
<head>
	<?php include('security.php'); ?>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SecMon</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="dist/css/adminlte.min.css">
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<?php include 'themepart/nav-bar.php'; ?>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<?php include 'themepart/sidebar.php';
		?>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>IP Monitor Setting</h1>		<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#IPsettingModal">
							Add New IP
						</button>
						</div>
					</div>
				</div><!-- /.container-fluid -->
			</section>

			<!-- Main content -->

			<div class="container-fluid">

				<!-- /.row -->
				<div class="row">
					<div class="col-12">

						<!-- /.card -->
					</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Monitoring Address</h3>
								<?php
								if (isset($_SESSION['success']) && $_SESSION['success'] !='')
								{
									echo '<h2>'.$_SESSION['success'].'</h2>';
									unset($_SESSION['success']);
								}
								if (isset($_SESSION['status']) && $_SESSION['status'] !='')
								{
									echo '<h2>'.$_SESSION['status'].'</h2>';
									unset($_SESSION['status']);
								}
								?>

								<!-- /.card-header -->
								<div class="card-body table-responsive p-0" style="height: 500px;">

									<?php
									$connection= mysqli_connect("localhost","root","","hash_analyzer");
									$query= "SELECT * FROM IPstatus_config";
									$query_run= mysqli_query($connection,$query);

									?>
									<table class="table table-head-fixed text-nowrap">
										<thead>
											<tr>
												<th>ID</th>
												<th>IP Address</th>
												<th>Device Name</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tbody>
											<?php
											if(mysqli_num_rows($query_run)> 0)
											{
												while($row = mysqli_fetch_assoc($query_run))
												{
													?>

													<tr>
														<td> <?php echo $row['id'];?> </td>
														<td> <?php echo $row['ip_addr'];?> </td>
														<td> <?php echo $row['device_name'];?> </td>
														<td>
															<form action="registeredit.php" method="POST">
																<input type="hidden" name="edit_id" value=" <?php echo $row['id'];?> ">
																<button type="submit" name="edit_btn" class="btn btn-success" >Edit</button>
															</form>
														</td>
														<td>
															<form action="code.php" method="POST">
																<input type="hidden" name="delete_id" value="<?php echo $row['id'];?> ">
																<button type="submit" name="delete_btn" class="btn btn-danger">Delete</button>
															</form>
														</td>

													</tr>
													<?php

												}
											}
											else {
												echo "No record found!";
											}
											?>

										</tbody>
									</table>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
						
<div class="modal fade" id="IPsettingModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="IPsettingModal">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="code.php" method="POST">
      <div class="modal-body">

      		<div class="form-group">
      			<label>IP address</label>
      			<input type="text" name="ipaddress" class="form-control">
      		</div>
      		<div class="form-group">
      			<label>Device Name</label>
      			<input type="text" name="devicename" class="form-control">
      		</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" name="insertdata" class="btn btn-primary">Save</button>
      </div>
      </form>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

</body>
</html>