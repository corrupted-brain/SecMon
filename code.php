<?php
include('security.php');
 

$connection = mysqli_connect("localhost","root","","hash_analyzer");

//$whiteSpace = '\s';  //if you dnt even want to allow white-space set it to ''
//$pattern = '/[^a-zA-Z0-9'  . $whiteSpace . ']/u';


if(isset($_POST['insertuserdata']))
{
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = sha1($_POST['password']);
    $cpassword = sha1($_POST['confirmpassword']);

    $email_query = "SELECT * FROM users WHERE email='$email' ";
    $email_query_run = mysqli_query($connection, $email_query);
    if(mysqli_num_rows($email_query_run) > 0)
    {
        $_SESSION['status'] = "Email Already Taken. Please Try Another one.";
        $_SESSION['status_code'] = "error";
        header('Location: useredit.php');  
    }
    else
    {
        if($password === $cpassword)

        {
            $query = "INSERT INTO users (name,email,password) VALUES ('$name','$email','$password')";
            $query_run = mysqli_query($connection, $query);
            
            if($query_run)
            {
                //echo "Saved";
                $_SESSION['status'] = "Admin Profile Added";
                $_SESSION['status_code'] = "success";
                header('Location: useredit.php');
            }
            else 
            {
                $_SESSION['status'] = "Admin Profile Not Added";
                $_SESSION['status_code'] = "error";
                header('Location: useredit.php');  
            }
        }
        else 
        {
            $_SESSION['status'] = "Password and Confirm Password Does Not Match";
            $_SESSION['status_code'] = "warning";
            header('Location: register.php');  
        }
    }

}

# Useredit file update start

if(isset($_POST['updateuserdata']))
{
    $id = $_POST['id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = sha1($_POST['password']);
    $password = sha1($_POST['password']);

    $query = "UPDATE users SET name='$name', email='$email', password='$password' WHERE id='$id' ";
    $query_run = mysqli_query($connection,$query); 

    if($query_run)
    {
        $_SESSION['success'] = "Profile updated";
        header('Location: useredit.php');
    }
    else
    {
        $_SESSION['status'] = "Profile not updated.";
        header('Location: useredit.php');
    }
}
# USer Delete function starts here..

if(isset($_POST['deleteuserdata']))
{
    $id =  $_POST['delete_id'];
    $query = "DELETE FROM users WHERE id='$id' ";
    $query_run = mysqli_query($connection,$query);

    if($query_run)
    {
        $_SESSION['success'] = "<script>alert(\"User Deleted Successfully\")</script>";
        header('Location: useredit.php');
    }
    else
    {
        $_SESSION['status'] = "User deletion failed.";
        header('Location: useredit.php');
    }   
}

# main login function starts here

if(isset($_POST['login_btn']))
{
    $email_login = $_POST['email'];
    $password_login = sha1($_POST['password']);

    $query = "SELECT * FROM users WHERE email='$email_login' AND password='$password_login' ";
    $query_run = mysqli_query($connection,$query);

    if(mysqli_fetch_array($query_run))
    {
        $_SESSION['username']= $email_login;
        header('Location: dashboard.php');
    }
    else
    {
        $_SESSION['status']= "Either email or password is invalid.";
        header('Location: /SecMon/');
    }
}

#Insert IP monitor setting Data
if(isset($_POST['insertdata']))
{
    $ipaddress = $_POST["ipaddress"];
    $devicename = $_POST["devicename"];
    //$devicename = preg_replace($pattern, '', (string) $devicename);

    $query = "INSERT INTO IPstatus_config (ip_addr,device_name) VALUES ('$ipaddress','$devicename')";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        echo "Success";
        header('Location: ipmon_sett.php');
    }
    else
    {
        echo "Failed";
        header('Location: ipmon_sett.php');
    }
}


#Update IP monitor setting Data
if(isset($_POST['updatedata']))
{
    $id = $_POST["id"];
    $ipaddress = $_POST["ipaddress"];
    $devicename = $_POST["devicename"];

    $query = "UPDATE IPstatus_config SET ip_addr='$ipaddress', device_name='$devicename' WHERE id='$id'";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        echo "<script>alert(1)</script>";
        header('Location: ipmon_sett.php');
    }
    else
    {
        echo "Failed";
        header('Location: ipmon_sett.php');
    }
}

#Delete IP monitor setting Data
if(isset($_POST['deletedata']))
{
    $id = $_POST["delete_id"];

    $query = "DELETE FROM IPstatus_config WHERE `id`='$id'";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        echo "<script>alert(1)</script>";
        header('Location: ipmon_sett.php');
    }
    else
    {
        echo "Failed";
        header('Location: ipmon_sett.php');
    }
}


#Insert Webpage monitor setting Data
if(isset($_POST['insertwebdata']))
{
    $website = $_POST["website"];
    $description = $_POST["description"];
    $email = $_POST["email"];
    $contact = $_POST["contact"];

    $query = "INSERT INTO deface_config (website,description,email,contact) VALUES ('$website','$description','$email','contact')";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        echo "Success";
        header('Location: defacemon_sett.php');
    }
    else
    {
        echo "Failed";
        header('Location: defacemon_sett.php');
    }
}


#Update Webpage monitor setting Data
if(isset($_POST['updatewebdata']))
{
    $id = $_POST["id"];
    $website = $_POST["website"];
    $description = $_POST["description"];
    $email = $_POST["email"];
    $contact = $_POST["contact"];

    $query = "UPDATE deface_config SET website='$website', description='$description', email='$email', contact='$contact' WHERE id='$id'";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        echo "Success";
        header('Location: defacemon_sett.php');
    }
    else
    {
        echo "Failed";
        header('Location: defacemon_sett.php');
    }
}

#Delete Webpage monitor setting Data
if(isset($_POST['deletewebdata']))
{
    $id = $_POST["delete_id"];

    $query = "DELETE FROM deface_config WHERE `id`='$id'";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        echo "<script>alert(1)</script>";
        header('Location: defacemon_sett.php');
    }
    else
    {
        echo "Failed";
        header('Location: defacemon_sett.php');
    }
}


#Update file scan setting Data i.e scan_setting.php
if(isset($_POST['updatescandata']))
{
    $id = $_POST["id"];
    $account = $_POST["account"];
    $path = $_POST["path"];
    $email = $_POST["email"];
    $extension = $_POST["extension"];

    $query = "UPDATE filescan_config SET account='$account', scan_path='$path', email='$email', file_extensions='$extension' WHERE id='$id'";
    $query_run = mysqli_query($connection, $query);

    if($query_run)
    {
        echo "Success";
        header('Location: scan_setting.php');
    }
    else
    {
        echo "Failed";
        header('Location: scan_setting.php');
    }
}
# Signout from dashboard

if(isset($_POST['logout_btn']))
{
    session_destroy();
    unset($_SESSION['username']); 
}    






?>