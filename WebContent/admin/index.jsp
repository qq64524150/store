<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理</title>
<!--  Bootstrap -->
<link href="<%=basePath%>/css/default.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/themes/icon.css" />
<script type="text/javascript"
	src="<%=basePath%>/js/jquery-1.7.2.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/js/jquery.easyui.min.1.2.2.js"></script>
<script type="text/javascript" src='<%=basePath%>/js/outlook2.js'>
</script>


<style>
	.easyui-accordion li a{
		text-decoration:none;
		color: black;
		font-size: 17px ;
		font-weight: 700;
	}
	.easyui-accordion li:hover{
		cursor:pointer;
		background: #CCCCFF ;
	}
</style>
	

</head>
<body class="easyui-layout" style="overflow-y: hidden" scroll="no">

	<div region="north" split="true" border="false"
		style="overflow: hidden; height: 80px; background: url(../images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%; line-height: 20px; color: #fff; font-family: Verdana, 微软雅黑, 黑体">

	</div>
	<div region="south" split="true"
		style="height: 30px; background: #D2E0F2;"></div>
	
	<div region="west" hide="true" split="true" title="导航菜单"
		style="width: 180px;" id="west" >
		<div id="nav" class="easyui-accordion" fit="true" border="false"
			id="s">
			<!--  导航内容 -->

		</div>

	</div>
	<div id="mainPanle" region="center"
		style="background: #eee; overflow-y: hidden">
		<div id="tabs" class="easyui-tabs" fit="true" border="false">
			<div title="主页" style="padding: 20px; overflow: hidden; color: red;"
				id="show">
				${userInfo.uphone }欢迎来到后台管理
				<div id="test"></div>
			</div>
		</div>
	</div>
	<div id="mm" class="easyui-menu" style="width: 150px;">
		<div id="mm-tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseall">全部关闭</div>
		<div id="mm-tabcloseother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-exit">退出</div>
	</div>
</body>
</html>
<script type="text/javascript">
	

	
	/* alert("---")
		var tabTitle = $(this).children('.nav').text();

		var url = $(this).attr("rel");
		var menuid = $(this).attr("ref");
		var icon = getIcon(menuid, icon);

		addTab(tabTitle, url, icon);
		$('.accordion-body li div').removeClass("selected");
		$(this).parent().addClass("selected");
	}).hover(function() {
		$(this).parent().addClass("hover");
	}, function() {
		$(this).parent().removeClass("hover");
	}); */
</script>

