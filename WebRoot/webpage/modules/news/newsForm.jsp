<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>新闻管理管理</title>
	<meta name="decorator" content="default"/>
	<!-- 富文本编辑器样式和函数 -->
	<link href="${ctxStatic}/umeditor1.2.3/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${ctxStatic}/umeditor1.2.3/third-party/template.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="${ctxStatic}/umeditor1.2.3/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${ctxStatic}/umeditor1.2.3/umeditor.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/umeditor1.2.3/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript">
		var validateForm;
		function doSubmit(){//回调函数，在编辑和保存动作时，供openDialog调用提交表单。
		  if(validateForm.form()){
			  $("#contents").val(UM.getEditor('myEditor').getContent());//取富文本的值
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
		<form:form id="inputForm" modelAttribute="news" action="${ctx}/news/news/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>新闻标题：</label></td>
					<td class="width-35">
						<form:input path="title" htmlEscape="false"    class="form-control required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>所属分类：</label></td>
					<td class="width-35">
						<form:select path="category" class="form-control required">
							<form:option value="" label=""/>
							<form:options items="${fns:getDictList('news_category')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
						</form:select>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>新闻主图：</label></td>
					<td class="width-35">
						<form:hidden id="mainpicurl" path="mainpicurl" htmlEscape="false" maxlength="5000" class="form-control"/>
						<sys:ckfinder input="mainpicurl" type="images" uploadPath="/news/news" selectMultiple="false"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>新闻内容：</label></td>
					<td class="width-35">
						<%-- <form:input path="contents" htmlEscape="false"    class="form-control required"/> --%>
						<form:hidden path="contents"/>
						<div id="hiddendiv" style="display: none;">渲染umeditor元素</div>
						<script type="text/plain" id="myEditor" style="width:100%;height:200px;">
						</script>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>序号：</label></td>
					<td class="width-35">
						<form:input path="xh" htmlEscape="false"    class="form-control required"/>
					</td>
		  		</tr>
		 	</tbody>
		</table>
	</form:form>
	<script type="text/javascript">
		//实例化编辑器
	    var um = UM.getEditor('myEditor');
	     um.ready(function() {//编辑器初始化完成再赋值 
	        $('#hiddendiv').html($("#contents").val());
	        um.setContent($('#hiddendiv').text());
	    });  
	</script>
</body>
</html>