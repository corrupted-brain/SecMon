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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
            <h1>File Scan Setting </h1>
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
                <h3 class="card-title">Setting</h3>
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
                  $query= "SELECT * FROM filescan_config";
                  $query_run= mysqli_query($connection,$query);

                  ?>
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Account</th>
                      <th>Scan Path</th>
                      <th>Email</th>
                      <th>Extension</th>
                      <th>Edit</th>
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
                       <td> <?php echo $row['account'];?> </td>
                       <td> <?php echo $row['scan_path'];?> </td>
                       <td> <?php echo $row['email'];?> </td>
                       <td> <?php echo $row['file_extensions'];?> </td>
                       <td>
                           <button type="button" class="btn btn-success editbtn" data-toggle="modal" data-target="#editScanModal">Edit</button>
                         </form>
                       </td>
                       <td>
                      
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

<!-- user edit menu--->
  <div id="editScanModal" class="modal fade">
   <div class="modal-dialog">
      <div class="modal-content">
         <form action="code.php" method="POST">
            <div class="modal-header">
               <h4 class="modal-title">Setting</h4>
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
              <div class="input-group mb-3">
                                <input type="hidden" name="id" id="id">
                            </div>
               <div class="input-group mb-3">
                  <input type="text" class="form-control" name="account" id="account" placeholder="Account">
                  <div class="input-group-append">
                     <div class="input-group-text">
                        <span class="fas fa-user"></span>
                     </div>
                  </div>
               </div>
               <div class="input-group mb-3">
                  <input type="text" class="form-control" name="path" id="path" placeholder="Scan Path">
                  <div class="input-group-append">
                     <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                     </div>
                  </div>
               </div>
               <div class="input-group mb-3">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                  <div class="input-group-append">
                     <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                     </div>
                  </div>
               </div>
               <div class="input-group mb-3">
                  <input type="text" class="form-control" name="extension" id="extension" placeholder="Extensions">
                  <div class="input-group-append">
                     <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                     </div>
                  </div>
               </div>
            </div>
            <div class="modal-footer">
               <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
               <input type="submit" name="updatescandata" class="btn btn-success" value="Update">
            </div>
         </form>
      </div>
   </div>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 <script>
        $(document).ready(function() {
            $('.editbtn').on('click', function() {
                $('#editUserModal').modal('show');
                $tr = $(this).closest('tr');
                var data = $tr.children("td").map(function() {
                    return $(this).text();
                }).get();
                console.log(data);

                $('#id').val(data[0]);
                $('#account').val(data[1]);
                $('#path').val(data[2]);
                $('#email').val(data[3]);
                $('#extension').val(data[4]);                

            });
        });
    </script>
</body>
</html>
