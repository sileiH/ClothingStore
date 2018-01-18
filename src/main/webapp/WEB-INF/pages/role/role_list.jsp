<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标题 -->
<script src="manager/js/role_list.js"></script>
<div class="core-title" align="center">
	<div>
		<div style="font-size: 20px; padding: 10px;">角色管理</div>
		<div style="padding: 10px;" align="left">
			<input type="button" value="添加数据"
				style="margin: 0 10px 5px 0;" data-toggle="modal"
				data-target="#myModal">
		</div>
	</div>
</div>
<!-- 异步请求区域 -->
<div id="myGrid" class="ag-theme-fresh" style="height: 450px;"></div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">添加数据</h4>
			</div>
			<div class="modal-body">
				帐号: <input type="text">
				姓名: <input type="text">
				密码: <input type="text">
				权限: <input type="text">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary ok">提交更改</button>
			</div>
		</div>
	</div>
</div>
