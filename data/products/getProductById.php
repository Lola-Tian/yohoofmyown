<?php
//data/products/getProductById.php
require_once("../init.php");
$output=["product"=>[],"colors"=>[],"pics"=>[]];
@$cid=$_REQUEST["cid"];
if($cid!=null){
	$sql="SELECT * FROM yoho_clothing WHERE cid=$cid";
	$result=mysqli_query($conn,$sql);
	$output["product"]=mysqli_fetch_all($result,1)[0];
	$sql="SELECT * FROM yoho_clothing_pic WHERE cid=$cid";
	$result=mysqli_query($conn,$sql);
	$output["pics"]=mysqli_fetch_all($result,1);
	$color_id=$output["product"]["color_id"];
	$sql="SELECT cid,color,xsimg FROM yoho_clothing WHERE color_id=$color_id";
	$result=mysqli_query($conn,$sql);
	$output["colors"]=mysqli_fetch_all($result,1);
}
echo json_encode($output);
?>