<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>约跑打卡管理管理</title>
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
		<h5>约跑打卡管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="signin" action="${ctx}/signin/signin/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>打卡人：</span>
				<form:input path="dkrname" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<span>审核状态：</span>
				<form:select path="shzt"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('withdraw_shzt')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>&nbsp;&nbsp;
			<span>审核人：</span>
				<form:input path="shrname" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp;
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="signin:signin:add">
				<table:addRow url="${ctx}/signin/signin/form" title="约跑打卡管理" height="70%" width="70%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="signin:signin:edit">
			    <table:editRow url="${ctx}/signin/signin/form" title="约跑打卡管理" id="contentTable" height="70%" width="70%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="signin:signin:del">
				<table:delRow url="${ctx}/signin/signin/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="signin:signin:import">
				<table:importExcel url="${ctx}/signin/signin/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="signin:signin:export">
	       		<table:exportExcel url="${ctx}/signin/signin/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column dkrname">打卡人</th>
				<th  class="sort-column pbjl">跑步距离(千米）</th>
				<th  class="sort-column pbys">跑步用时(分钟)</th>
				<th  class="sort-column createDate">提交时间时间</th>
				<th  class="sort-column shzt">审核状态</th>
				<th  class="sort-column shrname">审核人</th>
				<th  class="sort-column shsj">审核时间</th>
				<th  class="sort-column shbtgyy">审核不通过原因</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="signin">
			<tr>
				<td> <input type="checkbox" id="${signin.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看约跑打卡管理', '${ctx}/signin/signin/form?id=${signin.id}','70%', '70%')">
					${signin.dkrname}
				</a></td>
				<td>
					${signin.pbjl}
				</td>
				<td>
					${signin.pbys}
				</td>
				<td>
					<fmt:formatDate value="${signin.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${fns:getDictLabel(signin.shzt, 'withdraw_shzt', '')}
				</td>
				<td>
					${signin.shrname}
				</td>
				<td>
					${signin.shsj}
				</td>
				<td>
					${signin.shbtgyy}
				</td>
				<td>
					<shiro:hasPermission name="signin:signin:view">
						<a href="#" onclick="openDialogView('查看约跑打卡管理', '${ctx}/signin/signin/form?id=${signin.id}','70%', '70%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="signin:signin:edit">
    					<a href="#" onclick="openDialog('修改约跑打卡管理', '${ctx}/signin/signin/form?id=${signin.id}','70%', '70%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="signin:signin:del">
						<a href="${ctx}/signin/signin/delete?id=${signin.id}" onclick="return confirmx('确认要删除该约跑打卡管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
					</shiro:hasPermission>
					<c:if test="${signin.shzt == 0 }">
						<a href="#" onclick="openDialog('审核管理', '${ctx}/signin/signin/formShenhe?id=${signin.id}','70%', '70%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 审核</a>
					</c:if>
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