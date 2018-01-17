<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>约跑班级管理管理</title>
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
		<form:form id="inputForm" modelAttribute="classes" action="${ctx}/classes/classes/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>班级名称：</label></td>
					<td class="width-35">
						<form:input path="name" htmlEscape="false"    class="form-control required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>跑班头像：</label></td>
					<td class="width-35">
						<form:hidden id="imgurl" path="imgurl" htmlEscape="false" maxlength="500" class="form-control"/>
						<sys:ckfinder input="imgurl" type="images" uploadPath="/classes/classes" selectMultiple="false"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>班级类型：</label></td>
					<td class="width-35">
						<form:select path="classtype" class="form-control required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('classes_classtype')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>每日公里数（km）：</label></td>
					<td class="width-35">
						<form:input path="mrgls" htmlEscape="false"    class="form-control member required"/>
						<%-- <form:select path="mrgls" class="form-control required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('classes_mrgls')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>每周出勤（周/次）：</label></td>
					<td class="width-35">
						<form:input path="mzcq" htmlEscape="false"    class="form-control digits required"/>
						<%-- <form:select path="mzcq" class="form-control required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('classes_mzcq')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>每日契约金（元）：</label></td>
					<td class="width-35">
						<form:input path="mrqyj" htmlEscape="false"    class="form-control number required"/>
						<%-- <form:select path="mrqyj" class="form-control required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('classes_mrqyj')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">奖金池（元）：</label></td>
					<td class="width-35">
						${classes.moneypool }
					</td>
		  		</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>