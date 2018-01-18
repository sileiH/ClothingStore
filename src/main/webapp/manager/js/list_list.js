var rowData = [];
var columnDefs = [ {
	headerName : '编号',
	field : 'number',
	width : 200,
	checkboxSelection : function(params) {
		return params.columnApi.getRowGroupColumns().length === 0;
	},
	enableRowGroup: true
}, {
	headerName : '姓名',
	field : 'name',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : "价格",
	field : 'price',
	width : 200,
	editable : true,
	enableRowGroup: true,
	enableValue: true
}, {
	headerName : "图片路径",
	field : 'url',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : '数量',
	field : 'count',
	width : 200,
	editable : true,
	enableRowGroup: true,
	enableValue: true
}, {
	headerName : '介绍',
	field : 'introduce',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : '季节',
	field : 'season',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : '系列',
	field : 'series',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : '尺码',
	field : 'size',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : '分类',
	field : 'classify',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : '生产日期',
	field : 'birth',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : '性别',
	field : 'sex',
	width : 200,
	editable : true,
	enableRowGroup: true
}, {
	headerName : '流行',
	field : 'popular',
	width : 200,
	editable : true,
	enableRowGroup: true,
	enableValue: true
}, {
	headerName : '喜欢',
	field : 'favorite',
	width : 200,
	editable : true,
	enableRowGroup: true,
	enableValue: true
},
];
var gridOptions = {
	columnDefs : columnDefs,
	rowData : rowData,
	onGridReady : function() {
		gridOptions.api.sizeColumnsToFit();
	},
	// 设置默认最小宽度
	defaultColDef : {
		minWidth : 150
	},
	// 行动画
	animateRows : true,
	// 排序
	enableSorting : true,
	// 筛选
	enableFilter : true,
	// 可以调整列标题边大小
	enableColResize : true,
	// 一次将选择一格,而不是一行
	suppressRowClickSelection : true,
	// 把搜索的框显示出来
	floatingFilter : true,
	// 菜单栏
	getContextMenuItems : getContextMenuItems,
	// 数据修改事件
	onCellValueChanged:function(params){
		/*console.log(params.data);
		delete params.data['birth']*/
		$.ajax({
			url:"list/updateListProduct.do",
			data:params.data,
			success:function(result){
				alert(result.message);
				if(result.state == 1){
					getRowData();
				}
			}
		})
	}
}
//菜单栏
function getContextMenuItems(params) {
	if (params.node == null)
		return null;
	var result = [];
	result.push({
		name : 'delete',
		//删除数据
		action : function() {
			if (gridOptions.api.getSelectedNodes().length > 0) {
				var delete_id = gridOptions.api.getSelectedNodes()[0].data;
				$.ajax({
					url:"list/deleteListProduct.do",
					data:{id:delete_id.id},
					success:function(result){
						alert(result.message);
						if(result.state == 1){
							getRowData();
						}
					}
				})

			}
		}
	})
	return result;
}
$(document).ready(function() {
	getRowData();
	$('#myGrid').width($('.main').width());
	$("#myModal").on("click",".ok",add)
	.on("hidden.bs.modal",function(){
		//console.log("==");
		$("#myModal").off("click",".ok");
	})
})
var number;
//获取数据
function getRowData(){
	$.ajax({
		url:"list/getAllProducts.do",
		success:function(result){
			if(result.state == 1){
				rowData = result.data;
				number = rowData[rowData.length - 1].number;
				gridOptions.rowData = rowData;
				$('#myGrid').empty(); 
				var eGridDiv = document.querySelector('#myGrid');
				new agGrid.Grid(eGridDiv, gridOptions);
			}
		}
	})
}
//添加数据
function add(){
	var add_param = {};
	var judge = true;
	
	for(var i = 0;i < $(".modal-body input").length;i ++){
		if(!$(".modal-body input")[i].value){
			judge = false;
			alert("数据不能为空")
			return;
		}
	}
	if(!$(".modal-body textarea")[0].value){
		alert("数据不能为空")
		judge = false;
	}
	birth_year = $(".modal-body input")[6].value.substr(0,4);
	if(birth_year < 1980 || birth_year > 2030){
		alert("请填写正确的年月日")
		judge = false;
	}
	if(judge){
		add_param.name = $(".modal-body input")[0].value;
		add_param.price = $(".modal-body input")[1].value;
		add_param.url = $(".modal-body input")[2].value;
		add_param.count = $(".modal-body input")[3].value;
		add_param.favorite = $(".modal-body input")[4].value;
		add_param.size = $(".modal-body input")[5].value;
		add_param.birth= $(".modal-body input")[6].value;
		add_param.popular = $(".modal-body input")[7].value;
		add_param.introduce = $(".modal-body textarea")[0].value;
		add_param.season = $(".modal-body select")[0].value;
		add_param.series = $(".modal-body select")[1].value;
		add_param.classify = $(".modal-body select")[2].value;
		add_param.sex = $(".modal-body select")[3].value;
		add_param.number = parseInt(number) + 1;
		$.ajax({
			url:"list/addListProduct.do",
			data:add_param,
			success:function(result){
				alert(result.message);
				if(result.state == 1){
					getRowData();
					$("#myModal").modal("hide");
				}
			}
		})
	}
	
	
}