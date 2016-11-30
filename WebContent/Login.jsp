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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="<%=basePath%>/bootstrapcss/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>/css/mycss/login.css">
<title>用户登录</title>
</head>
<body>
	<!-- 导入头页面 -->
	<c:import url="head.jsp"></c:import>


	<div id="login_zhong">
		<div id="login_img">
			<a href="#"><img alt="" src="images/login_bg.jpg" id="login_bg"></a>
		</div>
		<div id="go">
			<div id="login_go">
				<span>欢迎登录</span>
			</div>
			<hr>
			<div id="moreng">
				<div id="daohan">
					<div class="xuanz" id="one">手机动态密码登录</div>
					<div id="two">普通方式登录</div>
				</div>

				<div id="zhuti" style="display: block;">
					<form method="post" id="froms">

						<div class="input-group">
							<span class="input-group-addon"><span
								class='glyphicon glyphicon-phone'></span></span> <input type="text"
								class="form-control" id="phone" placeholder="请输入手机号"
								name="uphone" value="13217595955">
						</div>
						<div id="phoneOne" class="reg"></div>

						<div>
							<div>
								<div class="input-group">
									<input type="text" class="form-control" placeholder="验证码"
										name="code" id="code"> <span class="input-group-btn">
										<button class="btn btn-default go" type="button"
											id="btnSendCode">获取验证码</button>
									</span>
								</div>
							</div>
						</div>

						<div id="yan" class="reg"></div>

						<input type="button" value="登录" id="login" class="log" />
						<!-- <input type="button" value="注册" id="register" class="log"/> -->
						<hr />
						<!-- 尾巴 -->
						<div class="botton">
							<div>还没有账号？请点击<a href="register.jsp">这里</a></div>
						</div>
					</form>

				</div>

			</div>


			<div id="zhuti2" style="display: none;">
				<div id="tis" style="font-size: 10px; display: none;"></div>
				<form method="post" id="froms2">
					<div class="input-group">
						<span class="input-group-addon"><span
							class='glyphicon glyphicon-user'></span></span> <input type="text"
							class="form-control" id="phone2" placeholder="请输入用户名/邮箱"
							name="uname" value="13217595955">
					</div>
					<div id="phoneOne2" class="reg"></div>


					<div class="input-group">
						<span class="input-group-addon"><span
							class='glyphicon glyphicon-lock'></span></span> <input type="password"
							class="form-control" id="exampleInputPassword1"
							placeholder="请输入密码" name="upwd" value="admins">
					</div>
					<div id="pwd" class="reg"></div>


					<div>
						<div>
							<div class="input-group">
								<input type="text" class="form-control" placeholder="验证码"
									name="getImg" id="code2"> <span
									class="input-group-btn vodeImg"> <img alt=""
									src="tovcode/vocde?getImg=getImg" id="img">
								</span>
							</div>
						</div>


					</div>
					<div id="yan2" class="reg"></div>


					<input type="button" value="登录" id="login2" class="log" />
					<!-- <input type="button" value="注册" id="register" class="log"/> -->
					<!-- 尾巴 -->
					<hr />
					<div class="botton">
						<div>还没有账号？请点击<a href="register.jsp">这里</a></div>
					</div>

				</form>

			</div>
		</div>
	</div>
	<!-- 导入底部页面 -->
	<c:import url="bottom.jsp"></c:import>

	<!-- <img alt="" src="tovcode/vocde">
	 -->
	<!-- 加载另一 个页面 -->
	<%-- <%@ include file="" %>
	<c:import url=""></c:import> --%>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="<%=basePath%>/jquery/jquery-2.2.3.min.js"></script>
	<script src="<%=basePath%>/js/myjs/login.js"></script>
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

	/* var InterValObj; //timer变量，控制时间
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
	
	$.get("test/gotest","",function(data){
		
	})
	 */
</script>


