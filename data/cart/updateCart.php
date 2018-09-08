<?php
//data/cart/updateCart.php
require_once("../init.php");
@$iid=$_REQUEST["iid"];
@$size=$_REQUEST["size"];
@$count=$_REQUEST["count"];
if($size!=null){
	if($iid!=null&&$count!=null){
		if($count!=0){
			$sql="update yoho_shoppingcart_item set count=$count,size='$size' where iid=$iid";
		}else{
			$sql="delete from yoho_shoppingcart_item where iid=$iid";
		}
	}
}else{
	if($iid!=null&&$count!=null){
		if($count!=0){
			$sql="update yoho_shoppingcart_item set count=$count where iid=$iid";
		}else{
			$sql="delete from yoho_shoppingcart_item where iid=$iid";
		}
	}
}
mysqli_query($conn,$sql);


