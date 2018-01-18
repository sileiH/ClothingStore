var rowData = [];
var columnDefs = [ {
    headerName : '帐号',
    field : 'account',
    width : 200,
    editable : true,
    checkboxSelection : function(params) {
        return params.columnApi.getRowGroupColumns().length === 0;
    },
    enableRowGroup: true
}, {
    headerName : "姓名",
    field : 'username',
    width : 200,
    editable : true,
    enableRowGroup: true
}, {
    headerName : "密码",
    field : 'password',
    width : 200,
    editable : true,
    enableRowGroup: true
}, {
    headerName : '权限',
    field : 'power',
    width : 200,
    editable : true,
    enableRowGroup: true
} ];
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
        $.ajax({
            url:"role/updateRoleObject.do",
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
                    url:"role/deleteRoleObject.do",
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
//获取数据
function getRowData(){
    $.ajax({
        url:"role/getRoleObjects.do",
        success:function(result){
            if(result.state == 1){
                rowData = result.data;
                //console.log(rowData);
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
        if(!$($(".modal-body input")[i]).val()){
            alert("输入不能有空");
            judge = false;
            return;
        }
    }
    if(judge){
        var judges = true;
        add_param.account = $($(".modal-body input")[0]).val();
        add_param.username = $($(".modal-body input")[1]).val();
        add_param.password = $($(".modal-body input")[2]).val();
        add_param.power = $($(".modal-body input")[3]).val();
        for(var j = 0;j < rowData.length; j ++){
            if(rowData[j].username == add_param.username || rowData[j].account == add_param.account){
                alert("帐号或用户名重复,请重新输入");
                judges = false;
                return;
            }
        }
        if(judges){
            $.ajax({
                url:"role/addRoleObject.do",
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
}