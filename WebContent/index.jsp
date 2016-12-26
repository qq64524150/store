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
<script type="text/javascript" src="js/script.js"></script>
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
#container{
	width: 100%;
	height: 240px;;
	overflow: hidden;
}
#container2,#container3,#container4,#container5 {
	width: 100%;
	height: 450px;;
	overflow: hidden;
}


.sections, .section{
	height: 100%;
}



#container, .sections,#container2,#container3,#container4,#container5 {
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
	
	<!-- 这是公告图 -->
	<div id="indexBulletin">
		
	</div>
	
	<!-- 这是热门推荐 -->
	<div class='rmtj' class='DivSize'>
		<!-- 这是热门推荐头 -->
		<div class='rmtj_head'>
			  <span> <img alt="" src="images/jiant.png"></span> 热门推荐
			  <a href="#"><span class='gengd'>更多>></span></a>
		</div>
		
		<!-- 这是热门推荐头左边 -->
		<div class='rmtj_left'>
			<div class='rmtj_left_1'>
				 <ul>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 </ul>
			</div>
			
		</div>
		
		<!-- 这是热门推荐头右边 -->
		<div class='rmtj_right'>
			<div class='rmtj_right_1'></div>
			
			<div class='rmtj_right_2'>
				<!-- 这是热门推荐的图片轮播 -->
				<div id="container2">
					<div class="sections">
						<div class="section" id="section0"><h3></h3></div>
						<div class="section" id="section1"><h3></h3></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 这是葡萄酒馆 -->
	<div class='rmtj'>
		<!-- 这是葡萄酒馆头 -->
		<div class='rmtj_head' style="border-bottom: 2px #0066CC solid;">
			  <span> <img alt="" src="images/jiant.png"></span> 葡萄酒馆
			  <a href="#"><span class='gengd'>更多>></span></a>
		</div>
		
		<!-- 这是葡萄酒馆头左边 -->
		<div class='rmtj_left_zu'>
			<div class='rmtj_left_zu1'>
			
				<div class='rmtj_right_zu1'>
					<!-- 这是葡萄酒的图片轮播 -->
					<div id="container3">
						<div class="sections">
							<div class="section" id="section0"><h3></h3></div>
							<div class="section" id="section1"><h3></h3></div>
						</div>
					</div>
				</div>
			
				<div class='rmtj_right_zu2'></div>
				
			</div>
			
		</div>
		
		<!-- 这是葡萄酒馆头右边 -->
		<div class='rmtj_right_zu'>
			 <ul>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 </ul>
		</div>
	</div>
	
	
	<!-- 这是洋酒 -->
	<div class='rmtj' class='DivSize'>
		<!-- 这是洋酒头 -->
		<div class='rmtj_head' style="border-bottom: 2px #009900 solid;">
			  <span> <img alt="" src="images/jiant.png"></span>洋酒馆
			  <a href="#"><span class='gengd'>更多>></span></a>
		</div>
		
		<!-- 这是洋酒左边 -->
		<div class='rmtj_left'>
			<div class='rmtj_left_1'>
				 <ul>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 </ul>
			</div>
			
		</div>
		
		<!-- 这是洋酒右边 -->
		<div class='rmtj_right'>
			<div class='rmtj_right_1'></div>
			
			<div class='rmtj_right_2'>
				<!-- 这是葡萄酒的图片轮播 -->
				<div id="container4">
					<div class="sections">
						<div class="section" id="section0"><h3></h3></div>
						<div class="section" id="section1"><h3></h3></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 这是啤酒，养生酒 -->
	<div class='rmtj'>
		<!-- 这是啤酒，养生酒头 -->
		<div class='rmtj_head' style="border-bottom: 2px #7A67EE solid;">
			  <span> <img alt="" src="images/jiant.png"></span> 啤酒&养生酒馆
			  <a href="#"><span class='gengd'>更多>></span></a>
		</div>
		
		<!-- 这是啤酒，养生酒左边 -->
		<div class='rmtj_left_zu'>
			<div class='rmtj_left_zu1'>
			
				<div class='rmtj_right_zu1'>
					<!-- 这是啤酒，养生酒的图片轮播 -->
					<div id="container5">
						<div class="sections">
							<div class="section" id="section0"><h3></h3></div>
							<div class="section" id="section1"><h3></h3></div>
						</div>
					</div>
				</div>
			
				<div class='rmtj_right_zu2'></div>
				
			</div>
			
		</div>
		
		<!-- 这是啤酒，养生酒右边 -->
		<div class='rmtj_right_zu'>
			 <ul>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 	<li></li>
				 </ul>
		</div>
	</div>
	
	<!-- 这是品牌展示 -->
	<div id='pingph' class='DivSize'>
		
		<!-- 这是品牌展示头 -->
		<div class='rmtj_head' style="border-bottom: 2px #330000 solid;">
			  <span> <img alt="" src="images/jiant.png"></span> 品牌展示区
			  <a href="#"><span class='gengd'>更多>></span></a>
		</div>
		
		<!-- 这是品牌展示尾 -->
		
		<div id='pingph_2'>
			
			<div class="wrap">
				<div class="pic1 pic">
				</div>
				<div class="pic2 pic">
				</div>
				<div class="pic3 pic">
				</div>
				<div class="pic4 pic">
				</div>
				<div class="pic5 pic">
				</div>
				<div class="pic6 pic">
				</div>
			</div>
		</div>
		
		<!-- 这是第二列 -->
		<div id='pingph_3'>
			<div><p class='pimg'><img alt="" src="images/tj_2_01.jpg"></p></div>
			<div><p class='pimg'><img alt="" src="images/tj_2_02.jpg"></p></div>
			<div><p class='pimg'><img alt="" src="images/tj_2_03.JPG"></p></div>
			<div><p class='pimg'><img alt="" src="images/tj_2_04.jpg"></p></div>
			<div><p class='pimg'><img alt="" src="images/tj_2_05.jpg"></p></div>
		</div>
	</div>
	
	<!-- 底部 -->
	
	<div id='boot_zu' class='DivSize'>
		
		<div id="boot_zu_1">
			<ul>
				<li style="margin-left: 30px;">
					本酒坊承诺
				</li>
				<li>
					<img alt="" src="images/boot_01.png"> 慢就返
				</li>
				<li><img alt="" src="images/boot_02.png"> 免运费</li>
				<li><img alt="" src="images/boot_03.png"> 恒温恒湿仓</li>
				<li><img alt="" src="images/boot_04.png"> 正品保障</li>
				<li><img alt="" src="images/boot_05.png"> 30天退换货</li>
				
			</ul>
		</div>
		<div id="boot_zu_2">
			
			<div id="boot_zu_2_1">
				<ul>
					<li>
						<b><img src="images/newxx.png"/> 新手入门</b>
						
						<p><a href="#">购物保障</a> </p>
						<p><a href="#">服务协议</a></p>
						<p><a href="#">发票说明</a></p>
					</li>
					<li>
						<b><img src="images/cjxx.png"/> 常见问题</b>
						<p><a href="#">红包使用</a> </p>
						<p><a href="#">服务协议</a></p>
						<p><a href="#">兑换码</a></p>
						
					</li>
					<li>
						<b><img src="images/psxx.png"/> 配送说明</b>
						<p><a href="#">配送时间</a> </p>
						<p><a href="#">配送费用</a></p>
						<p><a href="#">配送范围</a></p>
					</li>
					<li>

						<b><img src="images/zfxx.png"/> 支付方式</b>
						<p><a href="#">货到付款</a> </p>
						<p><a href="#">在线支付</a></p>
						<p><a href="#">线下支付</a></p>
					</li>
					<li>

						<b><img src="images/ffxx.png"/> 售后服务</b>
						<p><a href="#">品质保证</a> </p>
						<p><a href="#">退换货政策</a></p>
						<p><a href="#">退换货流程</a></p>
						
					</li>
					<li>

						<b><img src="images/tsxx.png"/> 特色服务</b>
						<p><a href="#">会员俱乐部</a> </p>
						<p><a href="#">企业客户</a></p>
						<p><a href="#">酒坊社区</a></p>
						
					</li>
				</ul>
				
			</div>
			<div id="boot_zu_2_2">
				<ul>
					<li style="font-size: 18px ;font-weight: 600;">格兰蒂官方微信</li>
					<li style="margin-top: 5px ;">关注微信，更多优惠触手可及。</li>
					<li style="margin-top: 10px ;">
						<img alt="" src="images/erw.png" style="width: 120px;height: 120px; ">
					</li>
				</ul>
			</div>
			
		</div>
		
	</div>
	
	<div>
		<div style="text-align: center;">
			<c:import url="bottom.jsp"/>
		</div>
	</div>
	
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
  	/* 这是商品类型介绍的图片轮播 */
	$("#container2,#container3,#container4,#container5").PageSwitch({
		direction:'horizontal',
		easing:'ease-in',
		duration:1000,
		autoPlay:true,
		loop:'false'
	});
	
  </script>
</html>