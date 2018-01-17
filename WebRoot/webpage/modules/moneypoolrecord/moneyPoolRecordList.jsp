<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>奖金池记录管理</title>
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
		<h5>奖金池记录列表 </h5>
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
	<form:form id="searchForm" modelAttribute="moneyPoolRecord" action="${ctx}/moneypoolrecord/moneyPoolRecord/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>班级：</span>
				<sys:gridselect url="${ctx}/moneypoolrecord/moneyPoolRecord/selectclasses" id="classes" name="classes"  value="${moneyPoolRecord.classes.id}"  title="选择班级" labelName="classes.name" 
					labelValue="${moneyPoolRecord.classes.name}" cssClass="form-control required" fieldLabels="名称" fieldKeys="name" searchLabel="名称" searchKey="name" ></sys:gridselect>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="moneypoolrecord:moneyPoolRecord:add">
				<table:addRow url="${ctx}/moneypoolrecord/moneyPoolRecord/form" title="奖金池记录"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="moneypoolrecord:moneyPoolRecord:edit">
			    <table:editRow url="${ctx}/moneypoolrecord/moneyPoolRecord/form" title="奖金池记录" id="contentTable"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="moneypoolrecord:moneyPoolRecord:del">
				<table:delRow url="${ctx}/moneypoolrecord/moneyPoolRecord/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="moneypoolrecord:moneyPoolRecord:import">
				<table:importExcel url="${ctx}/moneypoolrecord/moneyPoolRecord/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="moneypoolrecord:moneyPoolRecord:export">
	       		<table:exportExcel url="${ctx}/moneypoolrecord/moneyPoolRecord/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column classes.id">班级</th>
				<th  class="sort-column weekbegin">周日期起</th>
				<th  class="sort-column weekend">周日期止</th>
				<th  class="sort-column zypts">总应跑天数</th>
				<th  class="sort-column zlpts">总漏跑天数</th>
				<th  class="sort-column mrqyj">每日契约金</th>
				<th  class="sort-column jjcje">奖金池金额</th>
				<th  class="sort-column createDate">创建时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="moneyPoolRecord">
			<tr>
				<td> <input type="checkbox" id="${moneyPoolRecord.id}" class="i-checks"></td>
				<td>
					${moneyPoolRecord.classes.name}
				</td>
				<td>
					${moneyPoolRecord.weekbegin}
				</td>
				<td>
					${moneyPoolRecord.weekend}
				</td>
				<td>
					${moneyPoolRecord.zypts}
				</td>
				<td>
					${moneyPoolRecord.zlpts}
				</td>
				<td>
					${moneyPoolRecord.mrqyj}
				</td>
				<td>
					${moneyPoolRecord.jjcje}
				</td>
				<td>
					<fmt:formatDate value="${moneyPoolRecord.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<shiro:hasPermission name="moneypoolrecord:moneyPoolRecord:view">
						<a href="#" onclick="openDialogView('查看奖金池记录', '${ctx}/moneypoolrecord/moneyPoolRecord/form?id=${moneyPoolRecord.id}','800px', '500px')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="moneypoolrecord:moneyPoolRecord:edit">
    					<a href="#" onclick="openDialog('修改奖金池记录', '${ctx}/moneypoolrecord/moneyPoolRecord/form?id=${moneyPoolRecord.id}','800px', '500px')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="moneypoolrecord:moneyPoolRecord:del">
						<a href="${ctx}/moneypoolrecord/moneyPoolRecord/delete?id=${moneyPoolRecord.id}" onclick="return confirmx('确认要删除该奖金池记录吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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