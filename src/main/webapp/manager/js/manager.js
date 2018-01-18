//跳转到登录界面
function toLogin(){
	location.href = "toLogin.do";
}

//点击注销
function logout(){
	location.href = "logout.do";
}

$(document).ready(function() {
	$(".manager_logout a").on("click",logout)
})