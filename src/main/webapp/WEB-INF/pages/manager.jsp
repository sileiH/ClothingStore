<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>index</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="manager/css/nav.css">
    <link rel="stylesheet" type="text/css" href="manager/font/iconfont.css">
    <script src="manager/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="manager/js/nav.js"></script>
    <script type="text/javascript" src="manager/js/ag-grid-enterprise.noStyle.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="manager/js/manager.js"></script>
    <link rel="stylesheet" type="text/css" href="manager/css/ag-grid.css">
    <style type="text/css">
        header{
            width: 100%;
            background-color: #263238;
            height: 60px;
        }
        .core{
            width: 100%;
            height: auto;
        }
        .manager_login,.manager_register{
        	color:white;
        	font-size: 16px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="nav">
        <div class="nav-top">
            <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="manager/images/mini.png"></div>
        </div>
        <ul>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>用户配置</span><i
                        class="my-icon nav-more"></i></a>
                <ul>
                    <li><a href="javascript:;" id="load-user-id"><span>角色管理</span></a></li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>商品管理</span><i
                        class="my-icon nav-more"></i></a>
                <ul>
                    <li><a href="javascript:;" id="load-list-id"><span>商品列表</span></a></li>
                    <li><a href="javascript:;" id="load-echart-id"><span>图表展示</span></a></li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                        class="my-icon nav-more"></i></a>
                <ul>
                    <li><a href="javascript:;" id="load-order-id"><span>订单列表</span></a></li>
                    <li><a href="javascript:;" id="load-audit-id"><span>订单审核</span></a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="main" >
        <!-- 头部 -->
        <header style="border-bottom:1px solid rgba(255,255,255,.1)">
        	<table>
        		<tr>
					<td width="1000px"><img src="img/nav-logo.png"
						height="50px" style="margin-left: 50px"></td>
					<c:if test="${empty sessionScope.user}">
						<td class="manager_login" width="100px"><a href="javascript:void(0);"
							onclick="toLogin();">登录</a></td>
					</c:if>
					<c:if test="${!empty sessionScope.user}">
						<td width="100px" class="manager_login">
							${sessionScope.user}
						</td>
						<td width="100px" class="manager_login manager_logout">
							<a href="javascript:void(0);">注销</a>
						</td>
					</c:if>
					<td class="nav-top-shop">购物车</td>
				</tr>
        	</table>
        </header>
        <!-- 图表区域 -->
        <div class="core" style="width: 100%">
           
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
	$("#load-user-id").click(function(){
		var url="role/listUI.do?t="+Math.random(1000);
		$(".core").load(url);
	})
	$("#load-list-id").click(function(){
		var url="list/listUI.do?t="+Math.random(1000);
		$(".core").load(url);
	})
	$("#load-echart-id").click(function(){
		var url="echart/listUI.do?t="+Math.random(1000);
		$(".core").load(url);
	})
    $("#load-order-id").click(function () {
        var url="order/listUI.do?t="+Math.random(1000);
        $(".core").load(url);
    })
    $("#load-audit-id").click(function () {
        var url="audit/listUI.do?t="+Math.random(1000);
        $(".core").load(url);
    })
</script>
</html>