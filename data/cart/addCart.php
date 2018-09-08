<?php
	//data/cart/addCart.php
	require_once("../init.php");
	session_start();
	@$uid=$_SESSION["uid"];
	@$cid=$_REQUEST["cid"];
	@$size=$_REQUEST["size"];
	@$count=$_REQUEST["count"];
	if($uid!=null&&$cid!=null&&$count!=null&&$size!=null){
		$sql="select * from yoho_shoppingcart_item where user_id=$uid and cid=$cid";
		$result=mysqli_query($conn,$sql);
		$row=mysqli_fetch_row($result);
		if($row==null){ //首次添加，增
			$sql="insert into yoho_shoppingcart_item values(null,$uid,$cid,'$size',$count,0)";
		}else{ //以前有数量，更新
			$sql="update yoho_shoppingcart_item set count=count+$count,size='$size' where iid=".$row[0];
		}
		mysqli_query($conn,$sql);
	}
?>