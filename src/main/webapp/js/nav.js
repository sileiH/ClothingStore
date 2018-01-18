//导航栏的伸缩
$(window).scroll(function() {
	if ($(this).scrollTop() > $('.nav').height()) {
		$(".nav").addClass("sticky");
		$(".stickspace").css("height","80px");
	} else {
		$(".nav").removeClass("sticky");
		$(".stickspace").css("height","130px");
	}
});

//跳转到登录界面
function toLogin(){
	location.href = "toLogin.do";
}

//跳转到注册页面
function toRegister(){
	location.href = "toRegister.do";
}

//跳转到展示界面
function toSearch(e){
	console.log($(e).html());
	location.href = "toSearch.do?sex=" + $(e).html();
}

//点击注销
function logout(){
	location.href = "logout.do";
}

//跳转到购物车
function toList(){
	location.href = "toList.do";
}

//跳转到主页
function toIndex(){
	location.href = "toIndex.do";
}

$(document).ready(function() {
	$(".nav-top-logout a").on("click",logout)
})