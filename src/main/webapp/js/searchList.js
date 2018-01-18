var pageCount;
//页面向下滚动,查询新的数据
window.onscroll  = function (){
    var marginBot = 0;
    if (document.compatMode === "CSS1Compat"){
        marginBot = document.documentElement.scrollHeight - (document.documentElement.scrollTop+document.body.scrollTop)-  document.documentElement.clientHeight;
    } else {
        marginBot = document.body.scrollHeight - document.body.scrollTop-  document.body.clientHeight;
    }
    if(marginBot<=0) {
    	var page = 0;
    	if(page < parseInt(pageCount)){
    		//console.log("-------");
    		if($(".search-shows").data("pageCurrent")){
        		page = parseInt($(".search-shows").data("pageCurrent")) + 1;
        		$(".search-shows").removeData("pageCurrent");
        		//console.log(page);
        	}
        	$(".search-shows").data("pageCurrent",page);
        	getPageObjects();
    	}
    }
}
/*
 * 接受后台的数据,然后在search页面上进行展示
 */
function getPageObjects() {
	//console.log("getPageObjects()");
	// 获取当前页
	var pageCurrent = $(".search-shows").data("pageCurrent");
	//console.log("pageCurrent:" + pageCurrent);
	// 获取当前排序方式
	var sort = $(".search-shows").data("sort");
	//console.log("sort:" + sort);
	// 获取当前筛选项目
	var filter = $(".search-shows").data("filter");
	var params = {
			"sort" : sort,
			"pageCurrent" : pageCurrent
	};
	params = $.extend( params, filter );
	params.sex = $("#commoditySex").html();
	//console.log(params);
	var url = "search/getPageObjects.do";
	$.ajax({
		url : url,
		data : params,
		success : function(result) {
			if (result.state == 1) {
				// 把获取到的数据添加到表中
				doShowProducts(result.data.list);
				//console.log(result.data.list);
				//把获取到的数量加到标题上
				$("#commodityCount").html(result.data.page.rowCount);
				pageCount = result.data.page.pageCount;
				//console.log(result.data.page);
			}
		}
	})
}

function doShowProducts(list){
	//console.log("doShowProducts()");
	var length = Math.floor(list.length/3);
	var table = $(".search-shows");
	//table.empty();
	for(var i = 0;i < length;i ++){
		var tr_img = $("<tr align='center'></tr>");
		var tr_name = $("<tr align='center'></tr>");
		var tr_price = $("<tr align='center'></tr>");
		for(var j = 0;j < 3; j ++){
			tr_img.append("<td><img src='" + list[i*3 + j].url + "' id='" + list[i*3 + j].number + "'></td>");
			tr_name.append("<td>" + list[i*3 + j].name + "</td>");
			tr_price.append("<td>¥" + list[i*3 + j].price + ".00</td>");
		}
		$(".search-shows").append(tr_img);
		$(".search-shows").append(tr_name);
		$(".search-shows").append(tr_price);
	}
	if(list.length%3){
		var tr_img = $("<tr align='center'></tr>");
		var tr_name = $("<tr align='center'></tr>");
		var tr_price = $("<tr align='center'></tr>");
		for(var j = 0;j < list.length%3;j ++){
			tr_img.append("<td><img src='" + list[i*3 + j].url + "' id='" + list[i*3 + j].number + "'></td>");
			tr_name.append("<td>" + list[i*3 + j].name + "</td>");
			tr_price.append("<td>¥" + list[i*3 + j].price + ".00</td>");
		}
		$(".search-shows").append(tr_img);
		$(".search-shows").append(tr_name);
		$(".search-shows").append(tr_price);
	}
	// 在展示的文字和图片上添加鼠标悬浮事件
	$(".search-shows img").hover(function() {
		if (this != $(".shows-hr-td")[0]) {
			$(this).addClass("search-show-frame");
		}
	}).mouseout(function() {
		$(this).removeClass("search-show-frame");
	}).click(function(){
		location.href="toItem.do?number=" + this.id;
	})
}