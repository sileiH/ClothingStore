<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品展示</title>
<link href="css/nav.css" rel="stylesheet">
<link href="css/copyright.css" rel="stylesheet">
<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<style type="text/css">
.item-li li {
	float: left;
	list-style-type: none;
	border: 1px solid white;
}

.item-li li:hover {
	border: 1px solid black;
}

.item-li img {
	height: 50px;
}

.item-li {
	padding-left: 70px;
}
.add_list_btn{
	background-color: rgb(148,0,0);
	color: white;
	width: 180px;
	height:50px;
	border: 0;
}
.add_list_btn:hover{
	opacity:0.5;
	cursor: pointer;
}

</style>
<script type="text/javascript">
	$(document).ready(function() {
		var number = "${number}";
		$(".item-li li").on("click",function(){
			var lis = $(this).parent().children();
			for(var i = 0;i < lis.length;i ++){
				lis[i].style.border='solid 1px white';
			}
			this.style.border='solid 1px black';
		});
		setItemData(number);
		$("#add_list").on("click",addList);
		$("#buy_list").on("click",buyList);
	})
	
	var params_index = {};
	
	//添加按钮
	function addList(){
		params_index.count = $("#item_count option:selected").val();
		params_index.size = $("#item_size option:selected").val();
		params_index.color = $("#item_color option:selected").val();
		console.log(params_index);
		$.ajax({
			url:"addItem.do",
			data:params_index,
			success:function(result){
				if(result.state != 1){
					alert(result.message);
				}
			}
		})
	}
	
	//立即购买
	function buyList(){
		params_index.count = $("#item_count option:selected").val();
		params_index.size = $("#item_size option:selected").val();
		params_index.color = $("#item_color option:selected").val();
		console.log(params_index);
		$.ajax({
			url:"addItem.do",
			data:params_index,
			success:function(result){
				if(result.state == 1){
					location.href="toList.do";
				}else{
					alert(result.message);
				}
			}
		})
	}
	
	//设置界面上的数据
	function setItemData(number){
		//获取数据
		$.ajax({
			url:"search/getObjectByNum.do",
			data:{
				number:number
			},
			success:function(result){
				if(result.state==1){
					console.log(result.data);
					$("#item_sex").html(result.data.sex);
					$("#item_series").html(result.data.series);
					$("#item_name").html(result.data.name);
					$("#item_price").html(result.data.price);
					$("#item_url").attr("src",result.data.url);
					$("#item_number").html(result.data.number);
					$.extend(params_index,result.data)
				}
			}
		})
	}
</script>
</head>
<body>
	<!-- 导航 -->
	<%@include file="nav.jsp" %>
	<!-- 展示区 -->
	<div align="center">
		<table>
			<tr>
				<td  width="400px" height="500px">
					<table style="width: 100%">
						<tr align="center" style="font-size: 20px" height="50px">
							<td align="right" width="120px" id="item_sex">男的</td>
							<td align="center" width="80px" id="item_series">taylor</td>
							<td align="left" id="item_name">纯色魔术贴</td>
						</tr>
						<tr align="center">
							<td colspan="3">价格: ¥<span id="item_price">339</span>.00</td>
						</tr>
						<tr align="center">
							<td colspan="3"><img id="item_url" src="img/all/0.png"
								width="250px"></td>
						</tr>
						<tr>
							<td colspan="3" align="center">
								<ul class="item-li">
									<li><img alt="" src="img/item/0.png"></li>
									<li><img alt="" src="img/item/1.png"></li>
									<li><img alt="" src="img/item/2.png"></li>
									<li><img alt="" src="img/item/3.png"></li>
									<li><img alt="" src="img/item/4.png"></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<hr>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								简介:<br>
								<ul style="font-size:15px;">
									<li>经久不衰的纯色经典常青款，鞋身侧边具有标志性的Chuck Tayor All Star 圆形贴标</li>
									<li>纯粹的帆布面料，高帮系带，保留着Converse的固有传统风格</li>
									<li>橡胶底耐磨有弹性，鞋底的纹路又有起到防滑的作用</li>
									<li>鞋底侧边条纹和清晰的装饰纹路，传承了经典</li>
								</ul>
							</td>
						</tr>
					</table>
				</td>
				<td width="200px" height="500px" valign="top">
					<div>
						<table style="width:200px">
							<tr height="50px"></tr>
							<tr align="center">
								<td colspan="2">
									
								</td>
							</tr>
							<tr align="center">
								<td colspan="2">
									型号:<span id="item_number">100001</span>
								</td>
							</tr>
							<tr align="center">
								<td colspan="2">
									颜色:
									<select style="width: 55px" id="item_color">
										<option>黑</option>
										<option>白</option>
										<option>红</option>
										<option>黄</option>
									</select>
								</td>
							</tr>
							<tr align="center">
								<td colspan="2">
									<hr>
								</td>
							</tr>
							<tr align="center">
								<td>请选择您的尺码:</td>
								<td>
									<select style="width: 45px" id="item_size">
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
									</select>
								</td>
							</tr>
							<tr align="center">
								<td>请输入购买数量:</td>
								<td>
									<select style="width: 45px" id="item_count">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
										<option>8</option>
										<option>9</option>
									</select>
								</td>
							</tr>
							<tr align="center">
								<td colspan="2">
									<input id="add_list" type="button" value="添加到购物车" class="add_list_btn"  style="margin-top: 20px;">
								</td>
							</tr>
							<tr align="center">
								<td colspan="2" height="100px">
									<input id="buy_list" type="button" value="立即购买" class="add_list_btn">
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<!-- 版权区 -->
	<%@include file="copyright.jsp" %>
</body>
</html>