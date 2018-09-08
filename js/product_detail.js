(()=>{
	//js/product_detail.js
	//...details.html?cid=1
	var cid=location.search.split("=")[1];
	ajax({
		type:"get",
		url:"data/products/getProductById.php",
		data:{cid},
		dataType:"json"
	}).then(output=>{
		console.log(output);
		var {product,pics,colors,titles}=output;
		console.log(colors);
		
		//上  右价格等详情
		var {title,cost_price,discount,price,only_number,color,xsimg,sex,style,collar,clothing_length,version,
			thickness1,thickness2,flexibility,softness,breathability,details,sizeimg,longimg}=product;
		//左：标题
		var html3="";
		html3+=`<a href="javascript:;">GIRLS首页</a>
				  <span>&gt;</span>
				  <a href="javascript:;">${title}</a>
				  <span id="fname"></span>`;
		document.querySelector("#bread-crumb").innerHTML=html3;
		//标题
		document.querySelector("#show-details>h1").innerHTML=title;
		//吊牌价
		document.querySelector("#show-details>.market-price>.price-row>.has-other-price").innerHTML=
			"¥"+parseFloat(cost_price).toFixed(2);
		//促销价
		document.querySelector("#show-details>.market-price>.price-row>.promotion-price>.price").innerHTML=
			"¥"+parseFloat(price).toFixed(2);
		//几折
		document.querySelector("#show-details>.market-price>.price-row>.desc>.promotion").innerHTML=discount+"折";
		//超小图 颜色
		var html1="";
		for(var c of colors){
			var {cid,color,xsimg}=c;
			html1+=`<li class="focus pull-left" title="${title}">
						<a href="product_detail.html?cid='${cid}'" class="${cid==product.cid?'active':''}">
							<img src="${xsimg}">
							<span class="color-name">${color}</span>	
						</a>
				</li>`;
		}

		document.querySelector("#color-section").innerHTML=html1;
		//加入购物车 红色
		var html2="";
		html2=`<a href="javascript:;" data-cid="${cid}" class="addCart">
					<span class="glyphicon glyphicon-shopping-cart"></span>加入购物车
				</a>`;
		document.querySelector("#shopping-red-section").innerHTML=html2;
		//商品详情部分
		//商品信息
		function content(digit,data){
			var span=document.querySelector("#product-msg>ul>li:nth-child("+digit+")>em>.value-space");
			span.innerHTML=data;
		}
		content(1,only_number);
		content(2,color);
		content(3,sex);
		content(4,style);
		content(5,collar);
		content(6,clothing_length);
		content(7,version);
		content(8,thickness1);
		
		var target=function(digit,data){
			var li=document.querySelector("#black-box>li:nth-child("+digit+")");
			var n=parseInt(data)-1;
			li.querySelectorAll("[class='comfort-block']")[n].className="comfort-block cur";
		}
		target(1,flexibility);
		target(2,thickness2);
		target(3,softness);
		target(4,breathability);
		//商品详情
		document.querySelector("#details-html>p:first-child").innerHTML=details;
		//尺寸参考表
		document.querySelector("#details-html>p:nth-child(2)>img").src=sizeimg;
		//产品长图
		document.querySelector("#details-html>p:last-child>img").src=longimg;
		//尺码 单击颜色变黑色
		$("#sizes").on("click","li",function(e){
			var $li=$(this);
			$li.addClass("lock").siblings().removeClass("lock");
		});
		//上 左：放大镜
		var html="";
		for(var pic of pics){
			var {sm,md,lg}=pic;
			html+=`<li class="i1"><img src="${sm}" data-md="${md}" data-lg="${lg}"></li>`;
		}
		//右侧小图所在的ul
		var ulImgs=document.getElementById("icon_list");
		ulImgs.innerHTML=html;
		//中图
		var mImg=document.getElementById("mImg");
		//第一个小图的中图
		mImg.src=pics[0].md;
		var lgDiv=document.getElementById("largeDiv");
		lgDiv.style.backgroundImage="url("+pics[0].lg+")";
		//鼠标在小图悬停
		ulImgs.onmouseover=function(e){
			var img=e.target;
			if(img.nodeName=="IMG"){
				mImg.src=img.getAttribute("data-md");
				lgDiv.style.backgroundImage="url("+img.getAttribute("data-lg")+")";
			}
		}
		//小移动模糊框
		var mask=document.getElementById("mask");
		var smask=document.getElementById("superMask");
		smask.onmouseover=function(){
			mask.style.display="block";
			lgDiv.style.display="block";
		}
		smask.onmouseout=function(){
			mask.style.display="none";
			lgDiv.style.display="none";
		}
		var MWIDTH=210,MHEIGHT=280,SMWIDTH=420,SMHEIGHT=560,MAXLEFT=SMWIDTH-MWIDTH,MAXTOP=SMHEIGHT-MHEIGHT;
		smask.onmousemove=function(e){
			var left=e.offsetX-MWIDTH/2;
			var top=e.offsetY-MHEIGHT/2;
			if(left<0){
				left=0;
			}else if(left>MAXLEFT){
					left=MAXLEFT;
			}
			if(top<0){
				top=0;
			}else if(top>MAXTOP){
				top=MAXTOP;
			}
			//鼠标移动，模糊框跟着移动，且大div背景图朝相反的方向移动
			lgDiv.style.backgroundPosition=(-46/21*left)+"px "+(-9/5*top)+"px";
			mask.style.left=left+"px";
			mask.style.top=top+"px";
		}
		
		//购物车数量的增减
		var div=document.getElementById("add-reduce");
		div.onclick=function(e){
			var span=e.target;
			//var redTip=document.getElementById("tip-chose-size");
			//console.log(redTip.previousElementSibling.children);
			//if(redTip.previousElementSibling.children.hasAttribute("class")){
				//redTip.style.display="none";
				if(span.className=="reduce"||span.className=="add"){
				var input=span.parentNode.children[1];
				var n=parseInt(input.value);
				if(span.className=="add"){
					n++;
				}else if(n>1){
					n--;
				}
				input.value=n;
				}
			//}else{
				//redTip.style.display="block";
			//}		
		}	
		//先验证是否登录
		$.ajax({
			type:"get",
			url:"data/users/islogin.php",
			dataType:"json",
			success:function(data){
				if(data.ok=="1"){
					var a = $("#alogin");
					a.hide();
			       }
			}
		});
		$("a.addCart").click(function(){
			var $a=$(this);
			if($("#alogin").hide()){
				var cid=$a.data("cid");
				//console.log(c id);
				var size=$a.parent().prev().prev().prev().children("div").children("ul").children("[class=lock]").data("size");
				//console.log(size);
				var count=$a.parent().prev().prev().children("div").children("input").val();
				//console.log(count);
				$.ajax({
					type:"get",
					url:"data/cart/addCart.php",
					data:{cid,size,count},
					success:function(){	
						location.assign("cart.html");	
					}
				})
			}else{
				alert("请先登录！");
				location.href="login.html?back="+location.href;
			}			
		});
	})
})();