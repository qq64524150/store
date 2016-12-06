<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="images/title.png" rel="shortout icon"/>
<script src="<%=basePath%>/jquery/jquery-2.2.3.min.js"></script>
<link rel="stylesheet"
	href="<%=basePath%>/bootstrapcss/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>/css/mycss/register.css">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<script src="<%=basePath%>/jquery/jquery.js"></script>
<script src="<%=basePath%>/jquery/jquery.validate.js"></script>
<title>用户注册</title>
</head>

<body>
	<!-- 导入头页面 -->
	<c:import url="head.jsp"></c:import>

	<div id="zhongjian">
		<div id="zhong_one">
			<img alt="" src="images/zc_bg.png">
		</div>
		
		<div id="zc">
			<div id="zhuti_bao">
				<div id="tou_left_1">
					<span id="tou_left">快速注册</span>
				</div>
				<div>
					<span id="tou_right">已经有账号？请点击<a href="Login.jsp">这里</a></span>
				</div>
				<hr />
				<div id="zhuti">
					<form method="post" id="froms">
						<div class="input-group">
							<span class="input-group-addon"><span
								class='glyphicon glyphicon-phone'></span></span> <input type="text"
								class="form-control" id="phone" placeholder="请输入手机号"
								name="uphone">
						</div>

						<div id="phoneOne" class="reg"></div>


						<div class="input-group">
							<span class="input-group-addon"><span
								class='glyphicon glyphicon-lock'></span></span> <input type="password"
								class="form-control" id="exampleInputPassword1"
								placeholder="请输入密码">
						</div>

						<div id="pwd" class="reg"></div>


						<div class="input-group">
							<span class="input-group-addon"><span
								class='glyphicon glyphicon-lock'></span></span> <input name="upwd"
								type="password" class="form-control" id="exampleInputPassword2"
								placeholder="确认密码">
						</div>

						<div id="pwd2" class="reg"></div>


						<div>
							<div>
								<div class="input-group">
									<input type="text" class="form-control" placeholder="验证码"
										name="phoneCode"> <span class="input-group-btn">
										<button class="btn btn-default go" type="button"
											id="btnSendCode">获取验证码</button>
									</span>
								</div>
							</div>
						</div>
						<div id="yan" class="reg"></div>

						<div id="tiankuang">
							<input id='tiao' type="checkbox" checked="checked" />我已满18周岁并接受
							<a href="#">《波多尔服务条款》</a>
						</div>

						<div id="tiaoKunag" class="reg" style="display: none;"></div>

						<input type="button" value="立即注册" id="tijiao" />

					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 导入底部页面 -->
	<c:import url="bottom.jsp"></c:import>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="<%=basePath%>/jquery/jquery-2.2.3.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="<%=basePath%>/bootstrap/bootstrap.min.js"></script>
	<script src="<%=basePath%>/js/myjs/register.js"></script>
</body>
</html>

