var rowData = [];
var columnDefs = [ {
    headerName : 'ID',
    field : 'id',
    width : 200,
    checkboxSelection : function(params) {
        return params.columnApi.getRowGroupColumns().length === 0;
    },
    enableRowGroup: true
},{
    headerName : "收件人",
    field : 'consignee',
    width : 200,
    editable : true,
    enableRowGroup: true
},{
    headerName : "电话",
    field : 'phone',
    width : 200,
    editable : true,
    enableRowGroup: true
}, {
    headerName : "地址",
    field : 'address',
    width : 200,
    editable : true,
    enableRowGroup: true
}, {
    headerName : "邮箱",
    field : 'e_mail',
    width : 200,
    editable : true,
    enableRowGroup: true
}, {
    headerName : '订单详情',
    field : 'orderList',
    width : 200,
    editable : true,
    enableRowGroup: true
},{
    headerName : '审核结果',
    field : 'isThrough',
    width : 200,
    enableRowGroup: true,
    valueFormatter:chgStyle
},{
    headerName : '创建日期',
    field : 'createTime',
    width : 200,
    enableRowGroup: true
},{
    headerName : '修改日期',
    field : 'updateTime',
    width : 200,
    enableRowGroup: true
},{
    headerName : '审核人',
    field : 'auditName',
    width : 200,
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
            url:"order/updateOrderInfo.do",
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

function chgStyle(params) {
    if (params.value === null || params.value === undefined) {
        return null;
    } else if (isNaN(params.value)) {
        return 'NaN';
    } else {
        if(params.value == 0){
            return '未审核';
        }else if(params.value == 1){
            return '通过';
        }else if(params.value == 2){
            return '未通过';
        }
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
                    url:"order/deleteOrderInfo.do",
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
})
//获取数据
function getRowData(){
    $.ajax({
        url:"order/getAllOrderInfo.do",
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
