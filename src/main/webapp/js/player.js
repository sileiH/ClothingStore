window.onload = function() {
	player_start();
}
//图片轮播器
var player;
var player_n = 0;
function player_start() {
	// 启动定时器
	player = setInterval(function() {
		player_flow();
	}, 5000);
}
/*function player_stop() {
	clearInterval(player);
}*/

//图片切换的流程
function player_flow(){
	player_n++;
	// 获取所有的图片
	var imgs = $(".player > img");
	for (var i = 0; i < imgs.length; i++) {
		imgs[i].className = "player-hidden";
	}
	var next = player_n % imgs.length;
	imgs[next].className = "";
}

//图片切换
function player_left(){
	//停止定时器
	clearInterval(player);
	//切换到上一张图片
	if(player_n == 0){
		player_n = player_n + 5;
	}
	player_n = player_n - 2;
	player_flow();
	//重新开始定时器
	player_start();
}
function player_right(){
	//停止定时器
	clearInterval(player);
	//切换到下一张图片
	player_flow();
	//重新开始定时器
	player_start();
}