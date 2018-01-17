<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>场馆评价管理管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		var validateForm;
		function doSubmit(){//回调函数，在编辑和保存动作时，供openDialog调用提交表单。
		  if(validateForm.form()){
			  $("#inputForm").submit();
			  return true;
		  }
	
		  return false;
		}
		$(document).ready(function() {
			validateForm = $("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
			
		});
	</script>
</head>
<body class="hideScroll">
		<form:form id="inputForm" modelAttribute="siteRemark" action="${ctx}/siteremark/siteRemark/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">评价人姓名：</label></td>
					<td class="width-35">
						${siteRemark.membername }
						<%-- <form:input path="membername" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">评价时间：</label></td>
					<td class="width-35">
						<fmt:formatDate value="${siteRemark.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
						<%-- <form:input path="shsj" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">评价内容：</label></td>
					<td class="width-35">
						${siteRemark.contents }
						<%-- <form:input path="contents" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">场馆名称：</label></td>
					<td class="width-35">
						${siteRemark.sitename }
						<%-- <form:input path="siteid" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">审核状态：</label></td>
					<td class="width-35">
						<%-- ${siteRemark.shzt } --%>
						${fns:getDictLabel(siteRemark.shzt, 'withdraw_shzt', '')}
						<!-- <form:select path="shzt" class="form-control ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('withdraw_shzt')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select> -->
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">审核人：</label></td>
					<td class="width-35">
						${siteRemark.shrname }
						<%-- <form:input path="shrname" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">审核时间：</label></td>
					<td class="width-35">
						${siteRemark.shsj}
						<%-- <fmt:formatDate value="" pattern="yyyy-MM-dd HH:mm:ss"/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">审核不通过原因：</label></td>
					<td class="width-35">
						${siteRemark.shbtgyy }
						<%-- <form:input path="shbtgyy" htmlEscape="false"    class="form-control "/> --%>
		  		</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>