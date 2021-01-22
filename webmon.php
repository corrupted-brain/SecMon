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
            <h1>Website Monitoring</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">


        <!-- /.row -->
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"></h3>
                <div class="card-body">

                <?php
                $connection= mysqli_connect("localhost","root","","hash_analyzer");
                $query= "SELECT * FROM Deface";
                $query_run= mysqli_query($connection,$query);
                ?>


                <table id="example2" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Website</th>
                    <th>Status</th>
                    <th>Description</th>
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
                    <td> <?php echo $row['website'];?> </td>
                    <?php $status=$row['status'];

                     if($status=='fine'){
         echo "<td class='table-success'>"."Website is fine."."</td>"; }
        else
   
         echo "<td class='table-danger'>"."Website might be defaced."."</td>";; 

                    ?>
                    <td> <?php echo $row['remark'];?> </td>
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
                    <th>Description</th>
                    <th>Date</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
            </div>
                


              </div>


              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>

        <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>

  <!-- /.content-wrapper -->
<?php include 'themepart/footer.php'; ?>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
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
</body>
</html>