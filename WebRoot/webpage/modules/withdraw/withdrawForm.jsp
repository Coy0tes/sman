<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>提现管理管理</title>
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
		<form:form id="inputForm" modelAttribute="withdraw" action="${ctx}/withdraw/withdraw/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">申请人：</label></td>
					<td class="width-35">
						<%-- <form:input path="sqrname" htmlEscape="false"    class="form-control "/> --%>
						${withdraw.sqrname}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">提现金额：</label></td>
					<td class="width-35">
						<%-- <form:input path="jine" htmlEscape="false"    class="form-control "/> --%>
						${withdraw.jine}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">审核状态：</label></td>
					<td class="width-35">
						${fns:getDictLabel(withdraw.shzt, 'withdraw_shzt', '')}
						<%-- <form:select path="shzt" class="form-control required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('withdraw_shzt')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">审核人：</label></td>
					<td class="width-35">
						${withdraw.shrname}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">审核时间：</label></td>
					<td class="width-35">
						${withdraw.shsj}
						<%-- <form:input path="shsj" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">领取状态：</label></td>
					<td class="width-35">
						${fns:getDictLabel(withdraw.lqzt, 'withdraw_lqzt', '')}
						<%-- <form:select path="lqzt" class="form-control ">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('withdraw_lqzt')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">领取时间：</label></td>
					<td class="width-35">
						${withdraw.lqsj}
						<%-- <form:input path="lqsj" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<c:if test="${withdraw.shzt == 2}">
					<tr class="shenhe">
						<td class="width-15 active"><label class="pull-right">审核不通过原因：</label></td>
						<td class="width-35">
							<form:textarea path="shbtgyy" htmlEscape="false"    class="form-control required"/>
						</td>
					</tr>
				</c:if>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>