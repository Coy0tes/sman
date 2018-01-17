<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>会员信息管理</title>
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
				messages: {
					confirmNewPassword: {equalTo: "输入与上面相同的密码"}
				},
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
		<form:form id="inputForm" modelAttribute="member" action="${ctx}/member/member/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>用户名：</label></td>
					<td class="width-35">
						<c:if test="${empty member.id}">
							<form:input path="loginName" htmlEscape="false"    class="form-control required"/>
						</c:if>
						<c:if test="${not empty member.id}">
							<form:input path="loginName" htmlEscape="false"    class="form-control required" readonly="true"/>
						</c:if>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><c:if test="${empty member.id}"><font color="red">*</font></c:if>密码：</label></td>
					<td class="width-35">
					    <input id="newPassword" name="newPassword" type="password" value="" maxlength="50" minlength="3" class="form-control ${empty member.id?'required':''}"/>
						<c:if test="${not empty member.id}"><span class="help-inline">若不修改密码，请留空。</span></c:if>
					</td>
				</tr>
				<tr>
					<td class="active"><label class="pull-right"><c:if test="${empty member.id}"><font color="red">*</font></c:if>确认密码:</label></td>
		            <td><input id="confirmNewPassword" name="confirmNewPassword" type="password"  class="form-control ${empty member.id?'required':''}" value="" maxlength="50" minlength="3" equalTo="#newPassword"/></td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">姓名：</label></td>
					<td class="width-35">
						<form:input path="name" htmlEscape="false"    class="form-control "/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">帐号余额：</label></td>
					<td class="width-35">
						${member.yue}
						<%-- <form:input path="yue" htmlEscape="false"    class="form-control "/> --%>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">头像：</label></td>
					<td class="width-35">
						<div style="text-align:left;">
					    	<img src="${wxurl}/${member.headimgurl}" style="max-height: 60px;max-width: 60px;">
					    </div>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">昵称：</label></td>
					<td class="width-35">
						${member.nickname}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">关注时间：</label></td>
					<td class="width-35">
						${member.gztime}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">取消关注时间：</label></td>
					<td class="width-35">
						${member.qxgztime}
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">微信Openid：</label></td>
					<td class="width-35">
						${member.wxopenid}
					</td>
				</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>