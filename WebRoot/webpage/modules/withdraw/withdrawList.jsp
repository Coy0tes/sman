<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>提现管理管理</title>
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
		<h5>提现管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="withdraw" action="${ctx}/withdraw/withdraw/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>申请人：</span>
				<form:input path="sqrname" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<span>审核状态：</span>
				<form:select path="shzt"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('withdraw_shzt')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>&nbsp;&nbsp;
			<span>领取状态：</span>
				<form:select path="lqzt"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('withdraw_lqzt')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>&nbsp;&nbsp;
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="withdraw:withdraw:add">
				<table:addRow url="${ctx}/withdraw/withdraw/form" title="提现管理" height="60%" width="60%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="withdraw:withdraw:edit">
			    <table:editRow url="${ctx}/withdraw/withdraw/form" title="提现管理" id="contentTable" height="60%" width="60%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="withdraw:withdraw:del">
				<table:delRow url="${ctx}/withdraw/withdraw/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="withdraw:withdraw:import">
				<table:importExcel url="${ctx}/withdraw/withdraw/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="withdraw:withdraw:export">
	       		<table:exportExcel url="${ctx}/withdraw/withdraw/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column sqrname">申请人</th>
				<th  class="sort-column jine">提现金额</th>
				<th  class="sort-column shzt">审核状态</th>
				<th  class="sort-column shsj">审核时间</th>
				<th  class="sort-column shname">审核人</th>
				<th  class="sort-column shbtgyy">审核不通过原因</th>
				<th  class="sort-column lqzt">领取状态</th>
				<th  class="sort-column lqsj">领取时间</th>
				<th  class="sort-column createDate">创建时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="withdraw">
			<tr>
				<td> <input type="checkbox" id="${withdraw.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看提现管理', '${ctx}/withdraw/withdraw/form?id=${withdraw.id}','60%', '60%')">
					${withdraw.sqrname}
				</a></td>
				<td>
					${withdraw.jine}
				</td>
				<td>
					${fns:getDictLabel(withdraw.shzt, 'withdraw_shzt', '')}
				</td>
				<td>
					${withdraw.shsj}
				</td>
				<td>
					${withdraw.shrname}
				</td>
				<td>
					${withdraw.shbtgyy}
				</td>
				<td>
					${fns:getDictLabel(withdraw.lqzt, 'withdraw_lqzt', '')}
				</td>
				<td>
					${withdraw.lqsj}
				</td>
				<td>
					<fmt:formatDate value="${withdraw.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<shiro:hasPermission name="withdraw:withdraw:view">
						<a href="#" onclick="openDialogView('查看提现管理', '${ctx}/withdraw/withdraw/form?id=${withdraw.id}','60%', '60%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="withdraw:withdraw:edit">
    					<a href="#" onclick="openDialog('修改提现管理', '${ctx}/withdraw/withdraw/form?id=${withdraw.id}','60%', '60%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="withdraw:withdraw:del">
						<a href="${ctx}/withdraw/withdraw/delete?id=${withdraw.id}" onclick="return confirmx('确认要删除该提现管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
					</shiro:hasPermission>
					<c:if test="${withdraw.shzt == 0 }">
						<a href="#" onclick="openDialog('审核管理', '${ctx}/withdraw/withdraw/formShenhe?id=${withdraw.id}','60%', '60%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 审核</a>
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