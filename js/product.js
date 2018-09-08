//js/product.js
(()=>{
	//不用等ajax,跟ajax请求无关 利用冒泡 可以让将来新添加的事件自动获得父元素上的事件
	var list=document.getElementById("show-list");
	var pages=document.getElementById("pages");
	//分页：点击跳转 冒泡 父元素绑定单击事件
	pages.onclick=function(e){
		var a=e.target;
		if(a.nodeName==="A"){
			//排除禁用和当前的按钮 点击不跳转
			if(a.className.indexOf("disabled")==-1&&a.className.indexOf("current")==-1){
				switch(a.className){
					case "previous": //上一页：当前页-1
						var curr=pages.querySelector("a.current");
						var pno=curr.innerHTML-1-1;
						loadPage(pno);
						break;
					case "next": //下一页：当前页本身比实际页码大1
						var curr=pages.querySelector("a.current");
						var pno=curr.innerHTML;
						loadPage(pno);
						break;
					default:
						loadPage(a.innerHTML-1); //如果点击2，发送1过去
				}
			}
		}
	}
	//每点击一页，都会重新请求，函数loadPage负责重新请求并动态加载数据
	function loadPage(pno=0){
		var kw=location.search.split("=")[1];
		ajax({
			type:"get",
			url:"data/products/getProductsByKw.php",
			data:{kw,pno},
			dataType:"json"
		}).then(output=>{
			//console.log(output);
			var {products,pageCount}=output;
			var html="";
			for(var p of products){
				var {cid,md,title,price}=p;
				html+=`<li>
							<a href="product_detail.html?cid=${cid}" title="${title}">
								<img src="${md}">
							</a>
							<p>
								<a href="product_detail.html?cid=${cid}">${title}</a>
								<span class="price">¥${parseFloat(price).toFixed(2)}</span>
							</p>
						</li>`;
			}
			list.innerHTML=html;
			
			//上一页和下一页一定存在，中间页码动态生成
			var html=`<a href="javascript:;" class="previous">上一页</a>`;
			for(var i=0;i<pageCount;i++){
				if(i!=pno){
					html+=`<a href="javascript:;">${i+1}</a>`; //数据库页码0开始，实际页码1开始
				}else{
					html+=`<a href="javascript:;" class="current">${i+1}</a>`; //正在加载的a和当前页码一样
				}
			}
			html+=`<a href="javascript:;" class="next">下一页</a>`;
			
			pages.innerHTML=html;
			//第一页 上一页禁用  上一页和下一页有可能都禁用
			if(pno==0){
				pages.children[0].className+=" disabled";
			}
			//最后一页 下一页禁用
			if(pno==pageCount-1){
				pages.lastElementChild.className+=" disabled";
			}
		})
	}
	//页面首次加载时，自己调用自己，默认值页码1
	loadPage();
	//单击店铺首页显示所有产品
	var a=document.getElementById("shop-index");
	a.onclick=function(e){
		e.preventDefault();
		var bid=a.getAttribute("data-bid")[0];
		console.log(bid);
		ajax({
			type:"get",
			url:"data/products/getProducts.php",
			data:{bid},
			dataType:"json"
		}).then(output=>{
			console.log(output);
			var {products}=output;
			var html="";
			for(var p of products){
				var {cid,md,title,price}=p;
				html+=`<li>
							<a href="product_detail.html?cid=${cid}" title="${title}">
								<img src="${md}">
							</a>
							<p>
								<a href="product_detail.html?cid=${cid}">${title}</a>
								<span class="price">¥${parseFloat(price).toFixed(2)}</span>
							</p>
						</li>`;
			}
			list.innerHTML=html;
		})
	}
})()