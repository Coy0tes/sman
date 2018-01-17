<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>兑换码管理管理</title>
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
		<h5>兑换码管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="code" action="${ctx}/code/code/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>兑换码：</span>
				<form:input path="code" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<span>状态：</span>
				<form:select path="status"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('code_status_isstatus')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>&nbsp;&nbsp;
			<span>领用人：</span>
				<sys:gridselect url="${ctx}/code/code/selectmember" id="member" name="member"  value="${code.member.id}"  title="选择领用人" labelName="member.name" 
					labelValue="${code.member.name}" cssClass="form-control required" fieldLabels="领用人|昵称" fieldKeys="name|nickname" searchLabel="会员名" searchKey="name" ></sys:gridselect>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="code:code:add">
				<table:addRow url="${ctx}/code/code/form" title="兑换码管理" height="85%" width="85%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="code:code:edit">
			    <table:editRow url="${ctx}/code/code/form" title="兑换码管理" id="contentTable"  height="85%" width="85%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="code:code:del">
				<table:delRow url="${ctx}/code/code/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="code:code:import">
				<table:importExcel url="${ctx}/code/code/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="code:code:export">
	       		<table:exportExcel url="${ctx}/code/code/export"></table:exportExcel><!-- 导出按钮 -->
	       	</shiro:hasPermission>
	       <button class="btn btn-primary btn-outline btn-sm " data-toggle="tooltip" data-placement="left" onclick="sortOrRefresh()" title="刷新"><i class="glyphicon glyphicon-repeat"></i> 刷新</button>
	       <%-- <a href="${ctx}/code/code/codeAddCodeForm" class="btn btn-primary btn-outline btn-sm">批量添加兑换码</a> --%>
			<a href="#" onclick="openDialog('批量添加兑换码', '${ctx}/code/code/addCodeForm','50%', '50%')" class="btn btn-primary btn-outline btn-sm" > 批量添加兑换码</a>
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
				<th  class="sort-column code">兑换码</th>
				<th  class="sort-column ffrqq">发放日期起</th>
				<th  class="sort-column ffrqz">发放日期止</th>
				<th  class="sort-column yxrqq">有效日期起</th>
				<th  class="sort-column yxrqz">有效日期止</th>
				<th  class="sort-column status">状态</th>
				<th  class="sort-column member.id">领用人</th>
				<th  class="sort-column lysj">领用时间</th>
				<th  class="sort-column sysj">使用时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="code">
			<tr>
				<td> <input type="checkbox" id="${code.id}" class="i-checks"></td>
				<td>
					${code.code}
				</td>
				<td>
					${code.ffrqq}
				</td>
				<td>
					${code.ffrqz}
				</td>
				<td>
					${code.yxrqq}
				</td>
				<td>
					${code.yxrqz}
				</td>
				<td>
					${fns:getDictLabel(code.status, 'code_status_isstatus', '')}
				</td>
				<td>
					${code.member.name}
				</td>
				<td>
					${code.lysj}
				</td>
				<td>
					${code.sysj}
				</td>
				<td>
					<shiro:hasPermission name="code:code:view">
						<a href="#" onclick="openDialogView('查看兑换码管理', '${ctx}/code/code/form?id=${code.id}','85%', '85%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="code:code:edit">
    					<a href="#" onclick="openDialog('修改兑换码管理', '${ctx}/code/code/form?id=${code.id}','85%', '85%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="code:code:del">
						<a href="${ctx}/code/code/delete?id=${code.id}" onclick="return confirmx('确认要删除该兑换码管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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