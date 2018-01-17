<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>套餐管理管理</title>
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
		<h5>套餐管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="pkg" action="${ctx}/pkg/pkg/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>名称：</span>
				<form:input path="name" htmlEscape="false" maxlength="200"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<span>类型：</span>
				<form:select path="pkgtype"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('package_pkgtype')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="pkg:pkg:add">
				<table:addRow url="${ctx}/pkg/pkg/form" title="套餐管理" height="85%" width="85%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="pkg:pkg:edit">
			    <table:editRow url="${ctx}/pkg/pkg/form" title="套餐管理" id="contentTable"  height="85%" width="85%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="pkg:pkg:del">
				<table:delRow url="${ctx}/pkg/pkg/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="pkg:pkg:import">
				<table:importExcel url="${ctx}/pkg/pkg/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="pkg:pkg:export">
	       		<table:exportExcel url="${ctx}/pkg/pkg/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column name">名称</th>
				<th  class="sort-column imgurl">套餐主图</th>
				<th  class="sort-column pkgtype">类型</th>
				<th  class="sort-column description">使用说明</th>
				<th  class="sort-column price">金额</th>
				<th  class="sort-column maxusenum">最大使用次数</th>
				<th  class="sort-column maxuserange">最大使用范围(千米)</th>
				<th  class="sort-column maxbuynum">每月最大购卡次数</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="pkg">
			<tr>
				<td> <input type="checkbox" id="${pkg.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看套餐管理', '${ctx}/pkg/pkg/form?id=${pkg.id}','85%', '85%')">
					${pkg.name}
				</a></td>
				<td>
					<div style="text-align:center;">
					   	<img src="${pkg.imgurl}" class="zoomify" style="max-height: 50px;max-width: 50px;">
					</div>
				</td>
				<td>
					${fns:getDictLabel(pkg.pkgtype, 'package_pkgtype', '')}
				</td>
				<td>
					${fns:abbr(pkg.description,30)}
				</td>
				<td>
					${pkg.price}
				</td>
				<td>
					${pkg.maxusenum}
				</td>
				<td>
					${pkg.maxuserange}
				</td>
				<td>
					${pkg.maxbuynum}
				</td>
				<td>
					<shiro:hasPermission name="pkg:pkg:view">
						<a href="#" onclick="openDialogView('查看套餐管理', '${ctx}/pkg/pkg/form?id=${pkg.id}','85%', '85%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="pkg:pkg:edit">
    					<a href="#" onclick="openDialog('修改套餐管理', '${ctx}/pkg/pkg/form?id=${pkg.id}','85%', '85%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="pkg:pkg:del">
						<a href="${ctx}/pkg/pkg/delete?id=${pkg.id}" onclick="return confirmx('确认要删除该套餐管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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