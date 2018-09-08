$(()=>{
	var link=document.createElement("link");
	link.rel="stylesheet";
	link.href="css/header.css";
	document.head.appendChild(link);
	$("#header").load("header.html",function(html){
		//�����ؼ���
		var btnSearch=document.querySelector("[data-trigger=search]");
		var txtSearch=document.getElementById("txtSearch");
		btnSearch.onclick=function(){
			var kw=txtSearch.value;
			if(kw.trim()!==""){
				var url="product.html?kw="+kw;
				//open(url,"_self"); location.assign(url);
				location.href=url;
			}	
		};
		//�������󶨼��̰��º�̧���¼�
		txtSearch.onkeyup=function(e){
			if(e.keyCode===13){
				btnSearch.onclick(); //ģ�ⴥ��
			}
		}
		if(location.search.indexOf("kw")!==-1){
			txtSearch.value=decodeURI(location.search.split("=")[1]);
		}
		//ͷ�� ��ӭ��¼
		var $loginList=$("#loginList");
		//console.log($loginList);
		var $welcomeList=$("#welcomeList");
		$.ajax({
			type:"get",
			url:"data/users/islogin.php",
			dataType:"json",
			success:function(data){
				var {ok,user}=data;
				console.log(data);
				if(ok==0){ 
					//console.log($loginList.next());
					$loginList.show().next().hide();
				}else{
					$loginList.hide().next().show().find("#uname").html(user.uname);
					$("#alogin").hide();
				}
			}
		});
		$loginList.find("a:eq(1)").click(function(e){
			e.preventDefault();
			location.href="login.html?back="+location.href;
		});
		//ע��
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



		/*�������ͻ����� �����˵�*/
		$("li.customer-service").hover(
			function(){
				var $li=$(this).children(".customer");
				if($li.is(":hidden")){
					$li.show();
				}else{
					$li.hide();
				}
			},
			function(){
				var $li=$(this).children(".customer");
				if(!$li.is(":hidden")){
					$li.hide();
				}else{
					$li.show();
				}
			}
		),
		/*�в��������� ��������Ƴ����������в˵�*/
		$("li.contain-third").mouseenter(function(){
			var $li=$(this);
			var $a=$li.children("a");
			$a.toggleClass("aShow");
			var $showDiv=$li.children(".nav-third");
			if($showDiv.is(":hidden")){
				$showDiv.show();
				$li.siblings().children("div.contain-third").hide();
			}else{
				$showDiv.hide();
				$li.siblings().children("div.contain-third").show();
			}
		});
		$("li.contain-third").mouseleave(function(){
			var $li=$(this);
			var $a=$li.children("a");
			$a.toggleClass("aShow");
			$li.children(".nav-third").hide();
		});
		
	
	})
})