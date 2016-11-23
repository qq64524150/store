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
<script src="<%=basePath%>/jquery/jquery-2.2.3.min.js"></script>
<link rel="stylesheet" href="<%=basePath%>/bootstrapcss/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>/css/mycss/register.css">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<script src="<%=basePath%>/jquery/jquery.js"></script>
<script src="<%=basePath%>/jquery/jquery.validate.js"></script>
<title>用户注册</title>
</head>

<body>
	<div id="zhuti">
		<form method="post" id="froms">
			<table  width="350" >
				<tr>
					<td style="text-align: center;" colspan="2">
						快速注册
					</td>
				</tr>
				<tr>
					<td class="zi">
							手机号码： 
					</td>
					<td>
						<input
							type="text" class="form-control" id="phone"
							placeholder="请输入手机号" name="uphone">
					</td>
				</tr>
				<tr>
					<td colspan="2" id="phoneOne" class="reg"></td>
				</tr>
				
				
				<tr>
					<td class="zi">
							设置密码：
					</td>
					<td>
						<input type="password" class="form-control" id="exampleInputPassword1" placeholder="请输入密码">
					</td>
				</tr>
				<tr>
					<td colspan="2" id="pwd" class="reg"></td>
				</tr>
				
				
				<tr>
					<td class="zi" >
							确认密码：
					</td>
					<td>
						<input name = "upwd" type="password" class="form-control" id="exampleInputPassword2" placeholder="确认密码">
					</td>
				</tr>
				<tr>
					<td colspan="2" id="pwd2" class="reg"></td>
				</tr>
				
				
				<tr>
					<td style="width: 100px" class="zi">
							验证码：
					</td>
					<td>
						<!-- <input type="password" class="form-control" id="yan" placeholder="验证码"> -->
						<!-- <div class="yan" id="yanzm"><input id="btnSendCode" type="button" value="发送验证码" onclick="sendMessage()"></div> -->
						<!--  <span class="input-group-btn">
		        			<button class="btn btn-default" type="button">Go!</button>
		     			 </span> -->
		     			 
		     			 
		     			 <div>
							  <div style="width: 251px">
							    <div class="input-group">
							      <input type="text" class="form-control" placeholder="验证码" name="phoneCode">
							      <span class="input-group-btn">
							        <button class="btn btn-default go" type="button"  id="btnSendCode">获取验证码</button>
							      </span>
							    </div>
							  </div>
							</div>
								     			 
					</td>
				</tr>
				<tr>
					<td colspan="2" id="yan" class="reg"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
						<input type="button" value="立即注册" id="tijiao"/>
					</td>
				</tr>
			
		
			</table>
			
		</form>
	</div>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="<%=basePath%>/jquery/jquery-2.2.3.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="<%=basePath%>/bootstrap/bootstrap.min.js"></script>
	<script src="<%=basePath%>/js/myjs/register.js"></script>
</body>
</html>

