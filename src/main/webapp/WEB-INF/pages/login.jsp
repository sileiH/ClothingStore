<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
/* 	border: 1px solid red; */
	background-image: url(img/background.jpg);
	text-align:center;
}

.login {
/* 	border: 1px solid green; */
	width: 50%;
	height: 200px;
	position:fixed;
	left:0;
	right:0;
	top:0;
	bottom:0;
	margin:auto;
	
}
.login-logo{
	margin:0 auto;
}

.login-text{
	margin: 20px 0 0 0;
}
.login-password{
	margin: 0;
}
.login-btn{
	margin: 0 10px;
}
</style>
<script type="text/javascript">
	/* 登录判断  */
	function login(){
		var params = {
				account:$("#account").val(),
				password:$("#password").val(),
		};
		//console.log(params);
		$.ajax({
            url:"login.do",
            type:"post",
            data:params,
            success:function(result){
            	//console.log(result);
                if(result.state == 1){
                	alert(result.message);
                	console.log(result);
                	if(result.data.power == "customer"){
                		//跳转到主页面
                		location.href="toIndex.do";
                	}else{
                		location.href = "toManager.do";
                	}
                	
                	
                }else{
                	alert(result.message);
                }
            },
        });        
	}
	
	/* 跳转到注册界面 */
	function register(){
		location.href = "toRegister.do";
	}
</script>
</head>
<body>
	<div class="login">
		<!-- logo -->
		<div class="login-logo" >
			<table class="login-logo">
				<tr>
					<td><img src="img/login-logo.png" width="50px"></td>
					<td width="150px"><span style="font-size:30px">Sign in</span></td>
				</tr>
			</table>
		</div>
		<!-- form -->
		<div class="login-control-group">
			<form id="login">
				<div class="login-text">帐号: <input type="text" name="account" id="account"></div><br>
				<div class="login-password">密码: <input type="password" name="password" id="password"></div><br>
				<div>
					<input type="button" class="btn btn-info login-btn" value="登录" onclick="login();">
					<input type="button" class="btn btn-info login-btn" value="注册" onclick="register();">
				</div>
			</form>
		</div>
	</div>
</body>
</html>