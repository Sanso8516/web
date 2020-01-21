<?php
	include_once("./dbconfig.php");
	#include_once("./login");
	session_start();
	if(isset($_SESSION['username'])){
		echo "<script>alert(1);</script>";
	}
	$email=$_POST['email'];
	$username=$_POST['username'];
	$password=$_POST['password'];

	if ($email != NULL){
		
		$check="SELECT * FROM user WHERE username='$username'";
		$result=$mysqli->query($check);
		
		if($result->num_rows==1)
		{
			echo "<script>alert('중복된 아이디 입니다.');location.replace('./login');</script>";
			exit();
		}
		
		$check="SELECT * FROM user WHERE email='$email'";
		$result=$mysqli->query($check);
		if($result->num_rows==1)
		{
			echo "<script>alert('중복된 이메일 입니다.');location.replace('./login');</script>";
			exit();
		}
		
		$signup="INSERT INTO user(email,username,password) values('$email','$username','$password')";
		
		$result=$mysqli->query($signup);

		if($signup)
		{
			echo "<script>alert('회원가입 완료!');location.replace('./login');</script>";
			exit();	
		}
	}

	else
	{
		$check="SELECT * FROM user WHERE username='$username'";
		$result=$mysqli->query($check);
		if($result->num_rows==1){
			$row=$result->fetch_array(MYSQLI_ASSOC);
			if($row['password']==$password){
				$_SESSION['username']=$username;
					if(isset($_SESSION['username']))
					{	
						header('Location: ./index');
					}
					else{
						echo "<script>alert('session error');</script>";
					}
			}
			else{
				echo "<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); location.replace('./login');</script>";
			}
		}
		else{
				echo "<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); location.replace('./login');</script>";
			}
	}
?>