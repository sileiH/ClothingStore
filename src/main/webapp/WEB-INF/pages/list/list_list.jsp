<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标题 -->
<script src="manager/js/list_list.js"></script>
<div class="core-title" align="center">
	<div>
		<div style="font-size: 20px; padding: 10px;">商品列表</div>
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
			<div class="modal-body" align="center">
				姓&nbsp;名: <input type="text">
				价&nbsp;格: <input type="text"><br>
				路&nbsp;径: <input type="text">
				数&nbsp;量: <input type="text"><br>
				喜&nbsp;欢: <input type="text">
				季&nbsp;节: <select>
								<option>spring</option>
								<option>summer</option>
								<option>autumn</option>
								<option>winter</option>
						   </select><br>
				尺&nbsp;码: <input type="text">
				系&nbsp;列: <select>
								<option>cons</option>
								<option>chuck</option>
								<option>all_star</option>
								<option>taylor</option>
						   </select><br>
				分&nbsp;类: <select>
								<option>shoe</option>
								<option>cloth</option>
								<option>trouser</option>
								<option>decoration</option>
						   </select>
				日&nbsp;期: <input type="date"><br>
				性&nbsp;别: <select>
								<option>男的</option>
								<option>女的</option>
								<option>儿童</option>
						   </select>
				流&nbsp;行: <input type="text"><br>
				介&nbsp;绍: <textarea style="width: 475px"></textarea>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary ok">提交更改</button>
			</div>
		</div>
	</div>
</div>