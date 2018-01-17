<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>预约信息管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
		});
	</script>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content">
	<div class="ibox">
	<div class="ibox-title">
		<h5>预约信息列表 </h5>
		<div class="ibox-tools">
			<a class="collapse-link">
				<i class="fa fa-chevron-up"></i>
			</a>
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
				<i class="fa fa-wrench"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#">选项1</a>
				</li>
				<li><a href="#">选项2</a>
				</li>
			</ul>
			<a class="close-link">
				<i class="fa fa-times"></i>
			</a>
		</div>
	</div>
    
    <div class="ibox-content">
	<sys:message content="${message}"/>
	
	<!--查询条件-->
	<div class="row">
	<div class="col-sm-12">
	<form:form id="searchForm" modelAttribute="appointRecord" action="${ctx}/appointrecord/appointRecord/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>预约号：</span>
				<form:input path="yybh" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
			&nbsp;&nbsp;
			<span>预约人：</span>
				<form:input path="yyrname" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
			&nbsp;&nbsp;
			<span>预约卡号：</span>
				<form:input path="cardbh" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
			<%-- &nbsp;&nbsp;
			<span>预约场馆：</span>
				<form:input path="sitename" htmlEscape="false" maxlength="200"  class=" form-control input-sm"/> --%>
			<div style="margin-top:5px;">
				<span>预约时间：</span>
					<form:input path="yysj" htmlEscape="false" maxlength="30" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  class=" form-control input-sm"/>
				&nbsp;&nbsp;
				<span>预约状态：</span>
					<form:select path="status"  class="form-control m-b">
						<form:option value="" label=""/>
						<form:options items="${fns:getDictList('appointstatus')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
					</form:select>
				&nbsp;&nbsp;
				<span>使用时间：</span>
					<form:input path="sysj" htmlEscape="false" maxlength="30" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  class=" form-control input-sm"/>
			</div>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="appointrecord:appointRecord:add">
				<table:addRow url="${ctx}/appointrecord/appointRecord/form" title="预约信息"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="appointrecord:appointRecord:edit">
			    <table:editRow url="${ctx}/appointrecord/appointRecord/form" title="预约信息" id="contentTable"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="appointrecord:appointRecord:del">
				<table:delRow url="${ctx}/appointrecord/appointRecord/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="appointrecord:appointRecord:import">
				<table:importExcel url="${ctx}/appointrecord/appointRecord/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="appointrecord:appointRecord:export">
	       		<table:exportExcel url="${ctx}/appointrecord/appointRecord/export"></table:exportExcel><!-- 导出按钮 -->
	       	</shiro:hasPermission>
	       <button class="btn btn-primary btn-sm btn-outline" data-toggle="tooltip" data-placement="left" onclick="sortOrRefresh()" title="刷新"><i class="glyphicon glyphicon-repeat"></i> 刷新</button>
		
			</div>
		<div class="pull-right">
			<button  class="btn btn-primary btn-rounded btn-outline btn-sm " onclick="search()" ><i class="fa fa-search"></i> 查询</button>
			<button  class="btn btn-primary btn-rounded btn-outline btn-sm " onclick="reset()" ><i class="fa fa-refresh"></i> 重置</button>
		</div>
	</div>
	</div>
	
	<!-- 表格 -->
	<table id="contentTable" class="table table-striped table-bordered table-hover table-condensed dataTables-example dataTable">
		<thead>
			<tr>
				<th> <input type="checkbox" class="i-checks"></th>
				<th  class="sort-column yybh">预约号</th>
				<th  class="sort-column yyrname">预约人</th>
				<th  class="sort-column yyrdh">预约人电话</th>
				<th  class="sort-column cardbh">预约卡号</th>
				<th  class="sort-column sitename">预约场馆</th>
				<th  class="sort-column yysj">预约时间</th>
				<th  class="sort-column status">预约状态</th>
				<th  class="sort-column sysj">使用时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="appointRecord">
			<tr>
				<td> <input type="checkbox" id="${appointRecord.id}" class="i-checks"></td>
				<td>
					${appointRecord.yybh}
				</td>
				<td>
					${appointRecord.yyrname}
				</td>
				<td>
					${appointRecord.yyrdh}
				</td>
				<td>
					${appointRecord.cardbh}
				</td>
				<td>
					${appointRecord.sitename}
				</td>
				<td>
					${appointRecord.yysj}
				</td>
				<td>
					${fns:getDictLabel(appointRecord.status, 'appointstatus', '')}
				</td>
				<td>
					${appointRecord.sysj}
				</td>
				<td>
					<shiro:hasPermission name="appointrecord:appointRecord:view">
						<a href="#" onclick="openDialogView('查看预约信息', '${ctx}/appointrecord/appointRecord/form?id=${appointRecord.id}','800px', '500px')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="appointrecord:appointRecord:edit">
    					<a href="#" onclick="openDialog('修改预约信息', '${ctx}/appointrecord/appointRecord/form?id=${appointRecord.id}','800px', '500px')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="appointrecord:appointRecord:del">
						<a href="${ctx}/appointrecord/appointRecord/delete?id=${appointRecord.id}" onclick="return confirmx('确认要删除该预约信息吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
					</shiro:hasPermission>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
		<!-- 分页代码 -->
	<table:page page="${page}"></table:page>
	<br/>
	<br/>
	</div>
	</div>
</div>
</body>
</html>