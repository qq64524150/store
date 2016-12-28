<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="<%=basePath %>/js/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"href="<%=basePath %>css/mycss/commInfo.css">
<link href="<%=basePath%>css/cloud-zoom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/cloud-zoom.1.0.2.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<!-- 载入头 -->
	<c:import url="../../index_head.jsp"></c:import> 
	
	<%-- <c:forEach items="${sessionScope.commInfoById}" var="w">
		${w[0].pname }
	</c:forEach> --%>
	
	
	<!-- 这是商品的图片展示区 -->
	<div id="info_imgquy" class='DivSize'>
		
		<!-- 图片 -->
		<div id='comInfoImg'>
		
			<div class="zoom-section">    	  
				<div class="zoom-small-image">
					<a href='<%=basePath%>images/big1.JPG' class = 'cloud-zoom' id='zoom1' rel="adjustX:10, adjustY:-4"><img src="<%=basePath%>images/s1.JPG" alt=''  />
					</a>
				</div>
				<div class="zoom-desc">
			
					<p>
						<a href='<%=basePath%>images/big1.JPG' class='cloud-zoom-gallery' title='Red' rel="useZoom: 'zoom1', smallImage: '<%=basePath%>images/s1.JPG' "><img class="zoom-tiny-image" src="<%=basePath%>images/min1.JPG" alt = "Thumbnail 1"/></a>
						<a href='<%=basePath%>images/big2.JPG' class='cloud-zoom-gallery' title='Blue' rel="useZoom: 'zoom1', smallImage: ' <%=basePath%>images/s2.JPG'"><img class="zoom-tiny-image" src="<%=basePath%>images/min2.JPG" alt = "Thumbnail 2"/></a>                  
						<a href='<%=basePath%>images/big3.JPG' class='cloud-zoom-gallery' title='Blue' rel="useZoom: 'zoom1', smallImage: '<%=basePath%>images/s3.JPG' "><img class="zoom-tiny-image" src="<%=basePath%>images/min3.JPG" alt = "Thumbnail 3"/></a>
					</p>
					
				</div>
			</div>
			
		</div>	
			
			
			
		<!-- 文字 -->
		<div id='comInfotext'>
		
			
		</div>	
			
		<!-- 其他商品展示 -->
		<div id='comInfocomm'>
		</div>		
			
			
			
	</div>
	
<script src="<%=basePath %>js/myjs/commInfo.js"></script>	

</body>
</html>
