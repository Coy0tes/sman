<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>约跑班级管理管理</title>
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
		<h5>约跑班级管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="classes" action="${ctx}/classes/classes/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>班级名称：</span>
				<form:input path="name" htmlEscape="false" maxlength="200"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<span>班级类型：</span>
				<form:select path="classtype"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('classes_classtype')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>&nbsp;&nbsp;
			<span>每日公里数：</span>
				<form:input path="mrgls" htmlEscape="false"    class="form-control member required"/>&nbsp;&nbsp;
			<span>每周出勤：</span>
				<form:input path="mzcq" htmlEscape="false"    class="form-control member required"/>&nbsp;&nbsp;
			<span>每日契约金：</span>
				<form:input path="mrqyj" htmlEscape="false"    class="form-control member required"/>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="classes:classes:add">
				<table:addRow url="${ctx}/classes/classes/form" title="约跑班级管理" height="85%" width="85%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="classes:classes:edit">
			    <table:editRow url="${ctx}/classes/classes/form" title="约跑班级管理" id="contentTable" height="85%" width="85%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="classes:classes:del">
				<table:delRow url="${ctx}/classes/classes/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="classes:classes:import">
				<table:importExcel url="${ctx}/classes/classes/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="classes:classes:export">
	       		<table:exportExcel url="${ctx}/classes/classes/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column name">班级名称</th>
				<th  class="sort-column imgurl">跑班头像</th>
				<th  class="sort-column classtype">班级类型</th>
				<th  class="sort-column mrgls">每日公里数</th>
				<th  class="sort-column mzcq">每周出勤</th>
				<th  class="sort-column mrqyj">每日契约金（元）</th>
				<th  class="sort-column moneypool">奖金池（元）</th>
				<th  class="sort-column createDate">创建时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="classes">
			<tr>
				<td> <input type="checkbox" id="${classes.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看约跑班级管理', '${ctx}/classes/classes/form?id=${classes.id}','85%', '85%')">
					${classes.name}
				</a></td>
				<td>
					<%-- ${classes.imgurl} --%>
					<div style="text-align:center;">
					   	<img src="${classes.imgurl}" class="zoomify" style="max-height: 50px;max-width: 50px;">
					</div>
				</td>
				<td>
					${fns:getDictLabel(classes.classtype, 'classes_classtype', '')}
				</td>
				<td>
					${classes.mrgls}
				</td>
				<td>
					${classes.mzcq}
				</td>
				<td>
					${classes.mrqyj}
				</td>
				<td>
					${classes.moneypool}
				</td>
				<td>
					<fmt:formatDate pattern="yyyy-MM-dd" value="${classes.createDate}" />
				</td>
				<td>
					<shiro:hasPermission name="classes:classes:view">
						<a href="#" onclick="openDialogView('查看约跑班级管理', '${ctx}/classes/classes/form?id=${classes.id}','85%', '85%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="classes:classes:edit">
    					<a href="#" onclick="openDialog('修改约跑班级管理', '${ctx}/classes/classes/form?id=${classes.id}','85%', '85%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="classes:classes:del">
						<a href="${ctx}/classes/classes/delete?id=${classes.id}" onclick="return confirmx('确认要删除该约跑班级管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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