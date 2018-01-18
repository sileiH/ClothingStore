<%@page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册界面</title>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	/* 	border: 1px solid red; */
	background-image: url(img/background.jpg);
	text-align: center;
}

.register {
	/* 	border: 1px solid green; */
	width: 50%;
	height: 400px;
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	margin: auto;
}

.register-logo {
	margin: 0 auto;
}

.register-text {
	margin: 20px 0 0 0;
}

.register-password {
	margin: 0;
}

.register-btn {
	margin: 0;
}
</style>
<script type="text/javascript">
	/* 注册判断  */
	function register(){
		var params = {
				account:$("#account").val(),
				password:$("#password").val(),
				username:$("#username").val()
		};
		if(params.password.length < 6){
			alert("密码不得小于6位");
			return;
		}
		if($("#password").val() != $("#r-password").val()){
			alert("两次输入的密码不同");
			return;
		}
		console.log(params);
		$.ajax({
            url:"register.do",
            type:"post",
            data:params,
            success:function(result){
            	console.log(result);
                if(result.state == 1){
                	alert("注册成功!");
                	//跳转到主页面
                	location.href="toIndex.do";
                }else{
                	alert(result.message);
                }
            },
        });        
	}
	
	
</script>
</head>
<body>
	<div class="register">
		<!-- register -->
		<div class="register-logo">
			<table class="register-logo">
				<tr>
					<td><img src="img/login-logo.png" width="50px"></td>
					<td width="150px"><span style="font-size: 30px">Sign up</span></td>
				</tr>
			</table>
		</div>
		<!-- form -->
		<div class="register-control-group">
			<form id="register">
				<div class="register-text">
					帐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号: <input type="text" name="account" id="account">
				</div>
				<br>
				<div>
					用&nbsp;&nbsp;户&nbsp;&nbsp;名: <input type="text" name="username" id="username">
				</div>
				<br>
				<div class="register-password">
					密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码: <input type="password" name="password" id="password">
				</div>
				<br>
				<div class="register-password">
					重复密码: <input type="password" name="r-password" id="r-password">
				</div>
				<br>
				<div>
					<input type="button" class="btn btn-info register-btn" value="注册"
						onclick="register();">
				</div>
			</form>
		</div>
	</div>
</body>
</html>