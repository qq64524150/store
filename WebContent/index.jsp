<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="images/title.png" rel="shortout icon"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>格兰蒂名酒网</title>


<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script src="<%=basePath %>js/myjs/index.js"></script>

<link href="<%=basePath %>images/title.png" rel="shortout icon"/>
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/mycss/index.css">
<!-- 加载图片轮播css/js -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-1.7.2.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>

<script type="text/javascript">
jQuery(function($){
$(window).load(function() {
  $('#slider').nivoSlider({
    directionNav: true,
    captionOpacity: 0.4,
    controlNav: true,
    boxCols: 8,
    boxRows: 4,
    slices: 15,
    effect:'random',
    animSpeed: 500,
    pauseTime: 3000 });
  });
});
</script>

</head>
<body>
	<!-- 载入头 -->
	<c:import url="index_head.jsp"></c:import>
	
	
	<!-- 图片轮播 -->
	<div id='imgages'>
		
		<center>
			<div id="slider-wrap">
			
			  <div id="slider" class="nivoSlider">
			  
				  <a href="#" class="nivo-imageLink">
					<img src="images/01.jpg" alt="" title="a"  style="margin-left: -200px;">
				  </a>
				  
				  <a href="#" class="nivo-imageLink">
					<img src="images/02.jpg" alt="" title="b"   >
				  </a>
				  
				   <a href="#" class="nivo-imageLink">
					<img src="images/04.jpg" alt="" title="c"  >
					 </a>
					 
				   <a href="#" class="nivo-imageLink">
					<img src="images/05.jpg" alt=""  title="e"  >
				  </a>
				  
				   <a href="#" class="nivo-imageLink">
					<img src="images/06.jpg" alt=""  title="f"   >
				  </a>
			  </div>
			</div>
		</center>
		
	</div>
	
	
</body>
</html>