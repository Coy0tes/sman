<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>场馆评价管理管理</title>
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
		<h5>场馆评价管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="siteRemark" action="${ctx}/siteremark/siteRemark/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>评价人姓名：</span>
				<form:input path="membername" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<%-- <span>场馆名称：</span>
				<form:input path="sitename" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp; --%>
			<c:if test="${user == '1'}">
				<span>场馆：</span>
					<sys:gridselect url="${ctx}/siteuser/siteuser/selectsite" id="siteid" name="siteid"  value="${siteRemark.siteid}"  title="选择场馆" labelName="sitename" 
						labelValue="${siteRemark.sitename}" cssClass="form-control required" fieldLabels="名称|省|市|区|地址" fieldKeys="name|province|city|county|label" searchLabel="场馆名称" searchKey="name" ></sys:gridselect>
			</c:if>
			&nbsp;&nbsp;
			<span>审核状态：</span>
				<form:select path="shzt"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('withdraw_shzt')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>&nbsp;&nbsp;
			<span>审核人：</span>
				<form:input path="shrname" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="siteremark:siteRemark:add">
				<table:addRow url="${ctx}/siteremark/siteRemark/form" title="场馆评价管理" height="60%" width="60%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="siteremark:siteRemark:edit">
			    <table:editRow url="${ctx}/siteremark/siteRemark/form" title="场馆评价管理" id="contentTable" height="60%" width="60%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="siteremark:siteRemark:del">
				<table:delRow url="${ctx}/siteremark/siteRemark/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="siteremark:siteRemark:import">
				<table:importExcel url="${ctx}/siteremark/siteRemark/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="siteremark:siteRemark:export">
	       		<table:exportExcel url="${ctx}/siteremark/siteRemark/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column membername">评价人姓名</th>
				<th  class="sort-column contents">评价内容</th>
				<th  class="sort-column createDate">评价时间</th>
				<th  class="sort-column siteid">场馆名称</th>
				<th  class="sort-column shzt">审核状态</th>
				<th  class="sort-column shrname">审核人</th>
				<th  class="sort-column shsj">审核时间</th>
				<th  class="sort-column shbtgyy">审核不通过原因</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="siteRemark">
			<tr>
				<td> <input type="checkbox" id="${siteRemark.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看场馆评价管理', '${ctx}/siteremark/siteRemark/form?id=${siteRemark.id}','60%', '60%')">
					${siteRemark.membername}
				</a></td>
				<td>
					${fns:abbr(siteRemark.contents,30)}
				</td>
				<td>
					<fmt:formatDate value="${siteRemark.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${siteRemark.sitename}
				</td>
				<td>
					${fns:getDictLabel(siteRemark.shzt, 'withdraw_shzt', '')}
				</td>
				<td>
					${siteRemark.shrname}
				</td>
				<td>
					${siteRemark.shsj}
				</td>
				<td>
					${siteRemark.shbtgyy}
				</td>
				<td>
					<shiro:hasPermission name="siteremark:siteRemark:view">
						<a href="#" onclick="openDialogView('查看场馆评价管理', '${ctx}/siteremark/siteRemark/form?id=${siteRemark.id}','60%', '60%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="siteremark:siteRemark:edit">
    					<a href="#" onclick="openDialog('修改场馆评价管理', '${ctx}/siteremark/siteRemark/form?id=${siteRemark.id}','60%', '60%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="siteremark:siteRemark:del">
						<a href="${ctx}/siteremark/siteRemark/delete?id=${siteRemark.id}" onclick="return confirmx('确认要删除该场馆评价管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
					</shiro:hasPermission>
					<c:if test="${siteRemark.shzt == 0 }">
						<a href="#" onclick="openDialog('审核管理', '${ctx}/siteremark/siteRemark/formShenhe?id=${siteRemark.id}','60%', '60%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 审核</a>
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