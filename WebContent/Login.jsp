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
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="<%=basePath %>/bootstrapcss/bootstrap.min.css">

<title>用户登录</title>
</head>
<body>
	<h3>用户登录</h3>
	<div style="width: 300px;">
		<form role="form" >
			<div class="form-group">
				<label for="exampleInputEmail1">请输入用户名/手机号:</label> 
				<input type="email" class="form-control" id="exampleInputEmail1"
					placeholder="请输入用户名/手机号" name="">
			</div>
		<!-- 	<div class="form-group">
				<label for="exampleInputPassword1">请输入密码:</label> 
				<input type="password" class="form-control" id="exampleInputPassword1"
					placeholder="请输入密码" name="">
			</div> -->
			<div class="form-group">
				<label for="exampleInputPassword1">请输入验证码:</label> 
				<input type="password" class="form-control" id="exampleInputPassword1"
					placeholder="请输入验证码" name="">
			</div>
			<button type="button" class="btn btn-default" id="go">登录</button>
			<button type="button" class="btn btn-default" id="enroll">注册</button>
		</form>
	</div>
	
	
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="<%=basePath %>/jquery/jquery-2.2.3.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=basePath %>/bootstrap/bootstrap.min.js"></script>

</body>
</html>
<script type="text/javascript">	
	$("#go").click(function(){
		$.post("test/go","",function(data){
			alert(data)
		});
	});
	
	
</script>
	

