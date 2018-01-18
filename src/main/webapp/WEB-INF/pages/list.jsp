<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<link href="css/nav.css" rel="stylesheet">
<link href="css/copyright.css" rel="stylesheet">
<link href="css/order_info.css" rel="stylesheet">
<style type="text/css">
.list-help {
	border: 1px solid rgb(178, 178, 178);
	width: 212px;
	height: 100px;
	padding: 10px;
	margin-bottom: 10px;
	margin-top: 10px;
}
/*白底黑字*/
.btn-type1 {
	background-color: white;
	border: 1px solid rgb(178, 178, 178);
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var len;
		if('${shop_list}'){
            len = JSON.parse('${shop_list}').length
        }else{
		    len = 0;
        }
		console.log(len);
		$("#list_count").html(len);
		$("#continue_shop").on("click", toIndex)
		if(len!=0){
            var all_price = getAllPrice();
            $("#all_price").html(all_price);
            $("#last_price").html(all_price);
        }else{
            $("#all_price").html(0);
            $("#last_price").html(0);
        }

		$("#settlement").on("click",settlement);
	})
	
	function settlement(){
		var login_name = "${sessionScope.user}";
		if(!'${shop_list}'){
			alert("购物车目前为空");
			return;
		}
		if(login_name){
			$("#default_process").empty();
			$("#default_process").load("toOrderInfo.do");
			//把最上面的图片变换
			$("#list_nav_img").attr("src","img/list/2.png");
		}else{
			location.href = "toLogin.do";
			return;
		}
	}

	function toIndex() {
		location.href = "toIndex.do";
	}

	function getAllPrice() {
		var count_price = 0;
		var list = JSON.parse('${shop_list}');
		for (var i = 0; i < list.length; i++) {
			count_price += parseInt(list[i].count) * parseInt(list[i].price);
		}
		console.log(count_price);
		return count_price;
	}
	
	function getNewPrice(id){
		var count_price = 0;
		var list = JSON.parse('${shop_list}');
		for (var i = 0; i < list.length; i++) {
			count_price += parseInt(list[i].count) * parseInt(list[i].price);
		}
		count_price = count_price -  parseInt(list[id].count) * parseInt(list[id].price);
		console.log(count_price);
		return count_price;
	}

	function upCount(e) {
		var span = $(e).next();
		if (span.html() > 1) {
			var count = span.html() - 1;
			span.html(count);
			var price = $($(e).parent().children()[0]).html();
			price = price.substr(1);
			price = price.substr(0, price.lastIndexOf("."))
			$("#all_price").html(parseInt(price) * parseInt(count));
			$("#last_price").html(parseInt(price) * parseInt(count));
		}
	}

	function downCount(e) {
		var span = $($(e).parent().children()[3]);
		if (span.html() < 10) {
			var count = parseInt(span.html()) + 1;
			span.html(count);
			var price = $($(e).parent().children()[0]).html();
			price = price.substr(1);
			price = price.substr(0, price.lastIndexOf("."))
			$("#all_price").html(parseInt(price) * parseInt(count));
			$("#last_price").html(parseInt(price) * parseInt(count));
		}
	}
	
	function removeList(id) {
		console.log($("#" + id).length);
		$("#" + id).next().remove();
		$("#" + id).remove();
		//移除session中的
		$.ajax({
			url:"removeShop.do",
			data:{
				id:id
			},
			success:function(result){
				if(result.state == 1){
					var new_price = getNewPrice(id);
					$("#all_price").html(new_price);
					$("#last_price").html(new_price);
				}
			}
		})
	}
