<%@page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=utf-8">
<title>主页</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/player.js"></script>
<link href="css/nav.css" rel="stylesheet">
<link href="css/player.css" rel="stylesheet">
<link href="css/copyright.css" rel="stylesheet">
<link href="css/index_core.css" rel="stylesheet">
</head>
<body>
	<!-- 导航栏 -->
	<%@include file="nav.jsp" %>
	<!-- 测试区域 -->
	<!-- <div style="height:1000px;"></div> -->
	<!-- 图片轮换栏 -->
	<div class="player">
		<img alt="jpg1" src="img/1.jpg">
		<img alt="jpg2" src="img/2.jpg" class="player-hidden">
		<img alt="jpg3" src="img/3.jpg" class="player-hidden">
		<img alt="jpg4" src="img/4.jpg" class="player-hidden">
		<img alt="jpg5" src="img/5.jpg" class="player-hidden">
		<img alt="jpg6" src="img/6.jpg" class="player-hidden">
		<img alt="jpg7" src="img/7.jpg" class="player-hidden">
		<a href="javascript:void(0);" onclick="player_left();"><img src="img/arrow-left.png" id="player-left"></a>
		<a href="javascript:void(0);" onclick="player_right();"><img src="img/arrow-right.png" id="player-right"></a>
	</div>
	<!-- 核心栏(展示区域) -->
	<div class="core">
		<%@include file="index_core.jsp" %>
	</div>
	<div style="height:100px"></div>
	<!-- 版权栏 -->
	<%@include file="copyright.jsp" %>
</body>
</html>