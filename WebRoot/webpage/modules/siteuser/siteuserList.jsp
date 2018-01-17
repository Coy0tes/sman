<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>管理员管理</title>
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
		<h5>管理员列表 </h5>
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
	<sys:message content="${message}" />
	
	<!--查询条件-->
	<div class="row">
	<div class="col-sm-12">
	<form:form id="searchForm" modelAttribute="siteuser" action="${ctx}/siteuser/siteuser/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>场馆：</span>
				<sys:gridselect url="${ctx}/siteuser/siteuser/selectsite" id="site" name="site"  value="${siteuser.site.id}"  title="选择场馆" labelName="site.name" 
					labelValue="${siteuser.site.name}" cssClass="form-control required" fieldLabels="名称|省|市|区|地址" fieldKeys="name|province|city|county|label" searchLabel="场馆名称" searchKey="name" ></sys:gridselect>
			&nbsp;&nbsp;
			<span>登录名：</span>
				<form:input path="loginName" htmlEscape="false" maxlength="100"  class=" form-control input-sm"/>
			&nbsp;&nbsp;
			<span>姓名：</span>
				<form:input path="name" htmlEscape="false" maxlength="100"  class=" form-control input-sm"/>
			&nbsp;&nbsp;
			<span>电话：</span>
				<form:input path="phone" htmlEscape="false" maxlength="200"  class=" form-control input-sm"/>
			&nbsp;&nbsp;
			<span>用户状态：</span>
				<form:select path="userStatus"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('user_status')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
			<shiro:hasPermission name="siteuser:siteuser:add">
				<table:addRow url="${ctx}/siteuser/siteuser/form" title="管理员" width="75%" height="75%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="siteuser:siteuser:edit">
			    <table:editRow url="${ctx}/siteuser/siteuser/form" title="管理员" id="contentTable" width="75%" height="75%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="siteuser:siteuser:del">
				<table:delRow url="${ctx}/siteuser/siteuser/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="siteuser:siteuser:import">
				<table:importExcel url="${ctx}/siteuser/siteuser/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="siteuser:siteuser:export">
	       		<table:exportExcel url="${ctx}/siteuser/siteuser/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column site.id">场馆</th>
				<th  class="sort-column loginName">登录名</th>
				<th  class="sort-column name">姓名</th>
				<th  class="sort-column phone">电话</th>
				<th  class="sort-column email">邮箱</th>
				<th  class="sort-column userStatus">用户状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="siteuser">
			<tr>
				<td> <input type="checkbox" id="${siteuser.id}" class="i-checks"></td>
				<td>
					${siteuser.site.name}
				</td>
				<td>
					${siteuser.loginName}
				</td>
				<td>
					${siteuser.name}
				</td>
				<td>
					${siteuser.phone}
				</td>
				<td>
					${siteuser.email}
				</td>
				<td>
				    <c:if test="${siteuser.userStatus == 'zc'}">
				    	<font style="color:green">${fns:getDictLabel(siteuser.userStatus, 'user_status', '')}</font>
				    </c:if>
					<c:if test="${siteuser.userStatus == 'ty'}">
				    	<font style="color:red">${fns:getDictLabel(siteuser.userStatus, 'user_status', '')}</font>
				    </c:if>
				</td>
				<td>
					<shiro:hasPermission name="siteuser:siteuser:view">
						<a href="#" onclick="openDialogView('查看管理员', '${ctx}/siteuser/siteuser/form?id=${siteuser.id}','75%', '75%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="siteuser:siteuser:edit">
    					<a href="#" onclick="openDialog('修改管理员', '${ctx}/siteuser/siteuser/form?id=${siteuser.id}','75%', '75%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="siteuser:siteuser:del">
						<a href="${ctx}/siteuser/siteuser/delete?id=${siteuser.id}" onclick="return confirmx('确认要删除该管理员吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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