$(document).ready(function () {
    //在标题处绑定当前页(第一此为1)
    $(".core-title").data("pageCurrent", 1);
    //获取审核数据
    getThroughData();

    $("#previousBtn").on("click", getPreviousPage)
    $("#nextBtn").on("click", getNextPage);
    $("#selectId").on("change", toSpecifiedPage)

})


function setGridInfo(e) {
    /*console.log($(".core-title").data("pageCurrent"));*/
    rowData = JSON.parse($(e).parent().parent().data("gridInfo"));
    gridOptions.rowData = rowData;
    $("#auditGrid").empty();
    var auditGrid = $("#auditGrid")[0];
    new agGrid.Grid(auditGrid, gridOptions);
}

var columnDefs = [
    {
        headerName: '编号',
        field: 'number',
    }, {
        headerName: '尺寸',
        field: 'size'
    }, {
        headerName: '颜色',
        field: 'color'
    }, {
        headerName: '数量',
        field: 'count'
    }];
var rowData = [
    {
        number: '10001',
        size: '30',
        color: 'red',
        count: '2'
    }, {
        number: '10003',
        size: '30',
        color: 'red',
        count: '2'
    }, {
        number: '10020',
        size: '30',
        color: 'red',
        count: '5'
    }
]
var gridOptions = {
    columnDefs: columnDefs,
    rowData: rowData,
    // 设置默认最小宽度
    defaultColDef: {
        minWidth: 150
    },
    onGridReady: function () {
        gridOptions.api.sizeColumnsToFit();
    },
    // 行动画
    animateRows: true,
    // 可以调整列标题边大小
    enableColResize: true
}

function toSpecifiedPage() {
    $(".core-title").data("pageCurrent", parseInt($(this).val()));
    getThroughData();
}

function getPreviousPage() {
    var pageCurrent = $(".core-title").data("pageCurrent");
    if (!pageCurrent) {
        pageCurrent = 1;
    }
    if (pageCurrent <= 1) {
        return;
    } else {
        $(".core-title").data("pageCurrent", pageCurrent - 1);
        getThroughData();
    }
}

function getNextPage() {
    var pageCurrent = $(".core-title").data("pageCurrent");
    if (!pageCurrent) {
        pageCurrent = 1;
    }
    if (pageCurrent >= $("#audit_pageCount").html()) {
        return;
    } else {
        $(".core-title").data("pageCurrent", pageCurrent + 1);
        getThroughData();
    }
    //console.log("next:" + pageCurrent)
}

function through(e) {
    var isThrough = 1;
    var id = $(e).attr("class");
    var auditName = $(e).parent().parent().children().eq(0).children().eq(0).val();
    if (auditName == '' || auditName == null) {
        alert("请输入审核人名");
        return;
    }
    chgThrough(id, isThrough, auditName);
}

function unThrough(e) {
    var isThrough = 2;
    var id = $(e).attr("class");
    var reason = $("#reason_" + id + " option:selected").html();
    var auditName = $(e).parent().parent().children().eq(0).children().eq(0).val();
    if (reason == '请选择') {
        alert("请选择不通过原因");
        return;
    }
    if (auditName == '' || auditName == null) {
        alert("请输入审核人名");
        return;
    }
    chgThrough(id, isThrough, auditName, reason);
}

function chgThrough(id, isThrough, auditName, reason) {
    $.ajax({
        url: "audit/chgThrough.do",
        data: {
            id: id,
            isThrough: isThrough,
            reason: reason,
            auditName: auditName
        },
        success: function (result) {
            if (result.state == 1) {
                alert("提交成功");
                $(".core-title").data("pageCurrent", 1);
                getThroughData();
            } else {
                alert(result.message);
            }
        }
    })
}

function getThroughData() {
    var pageCurrent = $(".core-title").data("pageCurrent")
    $.ajax({
        url: "audit/getThroughData.do",
        data: {
            pageCurrent: pageCurrent
        },
        success: function (result) {
            if (result.state == 0) {
                alert(result.message);
            } else {
                //进行对表格渲染
                showAuditTable(result.data);
            }
        }
    })
}

function showAuditTable(data) {
    //设置表格pageObject
    $("#audit_rowCount").html(data.pageObject.rowCount);
    $("#audit_pageCurrent").html(data.pageObject.pageCurrent);
    $("#audit_pageCount").html(data.pageObject.pageCount);
    $("#selectId").empty();
    for (var j = 1; j <= data.pageObject.pageCount; j++) {
        if (j == data.pageObject.pageCurrent) {
            $("#selectId").append("<option selected>" + j + "</option>");
        } else {
            $("#selectId").append("<option>" + j + "</option>");
        }

    }
    var audit_tbody = $("#audit_tbody");
    audit_tbody.empty();
    //设置表格OrderInfo
    for (var i = 0; i < data.OrderInfo.length; i++) {
        var tr = $("<tr></tr>")
        tr.append(" <td align='center' width='100px'><a data-toggle='modal' data-target='#myModal' onclick='setGridInfo(this)'>订单信息</a></td>");
        tr.append("<td width='300px'>" +
            "<div>收件人:" + data.OrderInfo[i].consignee + "</div><br>" +
            "<div>地&nbsp;&nbsp;&nbsp;址:" + data.OrderInfo[i].address + "</div><br>" +
            "<div>电&nbsp;&nbsp;&nbsp;话:" + data.OrderInfo[i].phone + "</div><br>" +
            "<div>邮&nbsp;&nbsp;&nbsp;箱:" + data.OrderInfo[i].e_mail + "</div><br>" +
            "</td>");
        tr.append("<td width='200px' align='center'>" +
            "<div style='margin:10px 0'>" +
            "审核人:<input type='text' style='width: 60px;'>" +
            "</div>" +
            "<div>" +
            "<input type='button' class='" + data.OrderInfo[i].id + "' onclick='through(this)' value='通过' style='width: 50px;padding:0'>" +
            "<input type='button' class='" + data.OrderInfo[i].id + "' onclick='unThrough(this)' value='不通过' style='width: 50px; padding:0'>" +
            "</div>" +
            "</td>");
        tr.append("<td align='center' width='300px'>" +
            "<div align='center'>" +
            "不通过的原因(通过则不需要):<br>" +
            "<select id='reason_" + data.OrderInfo[i].id + "' style='width: 150px; height: 30px'>" +
            "<option id='false_0'>请选择</option>" +
            "<option id='false_1'>订单内容错误</option>" +
            "<option id='false_2'>用户信息错误</option>" +
            "<option id='false_3'>其他原因</option>" +
            "</select>" +
            "</div>" +
            "</td>");
        tr.data("gridInfo", data.OrderInfo[i].orderList);
        audit_tbody.append(tr);
    }
}