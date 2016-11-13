<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="<%=basePath%>/bootstrapcss/bootstrap.min.css">

<title>用户登录</title>
</head>
<body>
	<h3>用户登录</h3>
	<div style="width: 300px;">
		<form role="form" id="froms" class="form-inline">
			<div class="form-group">
				<label for="exampleInputEmail1">请输入用户名/手机号:</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					placeholder="请输入用户名/手机号" name="mobile">
			</div>
			<!-- 	<div class="form-group">
				<label for="exampleInputPassword1">请输入密码:</label> 
				<input type="password" class="form-control" id="exampleInputPassword1"
					placeholder="请输入密码" name="">
			</div> -->
			<div class="form-group">
				<label for="exampleInputPassword1">请输入验证码:</label> <br /> <input
					type="text" class="form-control" id="exampleInputPassword1"
					placeholder="验证码" name="auth" style="width: 80px"> <input
					id="btnSendCode" type="button" value="发送验证码"
					onclick="sendMessage()" />
			</div>
			<div>
				<button type="button" class="btn btn-default" id="go">登录</button>
				<button type="button" class="btn btn-default" id="enroll">注册</button>
			</div>
		</form>
	</div>
	<!-- 加载另一 个页面 -->
	<%-- <%@ include file="" %>
	<c:import url=""></c:import> --%>
	

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="<%=basePath%>/jquery/jquery-2.2.3.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="<%=basePath%>/bootstrap/bootstrap.min.js"></script>

</body>
</html>
<script type="text/javascript">	
	/* $("#go").click(function(){
		var pamth = $("#froms").serialize();
		alert(pamth)
		$.post("test/go",pamth,function(data){
			alert(data)
		});
	}); */
	
	
	var InterValObj; //timer变量，控制时间
	var count = 60; //间隔函数，1秒执行
	var curCount;//当前剩余秒数
	function sendMessage() {
		 curCount = count;
		 //设置button效果，开始计时
	     $("#btnSendCode").attr("disabled", "true");
	     $("#btnSendCode").val(curCount + " 后重新获取");
	  	 //启动计时器，1秒执行一次
	     InterValObj = window.setInterval(SetRemainTime, 1000); 
	  	 //获取表单输入的信息
	     var pamth = $("#froms").serialize();
		 //向后台发送表单输入的信息
		 $.post("test/go",pamth,function(data){
			alert(data)
		 });
	}
	
	//timer处理函数
	function SetRemainTime() {
         if (curCount == 0) {                
             window.clearInterval(InterValObj);//停止计时器
             $("#btnSendCode").removeAttr("disabled");//启用按钮
             $("#btnSendCode").val("重新获取");
         }
         else {
             curCount--;
             $("#btnSendCode").val(curCount + " 后重新获取");
         }
     }
	
</script>


