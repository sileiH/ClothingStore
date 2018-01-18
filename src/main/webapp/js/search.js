$(document).ready(function() {
	$(".search-option-btn").click(hideOrShowOption);
	$(".search-option input[type='checkbox']").click(selectedOption);
	$(".search-show-sort input").click(changeSortType);
	// 初始绑定当前页为第一页,默认的排序方式,性别
	$(".search-shows").data("pageCurrent", "1");
	$(".search-shows").data("sort", "sort-default");
	getPageObjects();
})


// 改变量用于判定price是降序还是升序
var price_sort = 0;
function changeSortType() {
	$(".search-shows").empty();
	initPageCurrent();
	var tr = $(this).parent().parent();
	tr.children().children(".search-show-sort-btn").removeClass(
			"search-show-sort-btn");
	$(this).addClass("search-show-sort-btn");
	var sort = $(this).attr("id");
	if (sort == "sort-price") {
		price_sort = price_sort + 1;
		if (price_sort % 2 == 0) {
			$("#sort-price").css("background-image",
					"url(img/search/search_up_arrow.png)");
			sort = sort + "_up";
		} else {
			$("#sort-price").css("background-image",
					"url(img/search/search_down_arrow.png)");
			sort = sort + "_down";
		}
	} else {
		$("#sort-price").css("background-image",
				"url(img/search/search_default.png)")
	}
	// 把排序方式数据绑定到展示表格(.search-shows)中
	if ($(".search-shows").data("sort")) {
		$(".search-shows").removeData("sort");
	}
	$(".search-shows").data("sort", sort);
	getPageObjects();
}

function clearAllOption() {
	$(".search-filter-selected").empty();
	$(".search-filter input").remove();
	$(".search-option input[type='checkbox']").prop("checked", false);
	$(".search-shows").empty();
	$(".search-shows").removeData("filter");
	getPageObjects();
}

function hideOrShowOption() {

	var dd = $(this).parent().parent().children("dd");
	if (dd.css("display") == "block") {
		$(this).css("background-image", "url(img/search/search-option+.png)")
	} else {
		$(this).css("background-image", "url(img/search/search-option-.png)")
	}
	dd.toggle(400);

}

function selectedOption() {
	$(".search-shows").empty();
	initPageCurrent();
	// kind为种类,kinds为kind的元素
	var kind = $(this).parent().parent().children("dt").children("input").attr(
			"name");
	var kinds = $(".search-filter-selected tr[name='" + kind + "']");
	// 判断选中框是否选中
	if ($(this).prop("checked") == true) {
		// 判断是否早就存在kind
		if (!kinds.length > 0) {
			// 不存在则创建
			var tr = $("<tr name=" + kind + "></tr>");
			tr.append("<td>" + kind + "</td>")
			$(".search-filter-selected").append(tr);
			kinds = $(".search-filter-selected tr[name='" + kind + "']");
		}
		// 移除之前该种类的筛选项目
		$(".search-filter-selected tr[id='" + kind + "']").remove();

		// 并且把option区域的checkbox的勾去掉
		var thisKindOption = $(".search-option input[id='" + kind + "']");
		for (var z = 0; z < thisKindOption.length; z++) {
			$(thisKindOption[z]).prop("checked", false);
		}
		$(".search-option input[name='" + this.name + "']").prop("checked",
				true);

		// 添加筛选项目,在种类的后面
		var trs = $("<tr name='" + this.name + "' id='" + kind + "'></tr>");
		trs.append("<td style='padding-left:40px;'>" + this.name + "</td>");
		kinds.after(trs);
	} else {
		// 去除选中,则移除筛选项
		$(".search-filter-selected tr[name='" + this.name + "']").remove();
		// 如果该种类的筛选项都没了,去除该种类
		if ($(".search-filter-selected #" + kind + "").length <= 0) {
			kinds.remove();
		}
	}
	if ($(".search-filter input").length <= 0) {
		var clear_selected = "<input type='button' value='>>全部重选' class='search-filter-btn' onclick='clearAllOption()'>";
		$(".search-filter").append(clear_selected);
	} else if ($(".search-filter-selected tr").length <= 0) {
		$(".search-filter input").remove();
	}

	// 把过滤元素绑定到展示区域的表中
	var filter = {};
	//获取系列筛选
	var series = $(".search-filter-selected tr[id='series']");
	filter.series = getFilter(series);
	//获取季节筛选
	var season = $(".search-filter-selected tr[id='season']");
	filter.season = getFilter(season);
	//获取种类筛选
	var classify = $(".search-filter-selected tr[id='classify']");
	filter.classify = getFilter(classify);
	//获取价格筛选
	var price = $(".search-filter-selected tr[id='price']");
	filter.price = getFilter(price);
	if ($(".search-shows").data("filter")) {
		$(".search-shows").removeData("filter");
	}
	$(".search-shows").data("filter", filter);
	//console.log($(".search-shows").data("filter"));
	getPageObjects();
}

// 用于获取filter过滤元素
function getFilter(type) {
	//console.log($(type[0]).attr('name'));
	return $(type[0]).attr('name');
}
//设置当前页为第一页
function initPageCurrent(){
	if($(".search-shows").data("pageCurrent")){
		$(".search-shows").removeData("pageCurrent");
		$(".search-shows").data("pageCurrent","1");
		//console.log(page);
	}
}