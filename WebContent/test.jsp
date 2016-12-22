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
<br>
<center>
<div id="slider-wrap">
  <div id="slider" class="nivoSlider">
	  <a href="#" class="nivo-imageLink">
		<img src="images/01.jpg" alt="" title="a" width="990" height="334">
	  </a>
	  <a href="#" class="nivo-imageLink">
		<img src="images/02.jpg" alt="" width="990" title="b"  height="334" >
	  </a>
	   <a href="#" class="nivo-imageLink">
		<img src="images/02.jpg" alt="" width="990" title="b"  height="334" >
	  </a>
  </div>
</div>
</center>
<!-- /slider -->
<br>

</body>
</html>