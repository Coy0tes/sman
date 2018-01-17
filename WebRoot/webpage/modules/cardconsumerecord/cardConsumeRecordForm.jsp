<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>消费记录管理</title>
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
		<form:form id="inputForm" modelAttribute="cardConsumeRecord" action="${ctx}/cardconsumerecord/cardConsumeRecord/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">卡号：</label></td>
					<td class="width-35">
						${cardConsumeRecord.card.cardbh}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">使用人：</label></td>
					<td class="width-35">
						${cardConsumeRecord.syrname}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">使用时间：</label></td>
					<td class="width-35">
						${cardConsumeRecord.sysj}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">使用场馆：</label></td>
					<td class="width-35">
						${cardConsumeRecord.site.name}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">套餐卡剩余次数：</label></td>
					<td class="width-35">
						${cardConsumeRecord.cardsycs }
					</td>
		  		</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>