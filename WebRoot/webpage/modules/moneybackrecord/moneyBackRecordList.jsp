<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>返还记录管理</title>
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
		<h5>返还记录列表 </h5>
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
	<form:form id="searchForm" modelAttribute="moneyBackRecord" action="${ctx}/moneybackrecord/moneyBackRecord/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>约跑人姓名：</span>
				<form:input path="yprname" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
			&nbsp;&nbsp;
			<span>约跑班级：</span>
				<sys:gridselect url="${ctx}/moneybackrecord/moneyBackRecord/selectclasses" id="classes" name="classes"  value="${moneyBackRecord.classes.id}"  title="选择约跑班级" labelName="classes.name" 
					labelValue="${moneyBackRecord.classes.name}" cssClass="form-control required" fieldLabels="名称" fieldKeys="name" searchLabel="名称" searchKey="name" ></sys:gridselect>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="moneybackrecord:moneyBackRecord:add">
				<table:addRow url="${ctx}/moneybackrecord/moneyBackRecord/form" title="返还记录"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="moneybackrecord:moneyBackRecord:edit">
			    <table:editRow url="${ctx}/moneybackrecord/moneyBackRecord/form" title="返还记录" id="contentTable"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="moneybackrecord:moneyBackRecord:del">
				<table:delRow url="${ctx}/moneybackrecord/moneyBackRecord/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="moneybackrecord:moneyBackRecord:import">
				<table:importExcel url="${ctx}/moneybackrecord/moneyBackRecord/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="moneybackrecord:moneyBackRecord:export">
	       		<table:exportExcel url="${ctx}/moneybackrecord/moneyBackRecord/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column weekbegin">周日期起</th>
				<th  class="sort-column weekend">周日期止</th>
				<th  class="sort-column yprname">约跑人姓名</th>
				<th  class="sort-column classes.id">约跑班级</th>
				<th  class="sort-column fhqyj">返还契约金</th>
				<th  class="sort-column ypts">总应跑天数</th>
				<th  class="sort-column lpts">总漏跑天数</th>
				<th  class="sort-column mrqyj">每日契约金</th>
				<th  class="sort-column createDate">返还时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="moneyBackRecord">
			<tr>
				<td> <input type="checkbox" id="${moneyBackRecord.id}" class="i-checks"></td>
				<td>
					${moneyBackRecord.weekbegin}
				</td>
				<td>
					${moneyBackRecord.weekend}
				</td>
				<td>
					${moneyBackRecord.yprname}
				</td>
				<td>
					${moneyBackRecord.classes.name}
				</td>
				<td>
					${moneyBackRecord.fhqyj}
				</td>
				<td>
					${moneyBackRecord.ypts}
				</td>
				<td>
					${moneyBackRecord.lpts}
				</td>
				<td>
					${moneyBackRecord.mrqyj}
				</td>
				<td>
					<fmt:formatDate value="${moneyBackRecord.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<shiro:hasPermission name="moneybackrecord:moneyBackRecord:view">
						<a href="#" onclick="openDialogView('查看返还记录', '${ctx}/moneybackrecord/moneyBackRecord/form?id=${moneyBackRecord.id}','800px', '500px')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="moneybackrecord:moneyBackRecord:edit">
    					<a href="#" onclick="openDialog('修改返还记录', '${ctx}/moneybackrecord/moneyBackRecord/form?id=${moneyBackRecord.id}','800px', '500px')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="moneybackrecord:moneyBackRecord:del">
						<a href="${ctx}/moneybackrecord/moneyBackRecord/delete?id=${moneyBackRecord.id}" onclick="return confirmx('确认要删除该返还记录吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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