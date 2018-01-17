<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>订单管理管理</title>
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
		<form:form id="inputForm" modelAttribute="orders" action="${ctx}/order/orders/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">订单号：</label></td>
					<td class="width-35">
						<%-- <form:input path="ddh" htmlEscape="false"    class="form-control "/> --%>
						${orders.ddh }
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">所属套餐：</label></td>
					<td class="width-35">
						${orders.pkgid }
						<%-- <form:input path="pkgid" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡人：</label></td>
					<td class="width-35">
						${orders.gkrname }
						<%-- <form:input path="gkrname" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡方式：</label></td>
					<td class="width-35">
						${fns:getDictLabel(orders.gkfs, 'order_gkfs', '')}
						<%-- <form:radiobuttons path="gkfs" items="${fns:getDictList('order_gkfs')}" itemLabel="label" itemValue="value" htmlEscape="false" class="i-checks "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡位置经度：</label></td>
					<td class="width-35">
						${orders.gklng }
						<%-- <form:input path="gklng" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡位置纬度：</label></td>
					<td class="width-35">
						${orders.gklat }
						<%-- <form:input path="gklat" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡位置名称：</label></td>
					<td class="width-35">
						${orders.gklabel }
						<%-- <form:input path="gklabel" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡兑换码：</label></td>
					<td class="width-35">
						${orders.gkdhm }
						<%-- <form:input path="gkdhm" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡金额（元）：</label></td>
					<td class="width-35">
						${orders.gkjine }
						<%-- <form:input path="gkjine" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">订单状态：</label></td>
					<td class="width-35">
						${fns:getDictLabel(orders.orderstatus, 'order_orderstatus', '')}
						<%-- <form:radiobuttons path="orderstatus" items="${fns:getDictList('order_orderstatus')}" itemLabel="label" itemValue="value" htmlEscape="false" class="i-checks "/> --%>
					</td>
				</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>