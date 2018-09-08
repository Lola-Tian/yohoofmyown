//js/index.js
$(()=>{
	//轮播广告
	var $ulImgs=$("[data-load=bannermgs]");
	var $ulInds=$("[data-load=bannerInds]");
	var LIWIDTH=990,moved=0,timer=null,wait=3000,interval=500;
	$.ajax({
		type:"GET",
		url:"data/index/getCarousel.php",
		dataType:"json",
		success:function(products){
			console.log(products);
			var html="";
			for(var p of products){
				var {href,img,title}=p;
				html+=`<li>
							<a href="${href}" title="${title}">
								<img src="${img}">
							</a>
					   </li>`;
			}
			//复制第二个图片
			var {href,img,title}=products[0];
			html+=`<li>
						<a href="${href}" title="${title}">
							<img src="${img}">
						</a>
					</li>`;
			$ulImgs.html(html).css("width",LIWIDTH*(products.length+1));
			//动态生成小圆点 单击事件
			$ulInds.html("<li></li>".repeat(products.length)).children(":first").addClass("hover");
			$ulInds.on("click","li",function(){
										var $li=$(this);
										var i=$li.index();
										moved=i;
										$ulImgs.stop(true).animate({
											left:-LIWIDTH*moved
										},interval,function(){
											$li.addClass("hover")
												.siblings().removeClass("hover");
										});
									});
			function autoMove(){
				timer=setInterval(function(){
					move();
				},wait);
			}
			function move(){
				moved++;
				$ulImgs.animate({left:-moved*LIWIDTH},interval,function(){
					if(moved==products.length){
						$ulImgs.css("left","0");
						moved=0;
					}
				//图片切换后，小圆点变化，小圆点位置=moved下标
				$ulInds.children("li:eq("+moved+")").addClass("hover")
					.siblings().removeClass("hover");
				}
				)
			}
			autoMove();
			//鼠标悬停，图片静止
			$("#banner").hover(
				function(){
					clearInterval(timer);
					timer=null;
				},	
				function(){
					autoMove();
				}
			);
			//右边按钮
			$("[data-move=right]").click(function(){
				if(!$ulImgs.is(":animated")){
					move();
				}
			});
			//左边按钮
			$("[data-move=left]").click(function(){
				if(!$ulImgs.is(":animated")){
					if(moved==0){
						moved=products.length;
						$ulImgs.css("left",-LIWIDTH*moved);
					}
					moved--;
					$ulImgs.animate({
						left:-moved*LIWIDTH
						},interval,function(){
							$ulInds.children("li:eq("+moved+")").addClass("hover")
								.siblings().removeClass("hover");
						}
					);
				}
			});
		}
	}); 
	//5楼商品信息
	$.ajax({
		type:"get",
		url:"data/index/getProducts.php",
		dataType:"json",
		success:function(products){
			//console.log(products);
			var html1="",html2="";
			products.forEach((p,i)=>{
				//console.log(i);
				var {pic,title,price,href}=p;
				if(i<8){
					html1+=`<li>
						<a href="#" title="${title}" target="_blank">
						<div class="commodity-img">
							<img src="${pic}">
						</div>
						<p class="commodity-name">${title}</p>
						<p class="commodity-price">
							<span>¥${parseFloat(price).toFixed(2)}</span>	
						</p>
						</a>
					</li>`;
				}else{
					html2+=`<li>
						<a href="#" title="${title}" target="_blank">
						<div class="commodity-img">
							<img src="${pic}">
						</div>
						<p class="commodity-name">${title}</p>
						<p class="commodity-price">
							<span>¥${parseFloat(price).toFixed(2)}</span>	
						</p>
						</a>
					</li>`;
				}
				
					
			});
			document.querySelector("#f5>div.commodity-list>ul").innerHTML=html1;
			document.querySelector("#f6>div.commodity-list>ul").innerHTML=html2;
		}
	});
	//楼层滚动
	var $ulLift=$(".lift_list");
	var $floors=$(".top-recommend");
	$(window).scroll(function(){
		var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
		var offsetTop=$("#f1").offset().top;
		if(offsetTop>scrollTop+innerHeight/2){
			$ulLift.parent().hide();
		}else{
			$ulLift.parent().show();
			$floors.each(function(i){
				var $f=$(this);
				var offsetTop=$f.offset().top;
				if(offsetTop<scrollTop+innerHeight/2){
					//找到是第几层，然后点亮
					$ulLift.children("li:eq("+i+")").addClass("lift_item_on").siblings().removeClass("lift_item_on");
				}
			})
		}
	})
	//绑定单击事件 利用冒泡
	$ulLift.on("click","li",function(){
		var $li=$(this);
		var i=$li.index();
		var $f=$($floors[i]);
		var top=$f.offset().top+30;
		$("html,body").stop(true).animate({
			scrollTop:top
		},500)
	})
})



