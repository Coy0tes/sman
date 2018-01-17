<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>套餐卡管理管理</title>
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
			
			$("#maxusenum").blur(function(){
				$("#sycs").val($("#maxusenum").val());
			});
			$("#maxusenum").keyup(function(){
				$("#sycs").val($("#maxusenum").val());
			});
			
		});
	</script>
</head>
<body class="hideScroll">
		<form:form id="inputForm" modelAttribute="card" action="${ctx}/card/card/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">卡号：</label></td>
					<td class="width-35">
						<form:input path="cardbh" htmlEscape="false"    class="form-control " readonly="true"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">所属套餐：</label></td>
					<td class="width-35">
						<sys:gridselect url="${ctx}/card/card/selectpkg" id="pkg" name="pkg.id"  value="${card.pkg.id}"  title="选择所属套餐" labelName="pkg.name" 
						 labelValue="${card.pkg.name}" cssClass="form-control required" fieldLabels="套餐名|套餐类型|价格|最大使用次数|最大使用范围(千米)|每月最大购卡次数" fieldKeys="name|pkgtype|price|maxusenum|maxuserange|maxbuynum" searchLabel="套餐名" searchKey="name" ></sys:gridselect>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">持卡人：</label></td>
					<td class="width-35">
						<sys:gridselect url="${ctx}/card/card/selectmemebr" id="memebr" name="memebr.id"  value="${card.memebr.id}"  title="选择持卡人" labelName="memebr.name" 
						 labelValue="${card.memebr.name}" cssClass="form-control required" fieldLabels="会员名|昵称" fieldKeys="name|nickname" searchLabel="会员名" searchKey="name" ></sys:gridselect>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font style="color:red">*</font>购卡时间：</label></td>
					<td class="width-35">
						<form:input path="gksj" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  onfocus="this.blur()"  class="form-control required" />
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡金额：</label></td>
					<td class="width-35">
						<form:input path="gkjine" htmlEscape="false"    class="form-control  number"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font style="color:red">*</font>最大使用次数：</label></td>
					<td class="width-35">
						<form:input path="maxusenum" htmlEscape="false"    class="form-control required digits"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">剩余次数：</label></td>
					<td class="width-35">
						<form:input path="sycs" htmlEscape="false"    class="form-control " readonly="true"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">最大使用范围(千米)：</label></td>
					<td class="width-35">
						<form:input path="maxuserange" htmlEscape="false"    class="form-control "/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡位置经度：</label></td>
					<td class="width-35">
						<form:input path="gklng" htmlEscape="false"    class="form-control "/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡位置纬度：</label></td>
					<td class="width-35">
						<form:input path="gklat" htmlEscape="false"    class="form-control "/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">购卡位置名称：</label></td>
					<td class="width-35">
						<form:input path="gklabel" htmlEscape="false"    class="form-control "/>
					</td>
				</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>