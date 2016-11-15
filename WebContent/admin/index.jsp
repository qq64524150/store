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
<link href="<%=basePath%>/css/default.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/themes/icon.css" />
<script type="text/javascript"
	src="<%=basePath%>/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/js/jquery.easyui.min.1.2.2.js"></script>
<script type="text/javascript" src='<%=basePath%>/js/outlook2.js'>
	
</script>
<script type="text/javascript">
	

	var test = [ {
		"perno" : "1",
		"pername" : "用户管理",
		"perurl" : "",
		"perioce" : "",
		"persuperior" : 0,
		"pisNavigation" : 1,
		"perdepict" : "这是用户管理",
		"perstatus" : "open",
		"aso" : [ {
			"perno" : "9",
			"pername" : "个人信息",
			"perurl" : "",
			"perioce" : "",
			"persuperior" : 1,
			"pisNavigation" : 1,
			"perdepict" : "这是个人信息",
			"perstatus" : "closed",
			"aso" : []
		}, {
			"perno" : "10",
			"pername" : "用户信息",
			"perurl" : "",
			"perioce" : "",
			"persuperior" : 1,
			"pisNavigation" : 1,
			"perdepict" : "这是用户信息",
			"perstatus" : "closed",
			"aso" : []
		} ]
	}, {
		"perno" : "2",
		"pername" : "商品管理",
		"perurl" : "",
		"perioce" : "",
		"persuperior" : 0,
		"pisNavigation" : 1,
		"perdepict" : "这是商品管理",
		"perstatus" : "open",
		"aso" : []
	}, {
		"perno" : "3",
		"pername" : "评价/反馈",
		"perurl" : "",
		"perioce" : "",
		"persuperior" : 0,
		"pisNavigation" : 1,
		"perdepict" : "这是评价/反馈",
		"perstatus" : "open",
		"aso" : []
	}, {
		"perno" : "4",
		"pername" : "信息管理",
		"perurl" : "",
		"perioce" : "",
		"persuperior" : 0,
		"pisNavigation" : 1,
		"perdepict" : "这是信息管理",
		"perstatus" : "open",
		"aso" : []
	}, {
		"perno" : "5",
		"pername" : "物流信息",
		"perurl" : "",
		"perioce" : "",
		"persuperior" : 0,
		"pisNavigation" : 1,
		"perdepict" : "这是物流信息",
		"perstatus" : "open",
		"aso" : []
	}, {
		"perno" : "6",
		"pername" : "统计信息",
		"perurl" : "",
		"perioce" : "",
		"persuperior" : 0,
		"pisNavigation" : 1,
		"perdepict" : "这是统计信息",
		"perstatus" : "open",
		"aso" : []
	}, {
		"perno" : "7",
		"pername" : "权限管理",
		"perurl" : "",
		"perioce" : "",
		"persuperior" : 0,
		"pisNavigation" : 1,
		"perdepict" : "这是权限管理",
		"perstatus" : "open",
		"aso" : []
	}, {
		"perno" : "8",
		"pername" : "系统维护",
		"perurl" : "",
		"perioce" : "",
		"persuperior" : 0,
		"pisNavigation" : 1,
		"perdepict" : "这是系统维护",
		"perstatus" : "open",
		"aso" : []
	} ];
	
</script>

</head>
<body class="easyui-layout" style="overflow-y: hidden" scroll="no">
	
	<div region="north" split="true" border="false"
		style="overflow: hidden; height: 30px; background: url(../images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%; line-height: 20px; color: #fff; font-family: Verdana, 微软雅黑, 黑体">
		
	</div>
	<div region="south" split="true"
		style="height: 30px; background: #D2E0F2;">
		
	</div>
	<div region="west" hide="true" split="true" title="导航菜单"
		style="width: 180px;" id="west">
		<div id="nav" class="easyui-accordion" fit="true" border="false">
			<!--  导航内容 -->

		</div>

	</div>
	<div id="mainPanle" region="center"
		style="background: #eee; overflow-y: hidden">
		<div id="tabs" class="easyui-tabs" fit="true" border="false">
			<div title="主页" style="padding: 20px; overflow: hidden; color: red;">
				欢迎来到后台管理
				
			</div>
		</div>
	</div>

</body>
</html>


