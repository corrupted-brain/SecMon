
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">SystemMon</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">kailash</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="dashboard.php" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li> 
          <li class="nav-header">Menu</li>
          <li class="nav-item has-treeview">
            <a href="webmon.php" class="nav-link">
              <i class="nav-icon fa fa-exclamation-triangle"></i>
              <p>
                Deface Monitor
              </p>
            </a>
             <li class="nav-item has-treeview">
            <a href="ipmon.php" class="nav-link">
              <i class="nav-icon fa fa-desktop"></i>
              <p>
                IP Monitor
              </p>
            </a>
          <li class="nav-header">Management</li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="fas fa-users"></i>
              <p>
                User Management
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#addIPModal" data-toggle="modal" data-target="#addIPModal" class="nav-link">
                  <i class="far fas fa-user-plus"></i>
                  <p> Add User</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="useredit.php" class="nav-link">
                  <i class="fas fa-user-edit"></i>
                  <p>Edit User</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-cog"></i>
              <p>
                Configuration
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="defacemon_sett.php" class="nav-link">
                  <i class="fa fa-exclamation-triangle"></i>
                  <p> Deface Monitor Setting</p>
                </a>
              </li>
            </ul>
              <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="ipmon_sett.php" class="nav-link">
                  <i class="fa fa-desktop" aria-hidden="true"></i>
                  <p>IP Monitor Setting</p>
                </a>
              </li>
            </ul>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  <!-- user register menu--->
  <div id="addIPModal" class="modal fade">
   <div class="modal-dialog">
      <div class="modal-content">
         <form action="code.php" method="POST">
            <div class="modal-header">
               <h4 class="modal-title">Add New User</h4>
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
               <div class="input-group mb-3">
                  <input type="text" class="form-control" name="name" placeholder="Full name">
                  <div class="input-group-append">
                     <div class="input-group-text">
                        <span class="fas fa-user"></span>
                     </div>
                  </div>
               </div>
               <div class="input-group mb-3">
                  <input type="email" class="form-control" name="email" placeholder="Email">
                  <div class="input-group-append">
                     <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                     </div>
                  </div>
               </div>
               <div class="input-group mb-3">
                  <input type="password" class="form-control" name="password" placeholder="Password">
                  <div class="input-group-append">
                     <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                     </div>
                  </div>
               </div>
               <div class="input-group mb-3">
                  <input type="password" class="form-control" name="confirmpassword" placeholder="Retype password">
                  <div class="input-group-append">
                     <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                     </div>
                  </div>
               </div>
            </div>
            <div class="modal-footer">
               <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
               <input type="submit" name="insertuserdata" class="btn btn-success" value="Add">
            </div>
         </form>
      </div>
   </div>
</div>
