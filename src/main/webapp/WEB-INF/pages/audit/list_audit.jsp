<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="manager/js/audit_list.js"></script>
<script src="js/jquery-1.11.1.js"></script>
<div class="core-title" align="center" style="height: 70px">
    <div>
        <div style="font-size: 20px; padding: 10px;">订单审核</div>
    </div>
</div>
<div>
    <table border="1" align="center" valign="center">
        <tbody id="audit_tbody">
        <%--<tr height="150px">
            <td align="center" width="100px"><a href="#">订单信息</a></td>
            <td width="300px">
                <div>收件人:Tom</div>
                <br>
                <div>地&nbsp;&nbsp;&nbsp;址:广东 珠海市 斗门区 斗门镇XXXXXXXXXXXX</div>
                <br>
                <div>电&nbsp;&nbsp;&nbsp;话:13588298888</div>
                <br>
                <div>邮&nbsp;&nbsp;&nbsp;箱:hzxshsl1@126.com</div>
                <br>
            </td>
            <td width="200px" align="center">
                <div style="margin:10px 0">
                    审核人:<input type="text" style="width: 60px;">
                </div>
                <div>
                    <input type="button" value="通过" style="width: 50px;padding:0">
                    <input type="button" value="不通过" style="width: 50px; padding:0">
                </div>
            </td>
            <td align="center" width="300px">
                <div align="center">
                    不通过的原因(通过则不需要):<br>
                    <select style="width: 150px; height: 30px">
                        <option id="false_0">请选择</option>
                        <option id="false_1">订单内容错误</option>
                        <option id="false_2">用户信息错误</option>
                        <option id="false_3">其他原因</option>
                    </select>
                </div>
            </td>
        </tr>--%>
        </tbody>
        <tr>
            <td colspan="2">共<span id="audit_rowCount"></span>条记录,当前为<span id="audit_pageCurrent"></span>/<span
                    id="audit_pageCount"></span>页
            </td>
            <td colspan="2" align="right">
                <input type="button" value="上一页" id="previousBtn">
                跳转至:
                <select id="selectId" style="width: 60px;margin-bottom: 0px;">

                </select>
                <input type="button" value="下一页" id="nextBtn">
            </td>
        </tr>
    </table>
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">订单详情</h4>
            </div>
            <div class="modal-body" style="padding-left: 0px;padding-right: 0px;padding-bottom: 0px;">
                <div id="auditGrid" class="ag-theme-fresh" style="height: 200px; width: 560px"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
