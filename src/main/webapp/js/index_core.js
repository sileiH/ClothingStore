$(document).ready(function() {
	$("#core-hot-shows").data("type", "m-shoes");
	doShowObjects($("#core-hot-shows").data("type"));
	doShowNewObjects();
	// 在图片和文字上加上鼠标悬浮事件
	$(".hot-text,.hot-img").hover(function() {
		var hot_type = this.id;
		if (hot_type == $("#core-hot-shows").data("type")) {
			return;
		} else {
			// 移动hr_tag标签
			moveHrTag(hot_type);
			// 展示产品
			doShowObjects(hot_type);
			$("#core-hot-shows").data("type", hot_type);
			// 改变按钮的文字
			changeBtnTxt();
		}
	})
})

function changeBtnTxt() {
	if ($("#core-hot-shows").data("type") == 'm-shoes') {
		$(".core-hot-btn").val("查看所有男的踩的最新商品");
	} else if ($("#core-hot-shows").data("type") == 'w-shoes') {
		$(".core-hot-btn").val("查看所有女的踩的最新商品");
	} else if ($("#core-hot-shows").data("type") == 'cloths') {
		$(".core-hot-btn").val("查看所有穿的最新商品");
	} else if ($("#core-hot-shows").data("type") == 'decorate') {
		$(".core-hot-btn").val("查看所有戴的最新商品");
	}

}

function moveHrTag(hot_type) {
	if (hot_type == "m-shoes") {
		$("#core-hot-hr-tag").animate({
			left : '+20%'
		}, "normal");
	}
	if (hot_type == "w-shoes") {
		$("#core-hot-hr-tag").animate({
			left : '+38%'
		}, "normal");
	}
	if (hot_type == "cloths") {
		$("#core-hot-hr-tag").animate({
			left : '+58%'
		}, "normal");
	}
	if (hot_type == "decorate") {
		$("#core-hot-hr-tag").animate({
			left : '+75%'
		}, "normal");
	}
}

// 展示最热的产品
function doShowObjects(type) {
	console.log(type);
	var url = "index/getObjectsByType.do";
	param = {
		'type' : type
	};
	$.ajax({
		url : url,
		data : param,
		type : 'post',
		success : function(result) {
			if (result.state == 1) {
				setTable(result.data);
			}
		}
	})
}

function setTable(result) {

	var tbody = $("#core-hot-shows-tbody");
	tbody.empty();
	var tr = $("<tr></tr>");
	var tr_name = $("<tr></tr>");
	var tr_price = $("<tr></tr>");
	for ( var i in result) {
		var urls = result[i].url.split(" ");
		tr.append("<td><img src='" + urls[0] + "' id='" + result[i].number + "'></td>");
		tr_name.append("<td>" + result[i].name + "</td>");
		tr_price.append("<td>¥" + result[i].price + ".00</td>");
		if (i == 3 || i == 7) {
			tbody.append(tr);
			tbody.append(tr_name);
			tbody.append(tr_price);
			tr = $("<tr></tr>");
			tr_name = $("<tr></tr>");
			tr_price = $("<tr></tr>");
			if (i == 3) {
				var tr_hr = $("<tr height='50px'></tr>");
				tr_hr
						.append("<td colspan='4' class='shows-hr-td'><hr class='shows-hr'></td>");
				tbody.append(tr_hr);
			}
		}
	}
	// 在展示的文字和图片上添加鼠标悬浮事件
	$("#core-hot-shows-tbody img").hover(function() {
		if (this != $(".shows-hr-td")[0]) {
			$(this).addClass("croe-show-frame");
		}
	}).mouseout(function() {
		console.log("123");
		$(this).removeClass("croe-show-frame");
	}).click(function(){
		location.href="toItem.do?number=" + this.id;
	})
}

//跳转到Item界面
function toItem(){
	console.log(this);
}

// 展示最新的产品
function doShowNewObjects() {
	var url = "index/getNewObjects.do";
	$.ajax({
		url : url,
		type : 'get',
		success : function(result) {
			if (result.state == 1) {
				setNewTable(result.data);
			}
		}
	})
}

function setNewTable(result) {
	console.log(result[0]);
	// 获取tbody
	var tbody = $("#core-new-shows-tbody");
	var tr = $("<tr></tr>");
	var tr_name = $("<tr></tr>");
	var tr_price = $("<tr></tr>");
	for ( var i in result) {
		var urls = result[i].url.split(" ");
		tr.append("<td><img src='" + urls[0] + "' id='" + result[i].number + "'></td>");
		tr_name.append("<td>" + result[i].name + "</td>");
		tr_price.append("<td>¥" + result[i].price + ".00</td>");
		if (i == 3 || i == 7 || i == 11 || i == 15) {
			tbody.append(tr);
			tbody.append(tr_name);
			tbody.append(tr_price);
			tr = $("<tr></tr>");
			tr_name = $("<tr></tr>");
			tr_price = $("<tr></tr>");
			if (i == 3 || i == 7 || i == 11) {
				var tr_hr = $("<tr height='50px'></tr>");
				tr_hr.append("<td colspan='4'><hr class='shows-hr'></td>");
				tbody.append(tr_hr);
			}
		}
	}
	// 在展示的文字和图片上添加鼠标悬浮事件
	$("#core-new-shows-tbody img").hover(function() {
		if (this != $(".shows-hr-td")[0]) {
			$(this).addClass("croe-show-frame");
		}
	}).mouseout(function() {
		$(this).removeClass("croe-show-frame");
	}).click(function(){
		location.href="toItem.do?number=" + this.id;
	})

}
