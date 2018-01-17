<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>兑换码管理管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		
		$(document).ready(function() {
			if("${code.id}"){
				$("#code").attr("disabled","true");
			}else{
				var radio = $("input[name=status][value=0]");
				radio.attr("checked","checked");
				radio.parent().addClass("checked");
			}
		});
	
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
		<form:form id="inputForm" modelAttribute="code" action="${ctx}/code/code/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>兑换码：</label></td>
					<td class="width-35">
						<form:input path="code" htmlEscape="false"    class="form-control required" readonly="true"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>发放日期起：</label></td>
					<td class="width-35">
						<form:input path="ffrqq" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  onfocus="this.blur()"  class="form-control required" />
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>发放日期止：</label></td>
					<td class="width-35">
						<form:input path="ffrqz" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  onfocus="this.blur()"  class="form-control required" />
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>有效日期起：</label></td>
					<td class="width-35">
						<form:input path="yxrqq" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  onfocus="this.blur()"  class="form-control required" />
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>有效日期止：</label></td>
					<td class="width-35">
						<form:input path="yxrqz" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  onfocus="this.blur()"  class="form-control required" />
					</td>
				</tr>
				<tr hidden="hidden">
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>状态：</label></td>
					<td class="width-35">
						<form:radiobuttons path="status" items="${fns:getDictList('code_status_isstatus')}" itemLabel="label" itemValue="value" htmlEscape="false" class="i-checks required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">领用人：</label></td>
					<td class="width-35">
						<%-- <form:input path="lyr" htmlEscape="false"    class="form-control "/> --%>
						<%-- <sys:gridselect url="${ctx}/code/code/selectcode" id="code" name="code.id"  value="${code.lyr}"  title="选择所属会员" labelName="code.code" 
						 labelValue="${code.lyr}" cssClass="form-control" fieldLabels="会员姓名|昵称" fieldKeys="name|nickname" searchLabel="会员名" searchKey="lyr" ></sys:gridselect> --%>
						 <sys:gridselect url="${ctx}/code/code/selectmember" id="member" name="member.id"  value="${code.member.id}"  title="选择领用人" labelName="member.name" 
						 labelValue="${code.member.name}" cssClass="form-control" fieldLabels="领用人|昵称" fieldKeys="name|nickname" searchLabel="会员名" searchKey="name" ></sys:gridselect>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">领用时间：</label></td>
					<td class="width-35">
						<form:input path="lysj" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  onfocus="this.blur()"  class="form-control" disabled="true"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">使用时间：</label></td>
					<td class="width-35">
						<form:input path="sysj" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  onfocus="this.blur()"  class="form-control" disabled="true"/>
					</td>
				</tr>
				<%-- <tr>
					<td class="width-15 active"><label class="pull-right">订单ID：</label></td>
					<td class="width-35">
						<form:input path="orderid" htmlEscape="false"    class="form-control "/>
					</td>
				</tr> --%>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>