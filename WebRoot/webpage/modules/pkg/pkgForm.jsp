<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>套餐管理管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		var validateForm;
		function doSubmit(){//回调函数，在编辑和保存动作时，供openDialog调用提交表单。
		  if(validateForm.form()){
			  var pkg = $("input[name='pkgtype']:checked").val();
			  var range = $("#maxuserange").val();
			  if(pkg == '0' && range == ''){
				  top.layer.msg("请设置最大使用范围（单位：千米）");
				  return false;
		  	  }
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
		<form:form id="inputForm" modelAttribute="pkg" action="${ctx}/pkg/pkg/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>名称：</label></td>
					<td class="width-35">
						<form:input path="name" htmlEscape="false"    class="form-control required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>类型：</label></td>
					<td class="width-35">
						<form:radiobuttons path="pkgtype" items="${fns:getDictList('package_pkgtype')}" itemLabel="label" itemValue="value" htmlEscape="false" class="i-checks required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>套餐主图：</label></td>
					<td class="width-35">
						<form:hidden id="mainpicurl" path="imgurl" htmlEscape="false" maxlength="5000" class="form-control"/>
						<sys:ckfinder input="mainpicurl" type="images" uploadPath="/pkg/pkg" selectMultiple="false"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>使用说明：</label></td>
					<td class="width-35">
						<form:textarea path="description" htmlEscape="false"    class="form-control required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">金额：</label></td>
					<td class="width-35">
						<form:input path="price" htmlEscape="false"    class="form-control number"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>最大使用次数：</label></td>
					<td class="width-35">
						<form:input path="maxusenum" htmlEscape="false"    class="form-control required digits"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">最大使用范围(千米)：</label></td>
					<td class="width-35">
						<form:input path="maxuserange" htmlEscape="false"    class="form-control number"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">每月最大购卡次数：</label></td>
					<td class="width-35">
						<form:input path="maxbuynum" htmlEscape="false"    class="form-control  digits"/>
					</td>
		  		</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>