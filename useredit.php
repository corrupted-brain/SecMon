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
            <h1>User Management</h1>
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

            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Users</h3>
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
              <div class="card-body table-responsive p-0" style="height: 300px;">

                  <?php
                  $connection= mysqli_connect("localhost","root","","hash_analyzer");
                  $query= "SELECT * FROM users";
                  $query_run= mysqli_query($connection,$query);

                  ?>
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>User's Name</th>
                      <th>E-mail</th>
                     <!-- <th>Password</th>-->
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
                       <td> <?php echo $row['name'];?> </td>
                       <td> <?php echo $row['email'];?> </td>
                       <!--<td> <?php echo $row['password'];?> </td>-->
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


              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>

        <!-- /.row -->
      </div><!-- /.container-fluid -->
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
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
