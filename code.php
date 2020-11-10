<?php
include('security.php');
 

$connection = mysqli_connect("localhost","root","","hash_analyzer");

if(isset($_POST['registerbtn']))
{
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $cpassword = $_POST['confirmpassword'];

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
    $password_login = $_POST['password'];

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
        header('Location: /superscan/admin');
    }
}

# Signout from dashboard

if(isset($_POST['logout_btn']))
{
    session_destroy();
    unset($_SESSION['username']); 
}    






?>