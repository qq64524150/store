<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
<!-- 引入css文件，不限顺序 -->
<link rel="stylesheet" href="<%=basePath %>/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=basePath %>/themes/icon.css" type="text/css"></link>

<!-- 引入js文件，有顺序限制 -->
<script type="text/javascript" src="<%=basePath %>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/js/jquery.easyui.min.js"></script>
<title>后台管理</title>
</head>
<body>
	<!-- Layout布局 -->
		<div id="layoutID" style="width:700px;height:500px" class="easyui-layout" data-options="fit:true">
			
			<!-- 头 -->
			<div data-options="region:'north',border:true,iconCls:'icon-remove',collapsible:true" style="height:75px;">
				<center><font style="font-size:30px">xx后台管理</font></center>			
			</div>   
			
			<!-- 尾 -->
			<div data-options="region:'south'" style="height:25px;">
				<center><font style="font-size:12px">XX公司版权所有</font></center>			
			</div>   
			
			<!--  右
			<div data-options="region:'east',iconCls:'icon-reload'" style="width:100px;"></div>   
			 -->
			<!-- 左 -->
			<div data-options="region:'west'" style="width:190px;">
				<!-- Accordion分类 -->
				
				
			</div>   

			<!-- 中 -->
			<div data-options="region:'center'" style="padding:5px;background:#fff;">
				<!-- Tabs选项卡 -->
				<div 
					id="tabsID" 
					class="easyui-tabs" 
					style="width:500px;height:250px;"
					data-options="plain:true,border:false,selected:-1,fit:true">   
				</div>
			</div>   
			
		</div>

</body>
</html>


<script type="text/javascript">
	//定位4个按钮
	$("a").click(function(){
		//获取你所单击的按钮的标题
		var title = $(this).text();
		//去空格
		title = $.trim(title);
		//如果title变量是"增加部门"
		if("增加部门" == title){
			//查看该选项卡是否已经打开
			var flag = $("#tabsID").tabs("exists",title);
			//如果未打开
			if(!flag){
				//打开选项卡
				$("#tabsID").tabs("add",{
					"title" : title,
					"closable" : true,
					"href" : "${pageContext.request.contextPath}/03_addGroup.jsp",
					"iconCls" : "icon-add"
				});
			}
		}else if("查询部门" == title){
			var flag = $("#tabsID").tabs("exists",title);
			if(!flag){
				//打开选项卡
				$("#tabsID").tabs("add",{
					"title" : title,
					"closable" : true,
					"content" : "文本",
					"iconCls" : "icon-search"
				});
			}
		}
	});
</script>


