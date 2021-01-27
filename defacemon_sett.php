<!DOCTYPE html>
<html>

<head>
    <?php include ( 'security.php'); ?>
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
        <?php include 'themepart/sidebar.php'; ?>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>IP Monitor Setting</h1>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addURLModal">ADD New Webpage</button>
                            <!-- <a href="#addIPModal" class="btn btn-success" data-toggle="modal"><i class="material-icons"></i> <span>Add New IP Address</span></a>-->
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
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
                                    <h3 class="card-title">Monitoring Websites</h3>
                                    <?php if (isset($_SESSION[ 'success']) && $_SESSION[ 'success'] !='' ) { echo '<h2>' . $_SESSION[ 'success'] . '</h2>'; unset($_SESSION[ 'success']); } if (isset($_SESSION[ 'status']) && $_SESSION[ 'status'] !='' ) { echo '<h2>' . $_SESSION[ 'status'] . '</h2>'; unset($_SESSION[ 'status']); } ?>

                                    <!-- /.card-header -->
                                    <div class="card-body table-responsive p-0" style="height: 400px;">

                                        <?php $connection=mysqli_connect( "localhost", "root", "", "hash_analyzer"); $query="SELECT * FROM deface_config" ; $query_run=mysqli_query($connection, $query); ?>
                                        <table class="table table-head-fixed text-nowrap">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Webpage</th>
                                                    <th>Description</th>
                                                    <th>Email</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php if (mysqli_num_rows($query_run)> 0) { while ($row = mysqli_fetch_assoc($query_run)) { ?>

                                                <tr>
                                                    <td>
                                                        <?php echo $row[ 'id']; ?> </td>
                                                    <td>
                                                        <?php echo $row[ 'website']; ?> </td>
                                                    <td>
                                                        <?php echo $row[ 'description']; ?> </td>
                                                        <td>
                                                        <?php echo $row[ 'email']; ?> </td>

                                                    <td>
                                                        <!--<a href="#editIPModal" class="btn btn-success editbtn" data-toggle="modal">Edit</a>-->
                                                        <button type="button" class="btn btn-success editbtnweb" data-toggle="modal" data-target="#editURLModal">Edit</button>
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-danger deletebtnweb" data-toggle="modal" data-target="#deleteURLModal">Delete</button>
                                                    </td>

                                                </tr>
                                                <?php } } else { echo "No record found!"; } ?>

                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- Add Modal HTML -->
        <div id="addURLModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="code.php" method="POST">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Webpage</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>

                        <div class="modal-body">
                            <div class="form-group">
                                <label>Webpage</label>
                                <input type="text" name="website" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <input type="text" name="description" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Contact</label>
                                <input type="text" name="contact" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" name="insertwebdata" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editURLModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="code.php" method="POST">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Webpage</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>

                        <div class="modal-body">
                            <div class="form-group">
                                <input type="hidden" name="id" id="id">
                            </div>
                            <div class="form-group">
                                <label>Webpage</label>
                                <input type="text" name="website" id="website" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <input type="text" name="description" id="description" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="email" id="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Contact</label>
                                <input type="text" name="contact" id="contact" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" name="updatewebdata" class="btn btn-success" value="Update">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteURLModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="code.php" method="POST">
                        <div class="modal-body">
                            <div class="modal-header">
                                <h4 class="modal-title">Delete Webpage</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="delete_id" id="delete_id">
                                <p>Are you sure you want to delete the website?</p>
                                <p class="text-danger"><small>This action cannot be undone.</small>
                                </p>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" name="deletewebdata" class="btn btn-danger" value="Delete">
                            </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $('.editbtnweb').on('click', function() {
                $('#editURLModal').modal('show');
                $tr = $(this).closest('tr');
                var data = $tr.children("td").map(function() {
                    return $(this).text();
                }).get();
                console.log(data);

                $('#id').val(data[0]);
                $('#website').val(data[1]);
                $('#description').val(data[2]);
                $('#email').val(data[3]);
                $('#contact').val(data[4]);

            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $('.deletebtnweb').on('click', function() {
                $('#deleteURLModal').modal('show');
                $tr = $(this).closest('tr');
                var data = $tr.children("td").map(function() {
                    return $(this).text();
                }).get();
                console.log(data);

                $('#delete_id').val(data[0]);

            });
        });
    </script>
</body>

</html>