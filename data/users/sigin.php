<?php
	//data/users/signin.php
	require("../init.php");
	@$uname=$_REQUEST["uname"];
	@$upwd=$_REQUEST["upwd"];
	if($uname!==null&&$upwd!==null){
		$sql="SELECT * FROM yoho_user WHERE uname='$uname' AND binary upwd='$upwd'";
		$result=mysqli_query($conn,$sql);
		$row=mysqli_fetch_row($result);
		if($row!==null){
			session_start();
			$_SESSION['uid']=$row[0];
			echo "true";
		}else{
			echo "false";
		}
	}
?>