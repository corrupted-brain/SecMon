
 <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="dashboard.php" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->

      <!-- Notifications Dropdown Menu -->

      <li class="nav-item dropdown user-menu">
        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
          <img src="avatar.png" class="user-image img-circle elevation-2" alt="User Image">
          <span class="d-none d-md-inline"> <?php echo $_SESSION['username']; ?> </span>
        </a>
        <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <!-- User image -->
          <li class="user-header bg-primary">
            <img src="avatar.png" class="img-circle elevation-2" alt="User Image">

            <p>
              <?php echo $_SESSION['username']; ?> 
              <small>Member since Nov. 2012</small>
            </p>
          </li>

          <!-- Menu Footer-->
          <li class="user-footer">
            
          <!--<a href="#" class="btn btn-default btn-flat float-right">Sign out</a> -->
          <form action="logout.php" method="POST">
            <a href="#" class="btn btn-default btn-flat">Profile</a>
            <button class="btn btn-default btn-flat float-right" name="logout_btn" type="submit">Signout</button>
          </form>
        </ul>
      </li>
    </ul>

  </nav>