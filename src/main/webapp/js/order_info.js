$(document).ready(function() {
	$("#order_info_f input[type='text']").on("blur",function(e){
		if(!$(this).val()){
			console.log("地址不能为空");
		}
	})
})