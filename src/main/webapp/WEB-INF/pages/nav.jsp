<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- 设置导航栏 -->
<div class="nav">
	<div class="nav-content">
		<div class="nav-top">
			<table class="nav-top-table">
				<tr>
					<td class="nav-top-img"><a  href="javascript:void(0);"
							onclick="toIndex();"><img src="img/nav-logo.png"
						height="50px"></a></td>
					<c:if test="${empty sessionScope.user}">
						<td class="nav-top-login"><a href="javascript:void(0);"
							onclick="toLogin();">登录</a></td>
						<td class="nav-top-register"><a href="javascript:void(0);"
							onclick="toRegister();">注册</a></td>
					</c:if>
					<c:if test="${!empty sessionScope.user}">
						<td class="nav-top-login" align="center">
							${sessionScope.user}
						</td>
						<td class="nav-top-logout">
							<a href="javascript:void(0);">注销</a>
						</td>
					</c:if>
					<td class="nav-top-shop"><a href="javascript:void(0);"
							onclick="toList();">购物车</a></td>
				</tr>
			</table>
		</div>
		<div class="nav-bottom">
			<table class="nav-bottom-table">
				<tr>
					<td><a href="javascript:void(0);" onclick="toSearch(this);">男的</a></td>
					<td><a href="javascript:void(0);" onclick="toSearch(this);">女的</a></td>
					<td><a href="javascript:void(0);" onclick="toSearch(this);">儿童</a></td>
					<!-- <td><a href="javascript:void(0);" onclick="toSearch(this);">店铺分布</a></td> -->
				</tr>
			</table>
		</div>
	</div>
</div>
<!-- 空白区 -->
<div class="stickspace" style="height: 130px;"></div>