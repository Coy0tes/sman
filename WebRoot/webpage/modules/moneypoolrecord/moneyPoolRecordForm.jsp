<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>奖金池记录管理</title>
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
		<form:form id="inputForm" modelAttribute="moneyPoolRecord" action="${ctx}/moneypoolrecord/moneyPoolRecord/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">班级：</label></td>
					<td class="width-35">
						${moneyPoolRecord.classes.name}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">周日期起：</label></td>
					<td class="width-35">
						${moneyPoolRecord.weekbegin}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">周日期止：</label></td>
					<td class="width-35">
						${moneyPoolRecord.weekend}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">总应跑天数：</label></td>
					<td class="width-35">
						${moneyPoolRecord.zypts}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">总漏跑天数：</label></td>
					<td class="width-35">
						${moneyPoolRecord.zlpts}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">每日契约金：</label></td>
					<td class="width-35">
						${moneyPoolRecord.mrqyj}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">奖金池金额：</label></td>
					<td class="width-35">
						${moneyPoolRecord.jjcje}
					</td>
		  		</tr>
		  		<tr>
					<td class="width-15 active"><label class="pull-right">创建时间：</label></td>
					<td class="width-35">
						<fmt:formatDate value="${moneyPoolRecord.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
		  		</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>