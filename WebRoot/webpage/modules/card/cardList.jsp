<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>套餐卡管理管理</title>
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
		<h5>套餐卡管理列表 </h5>
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
	<form:form id="searchForm" modelAttribute="card" action="${ctx}/card/card/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>卡号：</span>
				<form:input path="cardbh" htmlEscape="false" maxlength="100"  class=" form-control input-sm"/>&nbsp;&nbsp;
			<span>所属套餐：</span>
				<sys:gridselect url="${ctx}/card/card/selectpkg" id="pkg" name="pkg"  value="${card.pkg.id}"  title="选择所属套餐" labelName="pkg.name" 
					labelValue="${card.pkg.name}" cssClass="form-control required" fieldLabels="套餐名|套餐类型|价格|最大使用次数|最大使用范围(千米)|每月最大购卡次数" fieldKeys="name|pkgtype|price|maxusenum|maxuserange|maxbuynum" searchLabel="套餐名" searchKey="name" ></sys:gridselect>&nbsp;&nbsp;
			<span>持卡人：</span>
				<sys:gridselect url="${ctx}/card/card/selectmemebr" id="memebr" name="memebr"  value="${card.memebr.id}"  title="选择持卡人" labelName="memebr.name" 
					labelValue="${card.memebr.name}" cssClass="form-control required" fieldLabels="会员名|昵称" fieldKeys="name|nickname" searchLabel="会员名" searchKey="name" ></sys:gridselect>&nbsp;&nbsp;
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="card:card:add">
				<table:addRow url="${ctx}/card/card/form" title="套餐卡管理" height="85%" width="85%"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<%-- <shiro:hasPermission name="card:card:edit">
			    <table:editRow url="${ctx}/card/card/form" title="套餐卡管理" id="contentTable" height="85%" width="85%" ></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission> --%>
			<shiro:hasPermission name="card:card:del">
				<table:delRow url="${ctx}/card/card/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="card:card:import">
				<table:importExcel url="${ctx}/card/card/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="card:card:export">
	       		<table:exportExcel url="${ctx}/card/card/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column cardbh">卡号</th>
				<th  class="sort-column pkg.id">所属套餐</th>
				<th  class="sort-column memebr.id">持卡人</th>
				<th  class="sort-column gksj">购卡时间</th>
				<th  class="sort-column gkjine">购卡金额（元）</th>
				<th  class="sort-column maxusenum">最大使用次数</th>
				<th  class="sort-column sycs">剩余次数</th>
				<th  class="sort-column maxuserange">最大使用范围(千米)</th>
				<th  class="sort-column gklng">购卡位置经度</th>
				<th  class="sort-column gklat">购卡位置纬度</th>
				<th  class="sort-column gklabel">购卡位置名称</th>
				<th  class="sort-column createDate">创建时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="card">
			<tr>
				<td> <input type="checkbox" id="${card.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看套餐卡管理', '${ctx}/card/card/form?id=${card.id}','85%', '85%')">
					${card.cardbh}
				</a></td>
				<td>
					${card.pkg.name}
				</td>
				<td>
					${card.memebr.name}
				</td>
				<td>
					${card.gksj}
				</td>
				<td>
					${card.gkjine}
				</td>
				<td>
					${card.maxusenum}
				</td>
				<td>
					${card.sycs}
				</td>
				<td>
					${card.maxuserange}
				</td>
				<td>
					${card.gklng}
				</td>
				<td>
					${card.gklat}
				</td>
				<td>
					${card.gklabel}
				</td>
				<td>
					<fmt:formatDate value="${card.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<shiro:hasPermission name="card:card:view">
						<a href="#" onclick="openDialogView('查看套餐卡管理', '${ctx}/card/card/form?id=${card.id}','85%', '85%')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<%-- <shiro:hasPermission name="card:card:edit">
    					<a href="#" onclick="openDialog('修改套餐卡管理', '${ctx}/card/card/form?id=${card.id}','85%', '85%')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission> --%>
    				<shiro:hasPermission name="card:card:del">
						<a href="${ctx}/card/card/delete?id=${card.id}" onclick="return confirmx('确认要删除该套餐卡管理吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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