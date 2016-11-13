<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>后台管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/imgs/tit.png"
	rel="shortout icon" />
<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- 增强IE浏览器的渲染格式 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 移动设备优先 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath }/bootstrap/bootstrap.min.css"
	rel="stylesheet">


<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/easyui/demo/demo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/easyui/themes/material/easyui.css">


<link rel="stylesheet" type="text/css"
	href="../jquery/jquery-ui.min.css">
<script type="text/javascript" src="../jquery/jquery-ui.min.js"></script>
<script type="text/javascript" src="../jquery/jquery-1.12.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery/jquery.form.js"></script>


</head>
<body class="easyui-layout">


	<!-- 头开始 -->
	<div data-options="region:'north',title:'header',split:false,noheader:true,"
		style="height: 80px; overflow: hidden; margin: 0px" id="hesd">
			后台管理系统
	
	</div>
	<!-- 头结束-->

	<!-- 尾 -->
	<div
		data-options="region:'south',title:'footer',split:false,noheader:true"
		style="color: #B4CDCD; height: 30px; line-height: 30px; text-align: center; margin: 0px; overflow: hidden;">
		©2016 csgz.xicp.cn 使用xx 意见反馈 京ICP证66666号</div>
	<!-- 功能导航开始 -->
	<div data-options="region:'west',title:'功能导航',split:false,iconCls:'icon-09'"
		style="width: 230px; padding: 10px; margin: 0px;" id="daoHan">
		<div id="aa" class="easyui-accordion"  style="width: 228px; height: auto; margin-left: -10px; margin-top: -11px;">



		</div>
	</div>


	<!-- 功能导航结束 -->

	<!-- 主体开始 -->
	<div data-options="region:'center'" style="margin: 0px; padding: 0px;"
		id="zhutiImg">
		<div id="tabs" style="margin: 0px; padding: 0px">
			<div data-options="iconCls:'icon-22'" title="起始页"
				style="padding: 0 10px; display: block;" id="zhu">
				<div id="formbackground">
					欢迎来到后台管理
				</div>
			</div>
		</div>

	</div>


	<!-- 主体结束 -->



</body>

<script
	src="${pageContext.request.contextPath }/jquery/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jquery/jquery.form.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/adminUi.js"></script>



</html>


<script type="text/javascript">

</script>



