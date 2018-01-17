<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>订单管理管理</title>
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
		<h5>订单管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="orders" action="${ctx}/order/orders/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>订单号：</span>
				<form:input path="ddh" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<span>所属套餐：</span>
				<%-- <form:input path="pkgid" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp; --%>
				<form:select path="pkgid"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${packa}" itemLabel="name" itemValue="id" htmlEscape="false"/>
				</form:select>&nbsp;&nbsp;
			<span>购卡人：</span>
				<form:input path="gkrname" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<span>购卡方式：</span>
				<%-- <form:input path="gkfs" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>&nbsp;&nbsp; --%>
				<form:select path="gkfs"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('order_gkfs')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>&nbsp;&nbsp;
			<span>订单状态：</span>
				<%-- <form:input path="orderstatus" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/> --%>
				<form:select path="orderstatus"  class="form-control m-b">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('order_orderstatus')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
			<shiro:hasPermission name="order:orders:add">
				<table:addRow url="${ctx}/order/orders/form" title="订单管理" width="85%" height="85%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="order:orders:edit">
			    <table:editRow url="${ctx}/order/orders/form" title="订单管理" id="contentTable" width="85%" height="85%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="order:orders:del">
				<table:delRow url="${ctx}/order/orders/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="order:orders:import">
				<table:importExcel url="${ctx}/order/orders/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="order:orders:export">
	       		<table:exportExcel url="${ctx}/order/orders/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column ddh">订单号</th>
				<th  class="sort-column pkgid">所属套餐</th>
				<th  class="sort-column gkrname">购卡人</th>
				<th  class="sort-column gkfs">购卡方式</th>
				<th  class="sort-column gklng">购卡位置经度</th>
				<th  class="sort-column gklat">购卡位置纬度</th>
				<th  class="sort-column gklabel">购卡位置名称</th>
				<th  class="sort-column gkdhm">购卡兑换码</th>
				<th  class="sort-column gkjine">购卡金额（元）</th>
				<th  class="sort-column orderstatus">订单状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="orders">
			<tr>
				<td> <input type="checkbox" id="${orders.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看订单管理', '${ctx}/order/orders/form?id=${orders.id}','85%', '85%')">
					${orders.ddh}
				</a></td>
				<td>
					${orders.pkgid}
				</td>
				<td>
					${orders.gkrname}
				</td>
				<td>
					${fns:getDictLabel(orders.gkfs, 'order_gkfs', '')}
				</td>
				<td>
					${orders.gklng}
				</td>
				<td>
					${orders.gklat}
				</td>
				<td>
					${orders.gklabel}
				</td>
				<td>
					${orders.gkdhm}
				</td>
				<td>
					${orders.gkjine}
				</td>
				<td>
					${fns:getDictLabel(orders.orderstatus, 'order_orderstatus', '')}
				</td>
				<td>
					<shiro:hasPermission name="order:orders:view">
						<a href="#" onclick="openDialogView('查看订单管理', '${ctx}/order/orders/form?id=${orders.id}','85%', '85%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="order:orders:edit">
    					<a href="#" onclick="openDialog('修改订单管理', '${ctx}/order/orders/form?id=${orders.id}','85%', '85%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="order:orders:del">
						<a href="${ctx}/order/orders/delete?id=${orders.id}" onclick="return confirmx('确认要删除该订单管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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