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
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
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

    <!-- Sidebar -->
<?php include 'themepart/sidebar.php'; ?>
    <!-- /.sidebar -->
  </aside>
    <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">System Monitor</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">System Monitor</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-server"></i></span>

              <div class="info-box-content">
                 <?php
                
                 $connection = mysqli_connect("localhost","root","","hash_analyzer");
                 $query = "SELECT * FROM IPstatus";
                 $query_run = mysqli_query($connection,$query);

                 if($query_run)
                 {
                  $row = mysqli_num_rows($query_run);
                  if($row)
                    {
                     // printf("Number of row in the table : " . $row);
                    }
                    mysqli_free_result($query_run);
                  }
                  ?>
                <span class="info-box-text">Devices Monitoring</span>
                <span class="info-box-number">
                  <?php echo $row; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-exclamation-triangle"></i></span>

              <div class="info-box-content">
                 <?php
                
                 $connection = mysqli_connect("localhost","root","","hash_analyzer");
                 $query = "SELECT * FROM Deface where status='defaced'";
                 $query_run = mysqli_query($connection,$query);

                 if($query_run)
                 {
                  $def = mysqli_num_rows($query_run);
                  if($def)
                    {
                    // printf("Number of row in the table : " . $row);
                    }
                    mysqli_free_result($query_run);
                  }
                  ?>
                <span class="info-box-text">Sites Attacked</span>
                <span class="info-box-number"><?php echo $def; ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-copy"></i></span>

              <div class="info-box-content">
                <?php
                
                 $connection = mysqli_connect("localhost","root","","hash_analyzer");
                 $query = "SELECT * FROM file_scan_log";
                 $query_run = mysqli_query($connection,$query);

                 if($query_run)
                 {
                  $row = mysqli_num_rows($query_run);
                  if($row)
                    {
                     // printf("Number of row in the table : " . $row);
                    }
                    mysqli_free_result($query_run);
                  }
                  ?>
                <span class="info-box-text">Files Monitoring</span>
                <span class="info-box-number"><?php echo $row; ?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-search"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Changes</span>
                <span class="info-box-number">2,000</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row --> 

        <!-- /.row -->

            <!-- Main content -->

 <div class="card">
              <div class="card-header">
                <h3 class="card-title">File Scan log</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <?php
                $connection= mysqli_connect("localhost","root","","hash_analyzer");
                $query= "SELECT * FROM file_history";
                $query_run= mysqli_query($connection,$query);
               // print_r($query_run);

                 ?>
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Status</th>
                    <th>File Path</th>
                    <th>Old Hash</th>
                    <th>New Hash</th>
                    <th>Modified Time</th>
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
                    <td> <?php echo $row['status'];?> </td>
                    <td> <?php echo $row['file_path'];?> </td>
                    <td> <?php echo $row['old_hash'];?> </td>
                    <td> <?php echo $row['new_hash'];?> </td>
                    <td> <?php echo $row['file_last_mod'];?> </td>
                  </tr>
                   <?php

                      }
                    }
                    else {
                      echo "No record found!";
                    }
                    ?>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Status</th>
                    <th>File Path</th>
                    <th>Old Hash</th>
                    <th>New Hash</th>
                    <th>Modified Time</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
            </div>
<!-- Arko table start -->
<div class="card">
              <div class="card-header">
                <h3 class="card-title">Device Monitoring</h3>
              </div>
<div class="card-body">
               <?php
                $connection= mysqli_connect("localhost","root","","hash_analyzer");
                $query= "SELECT * FROM IPstatus";
                $query_run= mysqli_query($connection,$query);
                ?>


                <table id="example2" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>IP Address</th>
                    <th>Status</th>
                    <th>Device Name</th>
                    <th>Date</th>
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
                    <td> <?php echo $row['ip_addr'];?> </td>
                    <?php $status=$row['status'];

                     if($status=='up'){
         echo "<td class='table-success'>"."System Up"."</td>"; }
        else
   
         echo "<td class='table-danger'>"."System Down"."</td>";; 

                    ?>
                    <td> <?php echo $row['device_name'];?> </td>
                    <td> <?php echo $row['date'];?> </td>
                  </tr>
                  <?php

                      }
                    }
                    else {
                      echo "No record found!";
                    }
                    ?>
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>IP Address</th>
                    <th>Status</th>
                    <th>Date</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
            </div>

<!-- arko table finish -->
</section>
</div>
</div>

</div>
<?php include 'themepart/footer.php'; ?>
          
<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="dist/js/demo.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="plugins/raphael/raphael.min.js"></script>
<script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>

<!-- PAGE SCRIPTS -->
<script src="dist/js/pages/dashboard2.js"></script>

     <script type="text/javascript">
    setInterval(
      function(){
        $.getJSON("IPstatus/check.php",function(e){
          document.getElementById("check").innerHTML=e.Check;
        })
        $('#table_id').DataTable().ajax.reload();
      },60000); //60000 Millisecond = 1 minute
  </script>

<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
  });
</script>
</body>
</html>
