<?php
//data/products/getProductsBybid.php
require_once("../init.php");
@$bid=$_REQUEST["bid"];
@$pno=$_REQUEST["pno"];
$output=[
	"count"=>0,
	"pageSize"=>8,
	"pageCount"=>0,//=ceil(count/pageSize)
	"pno"=>0,
	"products"=>[]
];
if($pno!=null&&$bid!=null){
	$output["pno"]=$pno;
	//mac 256g i7
	//按空格切割: [mac, 256g, i7]
	$kws=explode(" ",$kw);
	for($i=0;$i<count($kws);$i++)//遍历
		//将当前元素变为title like '%当前元素%'
		$kws[$i]=" title like '%".$kws[$i]."%' ";
	//[title like '%mac%' , title like '%256g%' , title like '%i7%']
	//用and连接每个元素
	$where=" where ".implode(" and ",$kws);
	//title like '%mac%' and title like '%256g%' and title like '%i7%'
	$sql="select count(*) from yoho_clothing $where";
	$result=mysqli_query($conn,$sql);
	$output["count"]=mysqli_fetch_row($result)[0];
	$output["pageCount"]=
		ceil($output["count"]/$output["pageSize"]);

	$start=$output["pno"]*$output["pageSize"];
	$sql="select *,(select md from yoho_clothing_pic as p where p.cid=c.cid limit 1) as md from yoho_clothing as c $where limit $start,".$output["pageSize"];
	$result=mysqli_query($conn,$sql);
	$output["products"]=mysqli_fetch_all($result,1);
}
echo json_encode($output);