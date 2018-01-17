<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>消费记录管理</title>
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
		<h5>消费记录列表 </h5>
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
	<form:form id="searchForm" modelAttribute="cardConsumeRecord" action="${ctx}/cardconsumerecord/cardConsumeRecord/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>卡号：</span>
				<form:input path="card.cardbh" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
			&nbsp;&nbsp;
			<span>使用人姓名：</span>
				<form:input path="syrname" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
			&nbsp;
			<span>使用时间：</span>
				<form:input path="sysj" htmlEscape="false" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" maxlength="30"  class=" form-control input-sm"/>
			&nbsp;
			<c:if test="${siteflag == 'no'}">
				<span>使用场馆：</span>
				<sys:gridselect url="${ctx}/cardconsumerecord/cardConsumeRecord/selectsite" id="site" name="site"  value="${cardConsumeRecord.site.id}"  title="选择使用场馆" labelName="site.name" 
					labelValue="${cardConsumeRecord.site.name}" cssClass="form-control required" fieldLabels="名称|省|市|区|地址" fieldKeys="name|province|city|county|label" searchLabel="名称" searchKey="name" ></sys:gridselect>
			</c:if>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="cardconsumerecord:cardConsumeRecord:add">
				<table:addRow url="${ctx}/cardconsumerecord/cardConsumeRecord/form" title="消费记录"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="cardconsumerecord:cardConsumeRecord:edit">
			    <table:editRow url="${ctx}/cardconsumerecord/cardConsumeRecord/form" title="消费记录" id="contentTable"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="cardconsumerecord:cardConsumeRecord:del">
				<table:delRow url="${ctx}/cardconsumerecord/cardConsumeRecord/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="cardconsumerecord:cardConsumeRecord:import">
				<table:importExcel url="${ctx}/cardconsumerecord/cardConsumeRecord/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="cardconsumerecord:cardConsumeRecord:export">
	       		<table:exportExcel url="${ctx}/cardconsumerecord/cardConsumeRecord/export"></table:exportExcel><!-- 导出按钮 -->
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
				<th  class="sort-column card.cardbh">卡号</th>
				<th  class="sort-column syrname">使用人姓名</th>
				<th  class="sort-column sysj">使用时间</th>
				<th  class="sort-column site.id">使用场馆</th>
				<th  class="sort-column cardsycs">套餐卡剩余次数</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="cardConsumeRecord">
			<tr>
				<td> <input type="checkbox" id="${cardConsumeRecord.id}" class="i-checks"></td>
				<td>
					${cardConsumeRecord.card.cardbh}
				</td>
				<td>
					${cardConsumeRecord.syrname}
				</td>
				<td>
					${cardConsumeRecord.sysj}
				</td>
				<td>
					${cardConsumeRecord.site.name}
				</td>
				<td>
					${cardConsumeRecord.cardsycs}
				</td>
				<td>
					<shiro:hasPermission name="cardconsumerecord:cardConsumeRecord:view">
						<a href="#" onclick="openDialogView('查看消费记录', '${ctx}/cardconsumerecord/cardConsumeRecord/form?id=${cardConsumeRecord.id}','800px', '500px')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="cardconsumerecord:cardConsumeRecord:edit">
    					<a href="#" onclick="openDialog('修改消费记录', '${ctx}/cardconsumerecord/cardConsumeRecord/form?id=${cardConsumeRecord.id}','800px', '500px')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="cardconsumerecord:cardConsumeRecord:del">
						<a href="${ctx}/cardconsumerecord/cardConsumeRecord/delete?id=${cardConsumeRecord.id}" onclick="return confirmx('确认要删除该消费记录吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
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