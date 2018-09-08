$(()=>{
	//顶部鼠标悬停，出现下列菜单
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

	$.validator.addMethod("mobile",function(val){
		if(val.trim().length>0){	//格式的验证忽略选填，空
				return /^(\+86|0086)?\s*1[3-8]\d{9}$/.test(val);
			}else{
				return true;
			}	
		},"手机号格式不正确!");
	$.validator.addMethod('upwd',function(val){
			if(val.trim().length>0){
				return /^[0-9a-zA-Z_]{6,8}$/.test(val);
			}else{
				return;
			}
	});
	if($("#input").prop("checked",true)){
		$("#form1").validate({
			submitHandler:function(form){
				$.ajax({
					type:"post",
					url:"data/users/register.php",
					data:$(form).serialize() //serialize:将立体数据转化成&连接的字符串
				}).then(()=>{
					alert("注册成功");
					var url="index.html";
					location.assign(url);
				});
			},
			rules:{	//rules通过name属性
				uname:{
					required:true,
					minlength:2,
					remote:"data/users/vali.php"
				},
				upwd1:{
					required:true,
					minlength:6,
					maxlength:8,
					upwd:true
				},
				upwd2:{
					equalTo:"#upwd1"
				},
				email:{
					required:true,
					email:true
				},
				qq:{
					digits:true,
					rangelength:[5,11]
				},
				mobile:"mobile",
			},
			messages:{
				uname:{
					required:"用户名不能为空!",
					remote:"用户名已被占用"
				},
				upwd1:{
					required:"密码不能为空"
				},
				upwd2:{
					equalTo:"两次密码输入不一致"
				},
				email:{
					required:"邮箱不能为空"
				},
				qq:{
					rangelength:"qq号长度必须介于5~11位之间"
				}
			}
		});

	}
		
});