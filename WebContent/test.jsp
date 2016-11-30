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
<title>test</title>
</head>
<style>
	/* 清空li和p自带属性 */
	ul,p{
		margin: 0px ;
		padding: 0px ;
	}
	ul li{
		/* 清空li自带属性--点 */
		list-style:none;
		
		width: 700px ;
		height: 100px ;
		background: #FFF0F5 ;
		margin-top: 5px ;
	}
	#ul_1{
		line-height: 100px ;
		
	}
	#ul_1 label{
		margin-left: 10px;
	}
	
	#ul_2 p,#ul_3 p{
		float: left;
	}
	#ul_img{
		width: 100px ;
		height: 100px ;
		background: #fff;
		margin-left: 10px;
	}
	
	#ul_3 p{
		margin-left: 10px;
		line-height: 100px ;
	}
	#ul_nic input{
		margin-left: 30px;
		margin-top: 40px;
	}
</style>
<body>
	<ul>
		<li id="ul_1">
			<label>这是里是第一行</label>
		</li>
		<li id="ul_2">
			<p >这是头像</p>
			<p id="ul_img">这是图片</p>
		</li>
		<li id="ul_3">
			<p>昵称</p>
			<p id="ul_nic"><input></p>
		</li>
		<li></li>
	</ul>
	
	
</body>
</html>