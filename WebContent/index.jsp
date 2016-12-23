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
<link href="<%=basePath %>images/title.png" rel="shortout icon"/>
<!-- 加载图片轮播css/js -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-1.7.2.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script src="<%=basePath %>js/lrtk.js"></script>
<script src="<%=basePath %>js/myjs/index.js"></script>
<link rel="stylesheet"href="js/dist/pageSwitch.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/mycss/index.css">

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
<style>
#container {
	width: 100%;
	height: 240px;;
	overflow: hidden;
}

.sections, .section {
	height: 100%;
}

#container, .sections {
	position: relative;
}

.section {
	background-color: #000;
	background-size: cover;
	background-position: 50% 50%;
	text-align: center;
	color: white;
}

#section0 {
	background-image: url('images/left01.jpg');
}

#section1 {
	background-image: url('images/left02.jpg');
}


</style>



</head>
<body style="margin: 0px auto;">
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
	
	<!-- 中间 -->
	<div id='index_conter'>
		<div id='left_img'>
			<img alt="" src="images/index_left_img.jpg">	
		</div>
		
		<div id="index_coter_1" class='DivSize'>
			
			<!-- 左边 -->
			<div id="index_coter_left">
				<!-- 上图 -->
				<div id='index_left_img'>
				
					<div id="container">
						<div class="sections">
							<div class="section" id="section0"><h3></h3></div>
							<div class="section" id="section1"><h3></h3></div>
						</div>
					</div>
						
					
				
				</div>
				
				<!-- 下公告 -->
				<div id='index_left_gg'>
					<div id="index_left_gg_1">
						<ul>
							<li class="index_jinguo">促销活动</li>
							<li>最新活动</li>
						</ul>
					</div>
					
					<div id="test_left">
						<ul>
							<li class='top_left'>促销活动</li>
							<li>最新活动</li>
						</ul>
					</div>
				</div>
				
			</div>
				
			<!-- 右边 -->
			<div id="index_conter_right">
				<!-- 二级导航栏 -->
				
				<div id='index_conter_right_1'>
					<ul id=idNum class=hdnum>
					  <li>
					  	<div class='hean_index'>人气抢购</div>
					  	<div class='head_index_tile'>百块超特惠</div>
					  </li>
					  <li>
					  	<div class='hean_index'>猜你喜欢</div>
					  	<div class='head_index_tile'>购你喜欢</div>
					  </li>
					  <li>
					  	<div class='hean_index'>新品</div>
					  	<div class='head_index_tile'>最佳新品</div>
					  </li>
					  
					  <li>
					  	<div class='hean_index'>名庄推荐</div>
					  	<div class='head_index_tile'>限量知名酒庄</div>
					  </li>
					 
					  <li>
					 	
					 	<div class='hean_index'>精品闪购</div>
					  	<div class='head_index_tile'>优质品牌精选</div> 	
					  	
					  </li>
					</ul>
					
				</div>
				
				
				
				<!-- 商品图片展示 -->
				
				<!-- 代码 开始 -->      
				<div style="HEIGHT: 330px; OVERFLOW: hidden;" id=idTransformView>
					<ul id=idSlider class=slider>
							<!-- 这是人气抢购 -->
						  <div style="POSITION: relative">
						 	
						 		<div class='commImg'>
						 			<ul>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 			</ul>	
						 			
						 		</div>
						 	
						  </div>
						  
						  
						  <!-- 这是猜你喜欢 -->
						  <div style="POSITION: relative">
						  
						  		<div class='commImg'>
						 			<ul>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 			</ul>	
						 			
						 			
						 		</div>
						  </div>
						  <!-- 这是新品 -->
						  <div style="POSITION: relative">
						  		<div class='commImg'>
						 			
						 			<ul>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 			</ul>	
						 			
						 		</div>
						  	
						  </div>
						  <!-- 这是名庄推荐 -->
						  <div style="POSITION: relative">
						  		
						  		<div class='commImg'>
						 			<ul>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 			</ul>		
						 			
						 			
						 		</div>
						  	
						  </div>
						  <!-- 精品闪购 -->
						  <div style="POSITION: relative">
						  		
						  		<div class='commImg'>
						 			<ul>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 				<li></li>
						 			</ul>	
						 		</div>
						  </div>
					</ul>
				</div>
				
			</div>
			
			
		</div>
		<div id='left_img2'>
			<img alt="" src="images/index_left_img.jpg">	
		</div>
		
	</div>
	
	<!-- 底部 -->
	
<script src="js/dist/pageSwitch.min.js"></script>	
</body>

<script language=javascript>
  mytv("idNum","idTransformView","idSlider",340,5,true,5000,5,true,"onmouseover");
  //按钮容器aa，滚动容器bb，滚动内容cc，滚动宽度dd，滚动数量ee，滚动方向ff，延时gg，滚动速度hh，自动滚动ii，
 	
	$("#container").PageSwitch({
		direction:'horizontal',
		easing:'ease-in',
		duration:1000,
		autoPlay:true,
		loop:'false'
	});
</script>
  	
  </script>
</html>