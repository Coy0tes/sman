<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>约跑报名管理管理</title>
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
		function addRow(list, idx, tpl, row){
			$(list).append(Mustache.render(tpl, {
				idx: idx, delBtn: true, row: row
			}));
			$(list+idx).find("select").each(function(){
				$(this).val($(this).attr("data-value"));
			});
			$(list+idx).find("input[type='checkbox'], input[type='radio']").each(function(){
				var ss = $(this).attr("data-value").split(',');
				for (var i=0; i<ss.length; i++){
					if($(this).val() == ss[i]){
						$(this).attr("checked","checked");
					}
				}
			});
		}
		function delRow(obj, prefix){
			var id = $(prefix+"_id");
			var delFlag = $(prefix+"_delFlag");
			if (id.val() == ""){
				$(obj).parent().parent().remove();
			}else if(delFlag.val() == "0"){
				delFlag.val("1");
				$(obj).html("&divide;").attr("title", "撤销删除");
				$(obj).parent().parent().addClass("error");
			}else if(delFlag.val() == "1"){
				delFlag.val("0");
				$(obj).html("&times;").attr("title", "删除");
				$(obj).parent().parent().removeClass("error");
			}
		}
	</script>
</head>
<body class="hideScroll">
	<form:form id="inputForm" modelAttribute="classesSignup" action="${ctx}/classessignup/classesSignup/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">报名编号：</label></td>
					<td class="width-35">
						${classesSignup.bmbh }
					</td>
					<td class="width-15 active"><label class="pull-right">报名人：</label></td>
					<td class="width-35">
						${classesSignup.bmrname }
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">报名班级：</label></td>
					<td class="width-35">
						${classesSignup.classesname }
					</td>
					<td class="width-15 active"><label class="pull-right">开始日期：</label></td>
					<td class="width-35">
						${classesSignup.ksrq }
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">报名周数：</label></td>
					<td class="width-35">
						${classesSignup.bmzs }
					</td>
					<td class="width-15 active"><label class="pull-right">联系手机：</label></td>
					<td class="width-35">
						${classesSignup.lxsj }
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">契约金：</label></td>
					<td class="width-35">
						${classesSignup.qyj }
					</td>
					<td class="width-15 active"><label class="pull-right">余额抵扣：</label></td>
					<td class="width-35">
						${classesSignup.yedk }
					</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">实际缴纳契约金：</label></td>
					<td class="width-35">
						${classesSignup.sjynqyj }
					</td>
		  		</tr>
		 	</tbody>
		</table>
		
		<div class="tabs-container">
            <ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">报名周数：</a>
                </li>
            </ul>
            <div class="tab-content">
				<div id="tab-1" class="tab-pane active">
			<table id="contentTable" class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<th class="hide"></th>
						<th>周类型</th>
						<th>周数</th>
						<th>开始日期</th>
						<th>截止日期</th>
						<th>每周打卡天数</th>
					</tr>
				</thead>
				<tbody id="classesSignupWeeksList">
				</tbody>
			</table>
			<script type="text/template" id="classesSignupWeeksTpl">//<!--
				<tr id="classesSignupWeeksList{{idx}}">
					<td class="hide">
						<input id="classesSignupWeeksList{{idx}}_id" name="classesSignupWeeksList[{{idx}}].id" type="hidden" value="{{row.id}}"/>
						<input id="classesSignupWeeksList{{idx}}_delFlag" name="classesSignupWeeksList[{{idx}}].delFlag" type="hidden" value="0"/>
					</td>
					<td>
						{{row.weektype}}
					</td>
					<td>
						{{row.weeks}}
					</td>
					<td>
						{{row.weekbegin}}
					</td>
					<td>
						{{row.weekend}}
					</td>
					<td>
						{{row.dkts}}
					</td>
				</tr>//-->
			</script>
			<script type="text/javascript">
				var classesSignupWeeksRowIdx = 0, classesSignupWeeksTpl = $("#classesSignupWeeksTpl").html().replace(/(\/\/\<!\-\-)|(\/\/\-\->)/g,"");
				$(document).ready(function() {
					var data = ${fns:toJson(classesSignup.classesSignupWeeksList)};
					for (var i=0; i<data.length; i++){
						addRow('#classesSignupWeeksList', classesSignupWeeksRowIdx, classesSignupWeeksTpl, data[i]);
						classesSignupWeeksRowIdx = classesSignupWeeksRowIdx + 1;
					}
				});
			</script>
			</div>
		</div>
		</div>
	</form:form>
</body>
</html>