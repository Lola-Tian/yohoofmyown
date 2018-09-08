<?php
	//接收客户端提交的请求数据:uname upwd email
	@$n=$_REQUEST['uname'];
	if($n===null||$n===""){
		die('用户名不能为空');
	}
	@$p=$_REQUEST['upwd1'];
	if($p===null||$p===""){
		die('密码不能为空');
	}
	@$m=$_REQUEST['email'];
	if($m===null||$m===""){
		die('邮箱不能为空');
	}
	#连接到数据库服务器
	require('../init.php');
	#向数据库提交SQL命令
	$sql="INSERT INTO yoho_user VALUES(NULL,'$n','$p','$m',NULL,NULL,NULL,NULL)";
	$result=mysqli_query($conn,$sql);
	#输出执行结果:"注册失败/成功"
	if($result===false){
		echo "用户注册失败！<br>";
		echo "请检查SQL语法:$sql";
	}else{
		echo "用户注册成功！<br>";
		#获取INSERT语句产生的自增编号
		$uid=mysqli_insert_id($conn);
		echo "新用户在数据库中的编号为：$uid";
	}
?>