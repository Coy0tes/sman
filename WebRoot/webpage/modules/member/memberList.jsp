<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>会员信息管理</title>
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
		<h5>会员信息列表 </h5>
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
	<form:form id="searchForm" modelAttribute="member" action="${ctx}/member/member/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>用户名：</span>
				<form:input path="loginName" htmlEscape="false" maxlength="20"  class=" form-control input-sm"/>
			&nbsp;&nbsp;
			<span>姓名：</span>
				<form:input path="name" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="member:member:add">
				<table:addRow url="${ctx}/member/member/form" title="会员信息" width="75%" height="75%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="member:member:edit">
			    <table:editRow url="${ctx}/member/member/form" title="会员信息" id="contentTable" width="75%" height="75%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="member:member:del">
				<table:delRow url="${ctx}/member/member/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="member:member:import">
				<table:importExcel url="${ctx}/member/member/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="member:member:export">
	       		<table:exportExcel url="${ctx}/member/member/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column loginName">用户名</th>
				<th  class="sort-column name">姓名</th>
				<th  class="sort-column yue">帐号余额（元）</th>
				<!-- <th  class="sort-column headimgurl">头像</th> -->
				<th  class="sort-column nickname">昵称</th>
				<th  class="sort-column gztime">关注时间</th>
				<th  class="sort-column qxgztime">取消关注时间</th>
				<th  class="sort-column wxopenid">微信Openid</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="member">
			<tr>
				<td> <input type="checkbox" id="${member.id}" class="i-checks"></td>
				<td>
					${member.loginName}
				</td>
				<td>
					${member.name}
				</td>
				<td>
					${member.yue}
				</td>
				<%-- <td>
					${member.headimgurl}
				</td> --%>
				<td>
					${member.nickname}
				</td>
				<td>
					${member.gztime}
				</td>
				<td>
					${member.qxgztime}
				</td>
				<td>
					${member.wxopenid}
				</td>
				<td>
					<shiro:hasPermission name="member:member:view">
						<a href="#" onclick="openDialogView('查看会员信息', '${ctx}/member/member/form?id=${member.id}','75%', '75%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="member:member:edit">
    					<a href="#" onclick="openDialog('修改会员信息', '${ctx}/member/member/form?id=${member.id}','75%', '75%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="member:member:del">
						<a href="${ctx}/member/member/delete?id=${member.id}" onclick="return confirmx('确认要删除该会员信息吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="member:member:edit">
						<a href="${ctx}/member/member/resetPassword?id=${member.id}" onclick="return confirmx('确认重置该会员信息吗？', this.href)"   class="btn btn-primary btn-xs"><i class="fa fa-edit"></i> 密码重置</a>
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