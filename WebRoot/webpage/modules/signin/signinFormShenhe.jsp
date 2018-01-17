<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>约跑打卡管理管理</title>
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
			
			// 审核控制
			// 如果选择审核未通过，则显示输入框
			$("#shzt").change(function(){
				var vals = $("select option:selected").val();
				if(vals==2){
					$(".shenhe").removeAttr("hidden");
				}else{
					$(".shenhe").attr("hidden","hidden");
				}
			});
			
		});
	</script>
</head>
<body class="hideScroll">
		<form:form id="inputForm" modelAttribute="signin" action="${ctx}/signin/signin/saveShenhe" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">打卡人：</label></td>
					<td class="width-35">
						${signin.dkrname}
						<%-- <form:input path="dkrname" htmlEscape="false"    class="form-control "/> --%>
					</td>
					<td class="width-15 active" rowspan="3"><label class="pull-right">打卡截图：</label></td>
					<td rowspan="3">
						<div style="text-align:center;">
					   		<img src="${signin.imgurl}" class="zoomify" style="max-height: 200px;max-width: 200px;">
						</div>
					</td>
				</tr>
				<%-- <tr>
					<td class="width-15 active"><label class="pull-right">打卡截图：</label></td>
					<td class="width-35">
						<form:input path="imgurl" htmlEscape="false"    class="form-control "/>
						<div style="text-align:center;">
					   		<img src="${signin.imgurl}" class="zoomify" style="max-height: 200px;max-width: 200px;">
						</div>
						<form:hidden id="mainpicurl" path="imgurl" htmlEscape="false" maxlength="5000" class="form-control"/>
						<sys:ckfinder input="mainpicurl" type="images" uploadPath="/pkg/pkg" selectMultiple="false"/>
					</td>
				</tr> --%>
				<tr>
					<td class="width-15 active"><label class="pull-right">跑步距离(千米）：</label></td>
					<td class="width-35">
						${signin.pbjl}
						<%-- <form:input path="pbjl" htmlEscape="false"    class="form-control number"/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">跑步用时(分钟)：</label></td>
					<td class="width-35">
						${signin.pbys}
						<%-- <form:input path="pbys" htmlEscape="false"    class="form-control digits"/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>审核状态：</label></td>
					<td class="width-35" colspan="3">
						<form:select path="shzt" class="form-control required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('withdraw_shzt')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</td>
				</tr>
				<%-- <tr>
					<td class="width-15 active"><label class="pull-right">审核人：</label></td>
					<td class="width-35" colspan="3">
						<form:input path="shrname" htmlEscape="false"    class="form-control "/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">审核时间：</label></td>
					<td class="width-35" colspan="3">
						<form:input path="shsj" htmlEscape="false"    class="form-control "/>
					</td>
		  		</tr> --%>
				<tr class="shenhe" hidden="hidden">
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>审核不通过原因：</label></td>
					<td class="width-35" colspan="3">
						<form:textarea path="shbtgyy" htmlEscape="false"    class="form-control required"/>
					</td>
		  		</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>