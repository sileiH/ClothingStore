<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<script type="text/javascript" src="../js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		console.log('${shop_list[0]}')
		console.log(JSON.parse('${shop_list[0]}'));
	})
</script>
</head>
<body>
	<c:if test="${sessionScope.shop_list!=null}">
		<c:forEach var="message" items="${sessionScope.shop_list}">
			<span>${message.name}</span><br>
			<%-- <span>${message}</span> --%>
		</c:forEach>
	</c:if>
</body>
</html>