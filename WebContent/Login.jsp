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
<link rel="stylesheet" href="<%=basePath%>/css/mycss/login.css">
<title>用户登录</title>
</head>
<body>
	<div id="go">
		<h3>用户登录</h3>
		
		<div id="moreng">
			<div id="daohan">
				<div class="xuanz" id="one">手机登录</div>
				<div id="two">用户名/邮箱登录</div>
			</div>
			
		
			<div id="zhuti" style="display: block;">
				<form method="post" id="froms">
					<table  width="350" id="tab">
						<tr>
							<td class="zi">
									手机号码： 
							</td>
							<td>
								<input
									type="text" class="form-control" id="phone"
									placeholder="请输入手机号" name="uphone" value="13217595955">
							</td>
						</tr>
						<tr>
							<td colspan="2" id="phoneOne" class="reg"></td>
						</tr>
						<tr style="margin-top: 100px">
							<td style="width: 100px" class="zi">
									验证码：
							</td>
							<td>
				     			<div>
								  <div style="width: 251px">
								    <div class="input-group">
								      <input type="text" class="form-control" placeholder="验证码" name="code" id="code">
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
								<input type="button" value="登录" id="login" class="log"/>
								<!-- <input type="button" value="注册" id="register" class="log"/> -->
							</td>
						</tr>
					
				
					</table>
					
				</form>
			</div>
			
		</div>	
		<div id="zhuti2" style="display: none;">
			<div id="tis" style="font-size: 10px;display: none;">
			</div>
			<form method="post" id="froms2">
				<table  width="350" >
					<tr>
						<td class="zi">
								用户名/邮箱： 
						</td>
						<td>
							<input
								type="text" class="form-control" id="phone2"
								placeholder="请输入用户名/邮箱" name="uname" value="13217595955">
						</td>
					</tr>
					<tr>
						<td colspan="2" id="phoneOne2" class="reg"></td>
					</tr>
					
					<tr>
						<td class="zi">
								密码：
						</td>
						<td>
							<input type="password" class="form-control" id="exampleInputPassword1" placeholder="请输入密码" name="upwd" value="admins" >
						</td>
					</tr>
					
					<tr>
						<td colspan="2" id="pwd" class="reg"></td>
					</tr>
					
					<tr>
						<td style="width: 100px" class="zi">
								验证码：
						</td>
						<td>
			     			<div>
							  <div style="width: 251px">
							    <div class="input-group">
							      <input type="text" class="form-control" placeholder="验证码" name="getImg" id="code2">
							      <span class="input-group-btn vodeImg">
							      	 <img alt=""  src="tovcode/vocde?getImg=getImg" id="img" >
							      </span>
							    </div>
							  </div>
							</div>
									     			 
						</td>
					</tr>
					
					
					<tr>
						<td colspan="2" id="yan2" class="reg"></td>
					</tr>

					<tr>
						<td colspan="2" style="text-align: center;">
							<input type="button" value="登录" id="login2" class="log"/>
							<!-- <input type="button" value="注册" id="register" class="log"/> -->
						</td>
					</tr>
					<tr>
						<td colspan="2" id="trues" class="reg"></td>
					</tr>
			
				</table>
				
			</form>
			
			<div id="botton">
			</div>
		</div>
	</div>			
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


