<?php
include('security.php');
 

$connection = mysqli_connect("localhost","root","","hash_analyzer");

if(isset($_POST['registerbtn']))
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
        header('Location: register.php');  
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
                header('Location: register.php');
            }
            else 
            {
                $_SESSION['status'] = "Admin Profile Not Added";
                $_SESSION['status_code'] = "error";
                header('Location: register.php');  
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

if(isset($_POST['updatebtn']))
{
    $id = $_POST['edit_id'];
    $name = $_POST['edit_name'];
    $email = $_POST['edit_email'];
    $password = $_POST['edit_password'];

    $query = "UPDATE users SET name='$name', email='$email', password='$password WHERE id='$id' ";
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

if(isset($_POST['delete_btn']))
{
    $id =  $_POST['delete_id'];
    $query = "DELETE FROM users WHERE id='$id' ";
    $query_run = mysqli_query($connection,$query);

    if($query_run)
    {
        $_SESSION['success'] = "User Deleted.";
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
# Signout from dashboard

if(isset($_POST['logout_btn']))
{
    session_destroy();
    unset($_SESSION['username']); 
}    






?>