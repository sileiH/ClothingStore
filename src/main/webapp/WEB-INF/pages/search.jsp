<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<link href="css/nav.css" rel="stylesheet">
<link href="css/search.css" rel="stylesheet">
<link href="css/copyright.css" rel="stylesheet">
<script type="text/javascript" src="js/search.js"></script>
<script type="text/javascript" src="js/searchList.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<style type="text/css">
.search-shows td{
	width:200px;
}

.search-shows{
	font-size: 13px;
}
</style>
</head>
<body>
	<!-- 导航界面 -->
	<%@include file="nav.jsp" %>
	<!-- 搜索界面 -->
	<div align="center" class="search">
		<h2 style="color: rgb(51, 51, 51); font-size: 22px;"><span id="commoditySex">${param.sex}</span>/<span id="commodityCount">675</span>件商品</h2>
		<table>
			<tr>
				<td valign="top" height="120px;">
					<div class="search-filter">
						<div class="search-filter-tittle">筛选</div>
						<hr color="silver" width="137px">
						<table class="search-filter-selected">

						</table>
					</div>
				</td>
				<td rowspan="2" valign="top">
					<div class="search-show">
						<table class="search-show-sort">
							<tr>
								<td width="60px" align="right" style="font-size: 10px">排序</td>
								<td><input type="button" value="默认" id="sort-default"
									class="search-show-sort-btn"></td>
								<td><input type="button" value="价格" id="sort-price"></td>
								<td><input type="button" value="最喜欢" id="sort-favorite"></td>
								<td><input type="button" value="最畅销" id="sprt-popular"></td>
							</tr>
						</table>
						<!-- 商品分页展示 -->
						<table class="search-shows">
							<!-- <tr align="center">
								<td><img alt="" src="img/all/0.png"></td>
								<td><img alt="" src="img/all/1.png"></td>
								<td><img alt="" src="img/all/2.png"></td>
							</tr>
							<tr align="center">
								<td>魔术贴帆布鞋</td>
								<td>低帮帆布鞋</td>
								<td>低帮休闲运动鞋</td>
							</tr>
							<tr align="center">
								<td>¥369.00</td>
								<td>¥369.00</td>
								<td>¥369.00</td>
							</tr> -->
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td valign="top">
					<div class="search-option">
						<hr width="165px;" color="silver">
						<dl>
							<dt>
								<input type="button" value="系列" class="search-option-btn"
									name="series">
							</dt>
							<dd>
								<input type="checkbox" name="cons" id="series">cons
							</dd>
							<dd>
								<input type="checkbox" name="chuck" id="series">chuck
							</dd>
							<dd>
								<input type="checkbox" name="all_star" id="series">all_star
							</dd>
							<dd>
								<input type="checkbox" name="taylor" id="series">taylor
							</dd>
						</dl>
						<hr width="165px;" color="silver">
						<dl>
							<dt>
								<input type="button" value="季节" class="search-option-btn"
									name="season">
							</dt>
							<dd>
								<input type="checkbox" name="spring" id="season">春装
							</dd>
							<dd>
								<input type="checkbox" name="summer" id="season">夏装
							</dd>
							<dd>
								<input type="checkbox" name="autumn" id="season">秋装
							</dd>
							<dd>
								<input type="checkbox" name="winter" id="season">冬装
							</dd>
						</dl>
						<hr width="165px;" color="silver">
						<dl>
							<dt>
								<input type="button" value="种类" class="search-option-btn"
									name="classify">
							</dt>
							<dd>
								<input type="checkbox" name="shoe" id="classify">鞋子
							</dd>
							<dd>
								<input type="checkbox" name="cloth" id="classify">衣服
							</dd>
							<dd>
								<input type="checkbox" name="trouser" id="classify">裤子
							</dd>
							<dd>
								<input type="checkbox" name="decoration" id="classify">装饰品
							</dd>
						</dl>
						<hr width="165px;" color="silver">
						<dl>
							<dt>
								<input type="button" value="价格" class="search-option-btn"
									name="price">
							</dt>
							<dd>
								<input type="checkbox" name="0-199" id="price">0-199
							</dd>
							<dd>
								<input type="checkbox" name="200-299" id="price">200-299
							</dd>
							<dd>
								<input type="checkbox" name="300-399" id="price">300-399
							</dd>
							<dd>
								<input type="checkbox" name="400-499" id="price">400-499
							</dd>
						</dl>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div style="height:100px"></div>
	<!-- 版权区 -->
	<%@include file="copyright.jsp" %>
</body>
</html>