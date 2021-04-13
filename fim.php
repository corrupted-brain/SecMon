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
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">

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
            <h1>File Integrity Monitoring</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- /.row -->
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"></h3>
                <div class="card-body">


                <table id="table_id" class="display nowrap" cellspacing="0" width="100%">
                  <thead>
                  <tr>
                    <th>Status</th>
                    <th>Path</th>
                    <th>Modified hash</th>
                    <th>old hash</th>
                    <th>Modified Time</th>
                    <th>User</th>
                  </tr>
                  </thead>
                  <tfoot>
                  <tr>
                    <th>Status</th>
                    <th>Path</th>
                    <th>Modified hash</th>
                    <th>old hash</th>
                    <th>Modified Time</th>
                    <th>User</th>
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
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
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

<!-- PAGE SCRIPTS -->
<script src="dist/js/pages/dashboard3.js"></script>
 <script type="text/javascript">
    setInterval(
      function(){
        $.getJSON("IPstatus/check.php",function(e){
          document.getElementById("check").innerHTML=e.Check;
        })
        $('#table_id').DataTable().ajax.reload();
      },60000); //60000 Millisecond = 1 minute
  </script>

<script type="text/javascript">
  $(document).ready(function() {
      $('#table_id').DataTable({
        "language": {
          "infoEmpty": "No records available.",
        },
        "paging": true,
        "processing": true,
        "fixedHeader": true,
        //"serverSide": true,
        ajax: {
          url: 'FileScanStatus/index.php',
          dataSrc: 'FileScanStatus',
        },
        columns: [
          { data: 'status' },
          { data: 'file_path' },
          { data: 'new_hash' },
          { data: 'old_hash' },
          { data: 'file_last_mod' },
          { data: 'acct' }
          ],
        columnDefs: [{targets: 0,
                    render: function ( data, type, row ) {
                      var color = 'black';
                      if (data == 'Unchanged') {
                        color = 'green';
                      } 
                      if (data == 'Altered') {
                        color = '#ff4d4d';
                      }
                      if (data == 'Deleted') {
                        color = '#ff0000';
                      }
                      if (data == 'Added') {
                        color = '#0040ff';
                      }
                      return '<span style="color:' + color + '">' + data + '</span>';
                    }
               }],
        responsive: {
            details: {
                display: $.fn.dataTable.Responsive.display.modal({
                    header: function ( row ) {
                        var data = row.data();
                        return 'Details for user '+data['acct'];
                    }
                }),
                renderer: $.fn.dataTable.Responsive.renderer.tableAll()
            }
        }
    
        });
    });
      </script>
    </body>
</html>
