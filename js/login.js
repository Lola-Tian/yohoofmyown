$(()=>{
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
	//主体：右侧 单击切换登录方式
	$("#device-bg").click(function(){
		var $pic=$(this);
		if($pic.hasClass("type-desktop-bg")){
			//手机扫码登录
			$pic.removeClass("type-desktop-bg").addClass("type-mobile-bg")
				.parent().next().removeClass("hide")
					.next().addClass("hide");
			$pic.next().children(":first-child").text("扫码登录更安全");
			//二维码悬停，右侧手机图片显示
			$("#qrcode-container").mouseenter(function(){
				$(this).css("left",0)
					.next().removeClass("hide");
			});
			$("#qrcode-container").mouseleave(function(){
				$(this).css("left","65px")
					.next().addClass("hide");
			});
		}else{
			//密码登录
			$pic.removeClass("type-mobile-bg").addClass("type-desktop-bg")
				.parent().next().addClass("hide")
					.next().removeClass("hide");
			$pic.next().children(":first-child").text("密码登录在这里");
			
		}
	});
	//手机号开头数字下拉菜单
	var $ul=$("#country-list");
	$("#pre-code").click(function(){
		if($ul.css("display")=="none"){
			$ul.css("display","block");
		}else{
			$ul.css("display","none");
		}		
	});
	$ul.on("click","li",function(){
		var $li=$(this);
		var html = $li.html();
		$("#pre-code").html(html)
		$ul.hide();	
	}); 
	//登录验证
	$("#login-btn").click(function(){
		$.ajax({
			type:"post",
			url:"data/users/sigin.php",
			data:$("form").serialize(),
			success:function(result){
				if(result=="false"){
					alert("用户名或密码不正确");
				}else{
					alert("登录成功");
					if(location.search!==""){
						var back=location.search.slice(6)
							location.href=back;
					}else{
						location.href="index.html";
					}
				}
			}
		});
	});
});