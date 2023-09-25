<?php 

	session_start();
	include "../database/env.php";

	$fname = $_REQUEST['fname'];
	$lname = $_REQUEST['lname'];
	$email = $_REQUEST['email'];
	$pass = $_REQUEST['pass'];
	$encPass = password_hash($pass, PASSWORD_BCRYPT);
	$passCheck = $_REQUEST['passCheck'];
	$errors = [];


//validation check

	if (empty($fname)) {
		$errors['fname_error'] = "Enter your first name";
	}

	if (empty($lname)) {
		$errors['lname_error'] = "Enter your last name";
	}

	if (empty($email)) {
		$errors['email_error'] = "Enter your email first";
	}
		else if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
		$errors['email_error'] = "Invalid Email address";
	}

	if (empty($pass)) {
		$errors['pass_error'] = "Enter your password";
	}

	else if (strlen($pass) < 10) {
		$errors['pass_error'] = "password must be 10 character or longer";
	}
	else if ($pass != $passCheck) {
		$errors['pass_error'] = "password didn't match!";
	}

// check error & redirect to same place

	if (count($errors) > 0) {
		$_SESSION['data_errors'] = $errors;
		header("Location: ../backend/register.php");
	}

	else{
		
	$query = "INSERT INTO users(fname, lname, email, pass) VALUES ('$fname',' $lname', '$email', '$encPass')";
	$result= mysqli_query($conn, $query);

		if ($result) {
			header("Location: ../backend/login.php");
		}

	}
 ?>

