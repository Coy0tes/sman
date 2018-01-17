<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>场馆信息管理</title>
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
			
			//编辑时，对设备类型多选框处理
			if("${site.devices}"){
				//编辑
				var devices = "${site.devices}";
				var arr = devices.split(",");
				$.each(arr,function(i,v){
					if(v){
						var cb = $("input[name=devices][value='"+v+"'");
						cb.attr("checked","checked");
						cb.parent().addClass("checked");
					}
				});
			}else{
				//新增
				var rd = $("input[name=orderoc][value=1]");
				rd.attr("checked","checked");
				rd.parent().addClass("checked");
			}
		});
		
		//地图选点
		function mapselect(){
			top.layer.open({
			    type: 2,  
			    area: ['85%', '85%'],
			    title: '选择位置',
		        maxmin: true, //开启最大化最小化按钮
			    content: '${ctx}/site/site/map',
			    btn: ['确定', '关闭'],
			    yes: function(index, layero){
			    	 var body = top.layer.getChildFrame('body', index);
			         var iframeWin = layero.find('iframe')[0]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
			         var point = iframeWin.contentWindow.getPoint();
			         $("#longitude").val(point.lng);
			         $("#latitude").val(point.lat);
			         $("#label").val(point.address);
			         setTimeout(function(){top.layer.close(index)}, 100);//延时0.1秒，对应360 7.1版本bug
				  },
				  cancel: function(index){ 
			      }
			});
		}
	</script>
	<script type="text/javascript" src="${ctxStatic}/area/jsAddress.js"></script>
</head>
<body class="hideScroll">
		<form:form id="inputForm" modelAttribute="site" action="${ctx}/site/site/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}" hideType="1"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>场馆名称：</label></td>
					<td class="width-35">
						<form:input path="name" htmlEscape="false"    class="form-control required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>场馆分类：</label></td>
					<td class="width-35">
						<sys:treeselect id="sitetype" name="sitetype.id" value="${site.sitetype.id}" labelName="sitetype.name" labelValue="${site.sitetype.name}"
						title="场馆分类" url="/sitetype/sitetype/treeData" cssClass="form-control required" notAllowSelectParent="true"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>场馆图片：</label></td>
					<td class="width-35">
						<form:hidden id="simg" path="simg" htmlEscape="false" maxlength="5000" class="form-control"/>
						<sys:ckfinder input="simg" type="images" uploadPath="/site/site" selectMultiple="true"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>联系电话：</label></td>
					<td class="width-35">
						<form:input path="mobile" htmlEscape="false"    class="form-control required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font style="color:red;">*</font>所在省市区：</label></td>
					<td class="width-35">
						<form:select path="province" style="width:25%;" class="form-control required">
						</form:select>
						<form:select path="city" style="width:25%;" class="form-control  required">
						</form:select>
						<form:select path="county" style="width:25%;" class="form-control">
						</form:select>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>位置名称：</label></td>
					<td class="width-35">
						<form:input path="label" htmlEscape="false"    class="form-control required" style="width:45%;"/>&nbsp;
						经度<form:input path="longitude" htmlEscape="false"    class="form-control " style="width:100px;"/>&nbsp;
						纬度<form:input path="latitude" htmlEscape="false"    class="form-control " style="width:100px;"/>&nbsp;
						<a class="btn btn-primary btn-outline btn-sm " onclick="mapselect()">地图选点</a>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">场馆简介：</label></td>
					<td class="width-35">
						<form:textarea path="contents" htmlEscape="false" rows="4"    class="form-control "/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">场馆设备：</label></td>
					<td class="width-35">
						<form:checkboxes path="devices" items="${fns:getDictList('sitedevices')}" itemLabel="label" itemValue="value" htmlEscape="false" class="i-checks "/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right"><font color="red">*</font>是否允许预约：</label></td>
					<td class="width-35">
						<form:radiobuttons path="orderoc" items="${fns:getDictList('yes_no')}" itemLabel="label" itemValue="value" htmlEscape="false" class="i-checks required"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">最大日预约人数：</label></td>
					<td class="width-35">
						<form:input path="maxordernumday" htmlEscape="false"  class="form-control digits"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">不可预约日期起：</label></td>
					<td class="width-35">
						<form:input path="noorderrqq" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  class="form-control"/>
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">不可预约日期止：</label></td>
					<td class="width-35">
						<form:input path="noorderrqz" htmlEscape="false"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"  class="form-control"/>
					</td>
				</tr>
		 	</tbody>
		</table>
	</form:form>
	<script type="text/javascript">
	addressInit("province","city","county","${site.province}","${site.city}","${site.county}");
</script>
</body>
</html>