</script>
</head>
<body>
	<!-- 导航栏区域 -->
	<%@include file="nav.jsp"%>
	<!-- 购物车详细 -->
	<div>
		<!-- 流程显示 -->
		<div align="center">
			<table>
				<tr align="center">
					<td width="130px">我的购物车</td>
					<td width="130px">填写订单信息</td>
					<td width="130px">成功提交订单</td>
				</tr>
				<tr align="center">
					<td colspan="3"><img id="list_nav_img" src="img/list/1.png"></td>
				</tr>
			</table>
		</div>
		<!-- 默认:购物车table -->
		<div align="center" id="default_process">
			<table>
				<thead>
					<tr style="font-size: 20px" height="50px">
						<td colspan="2" width="750px">你的购物车:<span id="list_count">0</span>件商品
						</td>
					</tr>
					<tr style="font-size: 12px" height="30px">
						<td width="50px"><input type="checkbox">全选</td>
						<td>您已选中<span>0</span>件商品
						</td>
					</tr>
				</thead>
			</table>
			<hr width="750px">
			<!-- <table>
				<tbody>
					<tr>
						<td width="600px" colspan="2"><input type="checkbox"></td>
						<td>编辑</td>
						<td>删除</td>
					</tr>
					<tr>
						<td>
							<img src="img/test/t1.png">
						</td>
						<td>
							【男的】Sneaker Back Graphic Tee 长袖T恤<br>
							 型号：10005607102<br>
							 颜色：白色<br>
							 尺码：165/92A<br>
						</td>
						<td colspan="2" align="right">
							<span style="color:rgb(182,51,48)">¥518.00</span><br>
							数量:<input type="button" value="-" class="btn-type1" style="height: 20px;width: 20px">
							<span>2</span>
							<input type="button" value="+" class="btn-type1" style="height: 20px;width: 20px">
						</td>
					</tr>
				</tbody>
			</table> -->
			<table>
				<tbody>
					<c:if test="${sessionScope.shop_list!=null}">
						<c:forEach var="message" items="${sessionScope.shop_list}" varStatus="x">
							<tr id="${x.index}">
								<td width="600px" colspan="2"><input type="checkbox"></td>
								<td colspan="2" align="right"><a href="javascript:void(0);" 
									onclick="removeList(${x.index});"
									style="color:black">删除</a></td>
							</tr>
							<tr id="${x.index}">
								<td><img src="${message.url}"></td>
								<td>【${message.sex}】${message.series} ${message.name}<br>
									型号：${message.number}<br> 颜色：${message.color}<br>
									尺码：${message.size}<br>
								</td>
								<td colspan="2" align="right">
									<span style="color: rgb(182, 51, 48)">¥${message.price}.00</span><br>
									数量:<input type="button" value="-" class="btn-type1"
										id="up_count" onclick="upCount(this)"
										style="height: 20px; width: 20px"> 
									<span>${message.count}</span>
									<input type="button" value="+" class="btn-type1"
									id="down_count" onclick="downCount(this)"
									style="height: 20px; width: 20px"></td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<hr width="750px">
			<table>
				<tr>
					<td width="550px">
						<div class="list-help">
							<span style="font-size: 15px">需要帮助吗？</span>
							<ul style="list-style-position: inside; font-size: 12px">
								<li>如何确保订单安全？</li>
								<li>我可以使用什么付款方式？</li>
								<li>如何进行退换货？</li>
								<li>更多帮助</li>
							</ul>
						</div>
					</td>
					<td>
						<div>
							<table>
								<tr style="font-size: 14px;">
									<td>商品原价：</td>
									<td align="right">¥ <span id="all_price">518</span>.00
									</td>
								</tr>
								<tr style="font-size: 14px;">
									<td>店铺活动：</td>
									<td align="right">¥ 0</td>
								</tr>
								<tr height="20px">
									<td colspan="2"></td>
								</tr>
								<tr style="font-size: 19px;">
									<td>商品金额：</td>
									<td align="right"><span style="color: rgb(182, 51, 48)">¥
											<span id="last_price">518</span>.00
									</span></td>
								</tr>
								<tr>
									<td colspan="2"><span style="font-size: 10px;">*不含运费及优惠券折扣</span>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="button" value="继续购物"
						style="height: 36px; width: 235px;" class="btn-type1"
						id="continue_shop"></td>
					<td><input type="button" value="结算"
						style="background-color: rgb(182, 51, 48); color: white; height: 36px; width: 200px; border: 0;"
						id="settlement">
					</td>
				</tr>

			</table>
		</div>
	</div>
	<div style="height: 100px"></div>
	<!-- 版权区域 -->
	<%@include file="copyright.jsp"%>
</body>
</html>