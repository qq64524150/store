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
<script src="<%=basePath %>/jquery/jquery-2.2.3.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form method="post"   action="go/addUser" >  
 	 <input  type="text" name="uname"/>  
  	<input type="file" name="file" />  
   	<input type="file" name="file" />  
   	<input type="file" name="file" />  
   	<input type="file" name="file" />  
   	<input type="file" name="file" />   
   	<input type="button" value="提交" id="t"/>  
 	 </form> 
</body>
</html>
<script type="text/javascript">
	$("#t").click(function(){
		$.get("go/addUser?uname=123","",function(data){
			alert(data)
		});
	});
</script>
