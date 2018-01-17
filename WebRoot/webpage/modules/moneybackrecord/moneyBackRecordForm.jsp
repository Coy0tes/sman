<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>返还记录管理</title>
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
		<form:form id="inputForm" modelAttribute="moneyBackRecord" action="${ctx}/moneybackrecord/moneyBackRecord/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">周日期起：</label></td>
					<td class="width-35">
						${moneyBackRecord. weekbegin}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">周日期止：</label></td>
					<td class="width-35">
						${moneyBackRecord. weekend}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">约跑人姓名：</label></td>
					<td class="width-35">
						${moneyBackRecord. yprname}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">约跑班级：</label></td>
					<td class="width-35">
						${moneyBackRecord.classes.name}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">返还契约金：</label></td>
					<td class="width-35">
						${moneyBackRecord. fhqyj}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">总应跑天数：</label></td>
					<td class="width-35">
						${moneyBackRecord. ypts}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">总漏跑天数：</label></td>
					<td class="width-35">
						${moneyBackRecord. lpts}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">每日契约金：</label></td>
					<td class="width-35">
						${moneyBackRecord. mrqyj}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">返还时间：</label></td>
					<td class="width-35">
						<fmt:formatDate value="${moneyBackRecord.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
				</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>