<?php
	//data/cart/getCart.php
	require_once("../init.php");
	session_start();
	@$uid=$_SESSION["uid"];
	if($uid!=null){
		$sql="SELECT *,(select sm from yoho_clothing_pic as c where c.cid=b.cid limit 1) as sm FROM yoho_shoppingcart_item as a inner join yoho_clothing as b on a.cid=b.cid where user_id=$uid order by iid desc";
		$result=mysqli_query($conn,$sql);
		echo json_encode(mysqli_fetch_all($result,1));
	}
?>