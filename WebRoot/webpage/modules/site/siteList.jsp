<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>场馆信息管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
		});
	</script>
	<script type="text/javascript" src="${ctxStatic}/area/jsAddress.js"></script>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content">
	<div class="ibox">
	<div class="ibox-title">
		<h5>场馆信息列表 </h5>
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
	<form:form id="searchForm" modelAttribute="site" action="${ctx}/site/site/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>场馆名称：</span>
				<form:input path="name" htmlEscape="false" maxlength="300"  class=" form-control input-sm"/>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<span>场馆分类：</span>
				<sys:treeselect id="sitetype" name="sitetype.id" value="${site.sitetype.id}" labelName="sitetype.name" labelValue="${site.sitetype.name}"
						title="场馆分类" url="/sitetype/sitetype/treeData" cssClass="form-control" notAllowSelectParent="true"/>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<span>联系电话：</span>
				<form:input path="mobile" htmlEscape="false" maxlength="15"  class=" form-control input-sm"/>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<span>所在省市区：</span>
			<form:select path="province"  class="form-control" ></form:select>
				&nbsp;&nbsp;
			<form:select path="city"  class="form-control m-b" ></form:select>
				&nbsp;&nbsp;
			<form:select path="county"  class="form-control m-b" ></form:select>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="site:site:add">
				<table:addRow url="${ctx}/site/site/form" title="场馆信息" width="85%" height="85%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="site:site:edit">
			    <table:editRow url="${ctx}/site/site/form" title="场馆信息" id="contentTable" width="85%" height="85%"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="site:site:del">
				<table:delRow url="${ctx}/site/site/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="site:site:import">
				<table:importExcel url="${ctx}/site/site/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="site:site:export">
	       		<table:exportExcel url="${ctx}/site/site/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="">场馆名称</th>
				<th  class="">场馆分类</th>
				<th  class="">联系电话</th>
				<th  class="">所在省市区</th>
				<!-- <th  class="">经度</th>
				<th  class="">纬度</th> -->
				<th  class="">位置名称</th>
				<th  class="">是否允许预约</th>
				<th  class="">最大日预约人数</th>
				<th  class="">不可预约日期起</th>
				<th  class="">不可预约日期止</th>
				<th  class="">创建时间</th>
				<!-- <th  class="">更新时间</th> -->
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="site">
			<tr>
				<td> <input type="checkbox" id="${site.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看场馆信息', '${ctx}/site/site/form?id=${site.id}','85%', '85%')">
					${site.name}
				</a></td>
				<td>
					${site.sitetype.name}
				</td>
				<td>
					${site.mobile}
				</td>
				<td>
					${site.province}-${site.city}-${site.county}
				</td>
				<%-- <td>
					${site.longitude}
				</td>
				<td>
					${site.latitude}
				</td> --%>
				<td>
					${site.label}
				</td>
				<td>
					<c:if test="${site.orderoc == '1'}">
				    	<font style="color:green">${fns:getDictLabel(site.orderoc,'yes_no','') }</font>
				    </c:if>
					<c:if test="${site.orderoc == '0'}">
				    	<font style="color:red">${fns:getDictLabel(site.orderoc,'yes_no','') }</font>
				    </c:if>
				</td>
				<td>
					${site.maxordernumday}
				</td>
				<td>
					${site.noorderrqq}
				</td>
				<td>
					${site.noorderrqz}
				</td>
				<td>
					<fmt:formatDate value="${site.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<%-- <td>
					<fmt:formatDate value="${site.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td> --%>
				<td>
					<shiro:hasPermission name="site:site:view">
						<a href="#" onclick="openDialogView('查看场馆信息', '${ctx}/site/site/form?id=${site.id}','85%', '85%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="site:site:edit">
    					<a href="#" onclick="openDialog('修改场馆信息', '${ctx}/site/site/form?id=${site.id}','85%', '85%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="site:site:del">
						<a href="${ctx}/site/site/delete?id=${site.id}" onclick="return confirmx('确认要删除该场馆信息吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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
<script type="text/javascript">
	addressInit("province","city","county","${site.province}","${site.city}","${site.county}");
</script>
</body>
</html>