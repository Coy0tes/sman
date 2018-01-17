<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>跑班成员管理管理</title>
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
		<h5>跑班成员管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="classesMember" action="${ctx}/classmember/classesMember/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>报名人：</span>
				<form:input path="membername" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
			<span>班级：</span>
				<form:input path="classesname" htmlEscape="false" maxlength="200"  class=" form-control input-sm"/>
			<span>联系手机：</span>
				<form:input path="lxsj" htmlEscape="false" maxlength="30"  class=" form-control input-sm"/>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="classmember:classesMember:add">
				<table:addRow url="${ctx}/classmember/classesMember/form" title="跑班成员管理" height="50%" width="50%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="classmember:classesMember:edit">
			    <table:editRow url="${ctx}/classmember/classesMember/form" title="跑班成员管理" id="contentTable" height="50%" width="50%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="classmember:classesMember:del">
				<table:delRow url="${ctx}/classmember/classesMember/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="classmember:classesMember:import">
				<table:importExcel url="${ctx}/classmember/classesMember/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="classmember:classesMember:export">
	       		<table:exportExcel url="${ctx}/classmember/classesMember/export"></table:exportExcel><!-- 导出按钮 -->
	       	</shiro:hasPermission>
	       <button class="btn btn-primary btn-outline btn-sm " data-toggle="tooltip" data-placement="left" onclick="sortOrRefresh()" title="刷新"><i class="glyphicon glyphicon-repeat"></i> 刷新</button>
		
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
				<th  class="sort-column membername">报名人</th>
				<th  class="sort-column classesname">班级</th>
				<th  class="sort-column lxsj">联系手机</th>
				<th  class="sort-column bmsj">报名时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="classesMember">
			<tr>
				<td> <input type="checkbox" id="${classesMember.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看跑班成员管理', '${ctx}/classmember/classesMember/form?id=${classesMember.id}','50%', '50%')">
					${classesMember.membername}
				</a></td>
				<td>
					${classesMember.classesname}
				</td>
				<td>
					${classesMember.lxsj}
				</td>
				<td>
					${classesMember.bmsj}
				</td>
				<td>
					<shiro:hasPermission name="classmember:classesMember:view">
						<a href="#" onclick="openDialogView('查看跑班成员管理', '${ctx}/classmember/classesMember/form?id=${classesMember.id}','50%', '50%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="classmember:classesMember:edit">
    					<a href="#" onclick="openDialog('修改跑班成员管理', '${ctx}/classmember/classesMember/form?id=${classesMember.id}','50%', '50%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="classmember:classesMember:del">
						<a href="${ctx}/classmember/classesMember/delete?id=${classesMember.id}" onclick="return confirmx('确认要删除该跑班成员管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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