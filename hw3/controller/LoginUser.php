<?php
session_start();
include "../database/env.php";

$email = $_REQUEST['email'];
$password = $_REQUEST['password'];
$errors = [];

if(empty($email)){
    $errors['email_error'] = "Enter Your Email";
}


if(empty($password)){
    $errors['password_error'] = "Enter Your Password";
}

if(count($errors)>0){
    $_SESSION['userLogin_errors']= $errors;
    header("Location:../backend/login.php");
}else{

	// * email existence check 
    $query = "SELECT * FROM users WHERE email = '$email'";
    $result = mysqli_query($conn, $query);
  	$user = mysqli_fetch_assoc($result);
  
  // var_dump($user);
  // exit();


    if(mysqli_num_rows($result)> 0){
        $pass_vfy= password_verify($password, $user['pass']);

    if($pass_vfy){
        $_SESSION['auth']= $user;
        header("Location:../backend/index.php");
    } else {
        $errors['password_error'] = "wrong password";
        $_SESSION['userLogin_errors']= $errors;
        header("Location:../backend/login.php");
    }
       
    } 

    else{
        $errors['email_error'] = "wrong email address";
        $_SESSION['userLogin_errors']= $errors;
        header("Location:../backend/login.php");

    }
}

?>



