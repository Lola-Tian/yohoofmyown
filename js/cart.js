$(()=>{
	//头部 欢迎登录
	var $loginList=$("#loginList");
		var $welcomeList=$("#welcomeList");
		$.ajax({
			type:"get",
			url:"data/users/islogin.php",
			dataType:"json",
			success:function(data){
				var {ok,user}=data;
				console.log(data);
				if(ok==0){ 
					$loginList.show().next().hide();
					$("div.unlogin-content").show().next().hide();
				}else{
					$loginList.hide().next().show().find("#uname").html(user.uname);
					$("div.login-content").show().prev().hide();
				}
			}
		});
		$loginList.find("a:eq(1)").click(function(e){
			e.preventDefault();
			location.href="login.html?back="+location.href;
		});
		//注销
		$welcomeList.find("a:last").click(function(e){
			e.preventDefault();
			$.ajax({
				type:"get",
				url:"data/users/signout.php",
				success:function(){
					location.reload(true);
				}
			})
		})
	//顶部：鼠标悬停，出现下列菜单
	$("li.multiple-options").hover(
		function(){
			var $iconDown=$(this).children("span.icon-down");
			var $iconUp=$iconDown.next();
			var $menuDiv=$iconUp.next();
			if($menuDiv.is(":hidden")){
				$iconDown.hide();
				$iconUp.show();
				$(this).css("backgroundColor","#eaeceb");
				$menuDiv.show();
			}else{
				$menuDiv.hide();
			}
		},
		function(){
			var $iconDown=$(this).children("span.icon-down");
			var $iconUp=$iconDown.next();
			var $menuDiv=$iconUp.next();
			if(!$menuDiv.is(":hidden")){
				$iconDown.show();
				$iconUp.hide();
				$(this).css("backgroundColor","#fff");
				$menuDiv.hide();
			}
		}
	);
	//负责加载购物车内容
	function loadCart(){
		$.ajax({
			type:"get",
			url:"data/users/islogin.php",
			dataType:"json",
			success:function(data){
				if(data.ok==0){
					$("div.unlogin-content").show().next().hide();
					//location.href="login.html?back="+location.href;
				}else{
					$.ajax({
						type:"get",
						url:"data/cart/getCart.php",
						dataType:"json",
						success:function(items){
							//console.log(items);
							var html="";
							//全选
							var $chkAll=$(".check-top>img");
							$chkAll.attr("src","img/cart_img/product_true.png");
							var sum=0,total=0;
							for(var item of items){
								var {is_checked,sm,title,color,price,count,cid,iid}=item;
								if(is_checked==0){
									$chkAll.attr("src","img/cart_img/product_normal.png");
								}
								if(is_checked==1){
									sum+=parseInt(count);
									total+=price*count;
								}
								html+=`<div class="imfor">
									<div class="check" data-iid="${iid}">
										<img src="img/cart_img/product_${is_checked==0?'normal':'true'}.png" title="${title}">
									</div>	
									<div class="product">
										<a href="product_detail.html?cid=${cid}">
											<img src="${sm}" title="${title}">
										</a>
										<span class="desc">
											<a href="product_detail.html?cid=${cid}">${title}</a>
										</span>
										<p class="col">
											<span>颜色：</span>
											<span class="color-desc">${color}</span>
										</p>
									  </div>
									  <div class="price">
										<p class="price-desc">折后价</p>
										<p>
										  <b>￥</b>${parseFloat(price).toFixed(2)}
										</p>
									  </div>
									  <div class="num" data-iid="${iid}">
										<span class="reduce">&nbsp;-&nbsp;</span>
										<input type="text" value="${count}">
										<span class="add">&nbsp;+&nbsp;</span>
									  </div>
									  <div class="total-price">
										<span>￥</span>
										<span>${(price*count).toFixed(2)}</span>
									  </div>
									  <div class="del">
										<a href="#" data-iid="${iid}">删除</a>
									  </div>
								</div>`;
							}
							$("#content-box-body").html(html);
							$(".total,.totalOne").html(sum);
							$(".foot-price,.totalPrices").html("¥"+total.toFixed(2));
						}
					})
				}
			}
		})
	}
	loadCart();
	//绑定在页面父元素上，不是动态加载的，所以不用等ajax加载完
	$("#content-box-body").on("click",".check>img,.add,.reduce,.del>a",function(e){
		e.preventDefault();
		var $tar=$(this);
		if($tar.is(".add,.reduce")){
			var iid=$tar.parent().attr("data-iid");
			var count=parseInt($tar.siblings("input").val());
			if($tar.is(".add")){
				count++;
			}else{
				count--;
			}
			$.ajax({
				type:"get",
				url:"data/cart/updateCart.php",
				data:{iid,count},
				success:function(){
					loadCart();
				}
			})
		}else if($tar.is(".del>a")){
			var title=$tar.parent().siblings(".product").find(".desc>a").html();
			if(confirm("是否继续删除 "+title+" 吗")){
				var iid=$tar.attr("data-iid");
				$.ajax({
					type:"get",
					url:"data/cart/deleteCart.php",
					data:{iid},
					success:function(){
						loadCart();
					}
				})
			}
		}else{
			//图前的方框
			var iid=$tar.parent().attr("data-iid");
			var checked=$tar.attr("src").endsWith("normal.png")?1:0;
			$.ajax({
				type:"get",
				url:"data/cart/checkOne.php",
				data:{iid,checked},
				success:function(){
					loadCart();
				}
			})
		}
	})
	$(".check-top>img").click(function(){
		var $img=$(this);
		var checked=$img.attr("src").endsWith("normal.png")?1:0;
		$.ajax({
			type:"get",
			url:"data/cart/checkAll.php",
			data:{checked},
			success:function(){
				loadCart();
			}
		})
	})
})	