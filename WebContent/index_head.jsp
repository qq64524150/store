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

<link rel="stylesheet"
	href="<%=basePath%>bootstrapcss/bootstrap.min.css">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<script src="<%=basePath%>jquery/jquery.js"></script>
<script src="<%=basePath%>jquery/jquery.validate.js"></script>
<%-- <script src="<%=basePath %>/jquery/jquery-2.2.3.min.js"></script> --%>
<title>Insert title here</title>
</head>

<style>
a{
	color: black;
	text-decoration:none;
	border: 0 ;
}
body{
	
	margin: 0px ;
	padding: 0px ;
	font-size: 12px ;
	font-familly:微软雅黑;
	position: relative;
}
#head_one {
	overflow:hidden;
	margin-top:20px ;
	height: 100px;
/* 	border-bottom: 3px solid #EE0000;
 */
 }

#head_left {
	width: 300px;
	height: 80px;
	margin: 10px;
	margin-left: 20px;
	float: left;
}

#head_reght {
	width:200px ;
	height: 60px;
	margin: 20px;
	margin-right:90px ;
	float: left;
}

#head_center {
	width: 560px;
	
	height: 68px;
	margin: 25px auto;
	float: left;
}

#head_center div{
	height: 35px ;
	float: left;
	text-align: center;
}

#ss{
	width: 100px ;
	height: 35px ;
	line-height: 35px ;
	background:#CC0000;
	color:#fff ;
	font-size:16px ;
	font-weight:700 ;
	/* border: 2px #CC0000 solid;
	border-left: 1px #CC0000 solid; */
}
#ss:HOVER{
	background: #990000;
	cursor:pointer;
}
#input_text{
	width:450px ;
	height: 35px ;
	font-size:16px ;
	padding-left:10px;
	border: 2px #CC0000 solid;
	border-right: 1px #CC0000 solid;
}
#head_center_bot{
	margin-top:3px;
	width: 100% ;
	height: 25px ;
	float:left;
	
}

/* 头开始 */
#head_w{
	background: #F5F5DC ;
	width:100%;
	height: 28px;
	color: #D6D6D6;
	overflow:hidden;
	position: relative;
	z-index: 1000 ;
	
}
#head_w_left a{
	color: #D6D6D6;
}
#head_w_left a:HOVER{
	color: #CC0000;
}
#head_w_left{
	float: left;	
	line-height: 28px ;
	margin-left: 25px ;
}

#head_w_left span{
	margin-left: 10px ;
}

#head_w_riget{
	width: 720px ;
	height:25px ;
	float: right;
	margin-right: -40px ;
	cursor: pointer ;
}

#head_w_riget ul li a:HOVER{
	color: #CC0000;
}

#head_w_riget ul li{
	text-align:center;
	width: 86px ;
}

#head_w_riget a{
	color: #D6D6D6;
}

#head_gg_daoh a:HOVER{
	color: #CC0000;
}

/* 经过背景颜色 */
.head_gg_jinguo{
	background: #fff ;
}

/* 显示 */
.head_gg_xians{
	display: block;
}

/* 隐藏 */
.head_gg_yinc{
	display: none;
}

.head_gg_daoh{
	width:100%;
	height:90px ;
	border-bottom: 1px #EEEED1 solid;
}
.head_gg_daoh a{
	margin-top: 10px ;
	margin-left: 20px ;
}

#erwm_1 img{
	width: 86px ;
	height: 86px ;
}


/* li 取消点 */
li{
	list-style-type:none;
	margin: 0px ;
	padding: 0px ;
}	

#head_w_riget ul li{
	list-style-type:none;
	float: left;
	margin-right:15px ;	
	line-height: 28px ;
	
}

#head_img{
	width:100% ;
	overflow:hidden;
	height: 76px ;
	
}
#head_img img{
	margin-left: -270px ;
}

/* 导航开始 */
#daoHao_1{
	width: 100% ;
	height: 38px ;
	background: #990000;
	overflow: hidden;
}


#daoHao_1 ul {
	margin-left: 90px ;
}
/* #daoHao_1 ul li:HOVER{
	background: #660000 ;
} */
#daoHao_1 ul li:HOVER{
	background: #FF0000 ;
}

#daoHao_1 ul{
	width: 1400px ;
}

#daoHao_1 ul li{
	cursor: pointer  ;
	float: left;
	width: 140px ;
	height: 100% ;
	line-height: 38px ;
	text-align:center;
	font-size:15px ;
	color:#fff ;
	font-weight:600 ;
	
}



/* 鼠标经过样式 */
.goByLi{
	
	background: #CC0000 ;
}
/* 鼠标点击样式*/
.clickLi{
	
	background: #FF0000 ;
}

/* 商品分类 */
#type_comm a:HOVER{
	color: #990000 ;
}
#type_comm{
	
	position: absolute;
	left: 90px;
	/* overflow:hidden; */
	z-index: 10000 ;
	background: #fff ;
	
}
#type_comm_1{
	width: 210px ;
	height: 490px ;
	background:#fff ;
	position: absolute;
}
#type_comm_2{
	width: 730px ;
	height: 490px ;
	left:210px ;
	position: absolute;
}
.type_comm_2{
	width: 730px ;
	height: 490px ;
	position: absolute;
	cursor: pointer  ;
}




.type_comm_head{
	width: 210px ;
	height: 104px ;
	font-size: 14px ;
	line-height: 34px ;
	font-weight: 600; 
}
.type_comm_head img{
	margin-top: -2px ;
	margin-left: 6px ;
}

.type_comm_head_1{
	cursor: pointer  ;
	width: 210px ;
	height: 90px ;
	
	text-align:left;
}
#type_comm_head_1 a,#type_comm_head_3 a,#type_comm_head_2 a,#type_comm_head_4 a{
	margin-left: 15px ;
	font-weight: 200 ;
	font-size: 13px ;
}

/* 这是 */
.z-index_right1{
	z-index: 1 ; 
	display: block;
}
.index_right2{
	display: none;
}

/* 左边样式 鼠标经过 */
.type_comm_head_left{
	 background: #F8F8FF ; 
	cursor: pointer ;
	border-left: 4px #990000 solid;
}




/* 这是猜你喜欢 */
#type_comm_2_1_1_left,#type_comm_2_2_1_left,#type_comm_2_3_1_left,#type_comm_2_4_1_left{
	width: 100px ;
	height: 100% ;
	background: #F8F8FF ;
	float: left;
	font-size: 12px ;
	font-weight: 600 ;
}
#type_comm_2_1_1_conter,#type_comm_2_2_2_conter,#type_comm_2_4_2_conter,#type_comm_2_4_2_conent{
	width: 430px ;
	height: 100% ;
	background:#fff ;
	float: left;
}
#type_comm_2_1_1_right,#type_comm_2_2_3_right,#type_comm_2_4_3_right,#type_comm_2_4_3_right{
	width: 200px ;
	height: 100% ;
	background:#fff ;
	float: left;
}
#type_comm_2_3_2_right{
	width: 600px ;
	height: 100% ;
	background:#fff ;
	float: left;
}
#type_comm_2_3_2_right a{
	margin-left: 10px ;	
}

#type_comm_2_1_1_right img{
	margin-left: -30px ;
}
#type_comm_2_1_1_left ul li,#type_comm_2_2_1_left ul li,#type_comm_2_3_1_left ul li,#type_comm_2_4_1_left ul li{
	width: 100% ;
	height: 30px ;
	text-align:right;
	margin-top: 20px ;
	line-height: 30px ;
	margin-left: -20px ;
	
}

#type_comm_2_4_3_right img{
 	margin-left: -30px ;
}



#type_comm_2_1_1_conter ul li,#type_comm_2_2_2_conter ul li,#type_comm_2_3_2_right ul li,#type_comm_2_4_2_conent ul li{
	width: 100% ;
	height: 30px ;
	text-align:left;
	margin-top: 20px ;
	line-height: 30px ;
	margin-left: 10px ;
	
}

/* 这是猜你喜欢 */
#type_comm_2_1_1_conter ul li a{
	margin-left: 12px ;
	color: black;
	font-size: 13px ;
	
}
/* 这是商品品牌 */
#type_pp a,#leix a,#gjia a,#yuan a,#type_comm_2_4_2_conent a {
	font-size: 13px ;
	color: black;
	margin-left: 11px ;

}


/* 设置字体的颜色 */
.re{
	
	background: #FFCC00 ;
	padding:2px ;
	
}


/* 分类右边展示 */
#type_comm_2_right{

	width: 200px ;
	height:400px ; ;
	z-index:10000 ;
	position: absolute;
	right: 30px ;
	
}
#type_comm_2_right img{

	cursor: pointer ;
	margin:20px auto ;
	
}

/* 设置最小宽度 */
#head_one,#head_w,.DivSize,#daoHao_1,body{
	width: 100%;
	min-width: 1000px;
	width: expression_r(document.body.clientWidth < 1000 ? "1200px" : "auto");
}

/* 设置最大宽度 */
#head_one,#head_w,.DivSize,#daoHao_1,body{
	width: 100%;
	max-width: 1400px;
	width: expression_r(document.body.clientWidth > 1400 ? "1400px" : "auto");
}

/* 同时设置最大宽度和最小宽度 */
#head_one,#head_w,.DivSize,#daoHao_1,body{
	width: 100%;
	min-width: 1300px;
	max-width: 1400px;
	width: expression_r(Math.max ( 1200, Math.min ( 1200, document.body.offsetWidth
		* 0.99))+"px");
}
</style>


<body style="margin: 0px auto;">
	
	<div id='head_w'>
		
		<div id='head_w_left'>
		    <span>欢迎来到格兰蒂！</span>
			<span>请<a href="<%=basePath%>/Login.jsp">登录</a></span>
			<span><a href="<%=basePath%>/register.jsp">免费注册</a></span>
		</div>

	   <div id='head_w_riget'>
	   
	   		<ul >
			    <li style="text-align: right;"><a href="#">我的酒坊</a></li>
			    <li><span class='glyphicon glyphicon-shopping-cart' style="color: #FF4040;font-size: 11px;"></span> <a href="#">购物车0件</a></li>
			    <li class='hwad_gg_0'><span class='glyphicon glyphicon-phone' style="color: #FF4040;font-size: 11px;"></span> <a href='#'>手机逛酒坊</a></li>
			    <li class='hwad_gg_1'><span class='glyphicon glyphicon-list' style="color: #FF4040;font-size: 11px;"></span> 网站导航 </li>
			    <li class='hwad_gg_2'><span class="glyphicon glyphicon-user" style="color: #FF4040;font-size: 11px;"></span> 客户服务 <span id='fw_jiant'><a class="glyphicon glyphicon-chevron-up" style="color: #EEE0E5;font-size: 10px;"></a></span></li>
			    <li style="width: 200px; text-align: left;"> 客服热线 :<label style="color: #FF0000">400-666-8888</label></li><!-- 400-666-8888 -->
			</ul>
			
		</div>
		
	</div>
	
	<!-- 这是手机二维码 -->
	<div class='head_gg_yinc' id='erwm' style="
			width: 86px ;
			height: 86px;
			background: #fff ;
			position: absolute;
			right: 392px;">
			
		<div id='erwm_1'>
			<img alt="" src="<%=basePath%>images/erw.png">
		</div>
		
	</div>
					    	
		
	<!-- 这是网站导航 -->
	<div class='head_gg_yinc' id='headdh' style="
			width: 210px ;
			height: 340px;
			background: #fff ;
			position: absolute;
			right: 167px;
			z-index: 20000">
		
		
		<div class='head_gg_daoh'>
		
			<h4 style="margin-left: 20px;">购物</h4>
			<a href='#'>葡萄酒</a>
			<a href='#'>洋酒</a>
			<a href='#'>啤酒</a><br/>
			<a href='#'>保健酒</a>
			<a href='#'>马爹利</a>
			<a href='#'>拉菲</a>
			
		</div>
		
		<div class='head_gg_daoh'>
		
			<h4 style="margin-left: 20px;">活动</h4>
			<a href='#'>进口馆</a>
			<a href='#'>整箱套装</a>
			<a href='#'>清仓</a><br/>
			<a href='#'>团购</a>
			<a href='#'>新品发现</a>
			
		</div >
		
		<div class='head_gg_daoh'>
			<h4 style="margin-left: 20px;">其他</h4>
			<a href='#'>会员中心</a>
			<a href='#'>社区</a>
			<a href='#'>常见问题</a><br/>
			<a href='#'>礼品卡</a>
		</div>
		
		<div style="width: 100%;margin-left: 20px;margin-top: 10px;color: #666;">
			
			<span>咨询电话:400-666-8888</span>
			
		</div>
		
	</div>
	
	<!-- 这是客户服务 -->
	
	<div  class='head_gg_yinc' id='headfw' style="
			width: 86px ;
			height: 100px;
			background: #fff ;
			position: absolute;
			right: 190px;
			">
			
		<ul style="margin-left: 20px;margin-top: 5px;">
		
			<li><a href='#'>常见问题</a></li>
			<li><a href='#'>配送说明</a></li>
			<li><a href='#'>售后服务</a></li>
			
		</ul>
		
	</div>
	
	
	<div id="head_img" class='DivSize'>
		<img alt="" src="<%=basePath%>images/head_img.jpg">
	</div>
	
	<div id="head_one">
		<div id="head_left">
			<a href="<%=basePath%>/welcome.jsp"><img alt="" src="<%=basePath%>images/logo.png"></a>
		</div>
		<div id="head_center">
			<div>
				<input type="text" id='input_text'  placeholder="请输入要搜索的商品"/>
			</div>	
			<div id='ss'>
				<span>搜索</span>
			</div>	
			
			<p id="head_center_bot">
				<span >推荐：</span>
			</p>
				
		</div>
		
		
		
		<div id="head_reght">
			<img alt="" src="<%=basePath%>images/headerProPic.png" id="imgRight">
		</div>
	</div>
	<!-- 导航栏 -->
	<div id='daoHao_1' ></div>
	
	<!-- 商品分类 -->
	<div id="type_comm">
		<!-- 左边 -->
		<div id="type_comm_1">
			<div class='type_comm_head'>
				<div><img src="<%=basePath%>images/ax.png"/> 猜你喜欢</div>
				<div class='type_comm_head_1' id="type_comm_head_4">
					
				</div>
			</div>
		
			<div class='type_comm_head'>
				<div><img src="<%=basePath%>images/yj.png"/> 洋酒</div>
				<div class='type_comm_head_1' id="type_comm_head_1">
					
				</div>
			</div>
			
			<div class='type_comm_head'>
				<div><img src="<%=basePath%>images/ip.png"/>葡萄酒</div>
				<div class='type_comm_head_1' id='type_comm_head_2'>
						<a href="#"> 拉菲 </a>
						<a href="#" class='re'>奔富 </a>
						<a href="#">长城 </a>
						<a href="#">木桐 </a>
						<a href="#">小企鹅</a>
						<a href="#" class='re'>澜爵 </a>
						<a href="#">博若莱</a>
						
						
				</div>
			</div>
			
			<div class='type_comm_head'>
				<div><img src="<%=basePath%>images/jb_2.png"/>酒具</div>
				
				<div class='type_comm_head_1' id='type_comm_head_3'>
					<a href="#">酒杯</a>
					<a href="#" class='re'>开瓶器</a>
				 	<a href="#">海马酒刀</a><br>
					<a href="#" class='re'>醒酒器</a>
					
					<a href="#">红酒礼盒包装</a>
				</div>
			</div>
		
			
		</div>
		
		<!-- 右边导航栏 -->
		<div id="type_comm_2" class='index_right2'>
		
			<div id="type_comm_2_1" class='type_comm_2 index_right2'>
				<div id='type_comm_2_1_1_left'>
					<ul>
						<li>特色会场</li>
						<li>精选会场</li>
						<li>特色专区</li>
						<li>企业用酒</li>
						<li>清仓捡漏区</li>
						<li>红洋酒专区</li>
						<li>名庄推荐</li>
					</ul>
					
				</div>
				<div id='type_comm_2_1_1_conter'>
					<ul>
						<li>
							<a href='#' class='re'>炫酷品牌日</a>
							<a href='#'>清仓特卖</a>
							
						</li>
						<li>
							<a href="#">各地名酒</a>
							<a href="#" class='re'>香型选酒</a>
							<a href="#" class='re'>新品会场</a>
							<a href="#">宴请用酒</a>
						</li>
						<li>
							<a href="#">送礼必备</a>
							<a href="#">酒坊独家</a>
							
							
						</li>
						<li>
							<a href="#">商务用酒</a>
							<a href="#">聚餐用酒</a>
							<a href="#">员工福利</a>
							
						</li>
						<li>
							<a href="">华北区</a>
							<a href="" class='re'>华中区</a>
							<a href="">华南区</a>
							<a href="">西南区</a>
							<a href="">华东区</a>
							
						</li>
						<li>
							<a href="#" class='re'>洋酒疯抢</a>
							<a href="#">整箱特惠</a>
							<a href="#">高分推荐</a>
							<a href="#">送礼优选</a>
						</li>
						<li>
							<a href="#">名庄名窖</a>
							<a href="#" class='re'>名庄特卖</a>
						</li>
					</ul>
					
				</div>
				<div id='type_comm_2_1_1_right'>
					<img alt="" src="<%=basePath%>images/left_index.jpg">
					
				</div>
			</div>
			<div id="type_comm_2_2" class='type_comm_2 index_right2'> 
				
				<div id="type_comm_2_2_1_left">
					<ul>
						<li style="height: 150px;" >品牌</li>
						<li>产地</li>
						<li style="height: 90px;">国家</li>
						<li>价格</li>
						
					</ul>
					
				</div>
				<div id="type_comm_2_2_2_conter">
					<ul>
						<li style="height: 150px;" id="type_pp">
							
						</li>
						<li style="height: 60px;" id='leix'>
							<a href='#' class='re'>法国波尔多产区</a>
							<a href='#'>法国香槟产</a> 
							<a href='#'>国勃艮第产区</a>
							<br>
							<a href='#'>法国西南产区</a>
						 	<a href='#'>法国阿尔萨斯产区</a>
							<a href='#'>法国普罗旺斯产区</a> 
							
						</li>
						<li style="height: 90px;" id="gjia">
							
						</li>
						<li id='yuan'>
						
							<a href="#">1-99元</a>
							<a href="#">100-1000元</a>
							<a href="#">1000-2000元</a>
							<a href="#">2000元以上</a>
							
						</li>
						
					</ul>
					
				</div>
				<div id="type_comm_2_2_3_right">
					<div>
						<img alt="" src="<%=basePath%>images/001.png" style="width: 130px ; height: 230px" />
					</div>
					<div>
						<img alt="" src="<%=basePath%>images/002.png" style="width: 130px ; height: 230px" />
					</div>
				</div>
				
							
			</div>
			
			<div id="type_comm_2_3" class='type_comm_2 index_right2'>
				
				<div id="type_comm_2_3_1_left">
					<ul>
						<li style="height: 40px;" >品牌</li>
						<li>品种</li>
						<li style="height: 40px;">国家</li>
						<li>白葡萄</li>
						<li>红葡萄</li>
						<li>价格</li>
					</ul>
					
					
					
				</div>
				
				<div id="type_comm_2_3_2_right">
					<ul>
						<li style="height: 40px;" >
							<a href="#" class='re'>拉菲 </a>
							<a href="#">奔富</a>
							<a href="#">长城 </a>
							<a href="#">木桐</a>
							<a href="#" class='re'>小企鹅</a>
							<a href="#">澜爵 </a>
							<a href="#">尼雅</a>
							<a href="#">黄尾袋鼠</a>
							<a href="#">博若莱</a>
							<a href="#" class='re'>智利猫</a>
							<a href="#">32领域</a>
							<a href="#">红魔鬼</a>
						</li>
						
						<li>
							
							<a href='#' class='re'>赤霞珠</a>
							<a href='#'>美乐</a>
							<a href='#'>霞多丽</a>
							<a href='#'>西拉</a>
							<a href='#' class='re'>品丽珠</a>
							<a href='#'>歌海娜</a>
							<a href='#'>添帕尼尤</a>
							<a href='#'>长相思</a>
							<a href='#'>琼瑶浆</a>
							
							
							
						</li>
						<li style="height: 40px;" id='ppj'>
						
						</li>
						
						
						<li>
							<a href="#">干白</a>
							<a href="#" class='re'>半干白</a>
							<a href="#">甜白</a>
							<a href="#">半甜白</a>
							
							
						</li>
						<li>
							<a href="#">干红</a>
							<a href="#">半干红</a>
							<a href="#">甜红</a>
							<a href="#" class='re'>半甜红</a>
							
							
						</li>
						
						<li>
							<a href="#">1-99元</a>
							<a href="#">100-1000元</a>
							<a href="#">1000-2000元</a>
							<a href="#">2000元以上</a>
							
						</li>
					</ul>
				</div>
				
				
				
			</div>
			<div id="type_comm_2_4" class='type_comm_2 index_right2'>
				
				<div id="type_comm_2_4_1_left">
					<ul>
						<li style="height: 50px;">酒具</li>
						<li>休闲食品</li>
						<li>名茶</li>
						<li>茶具</li>
						<li>进口食品</li>
					</ul>
				</div>
				<div id="type_comm_2_4_2_conent">
					<ul>
						<li style="height: 50px ;">
							<a href="#" >酒杯</a>
							<a href="#">开瓶器</a>
							<a href="#" class='re'>红酒礼盒包装</a>
							<a href="#">醒酒器</a>
							<a href="#">海马酒刀</a>
							<a href="#">香槟杯</a><br>
							<a href="#" class='re'>直身杯</a>
							<a href="#">水晶高脚杯</a>
							<a href="#">鸡尾酒杯</a>
							<a href="#">烈酒杯</a>
							<a href="#">酒架</a>
						</li>
						<li >
							<a href="#">洽洽食品</a>
							<a href="#">吃货三国</a>
							<a href="#">果园老农</a>
							<a href="#">良品铺子</a>
							
						</li>
						<li>
							<a href="#">普洱茶</a>
							<a href="#">滇红凤牌</a>
							<a href="#">南国公主</a>
							<a href="#">传奇会</a>
							<a href="#" class='re'>八马茶业</a>
						</li>
						<li>
							<a href="#">茶壶 </a>
							<a href="#">茶具礼盒</a>
						</li>
						<li>
							<a href="#">西班牙火腿切片</a>
							<a href="#">泰国金枪鱼罐头</a>
							<a href="#">西班牙意面乐享装</a><br>
							<a href="#" class='re'>伊比利亚前腿切片</a>
							<a href="#">伊比利亚火腿切片</a>
							<a href="#">加拿大必美蜂蜜</a><br>
							<a href="#">哥氏卡布奇诺咖啡</a>
							
						</li>
					</ul>
				</div>
				<div id="type_comm_2_4_3_right">
					<img alt="" src="<%=basePath%>images/003.jpg">
				</div>
				
			</div>
			
		</div>
		
	</div>
	
	<!-- 这是右边 -->
	<div id='type_comm_2_right'>
		<img src="<%=basePath%>images/index_head_reght.png">
	</div>
	
	
</body>
</html>
<script type="text/javascript">
	/* 动态加载导航栏信息 */
	$.get("<%=basePath%>navigationBarAction/findAllNavigationBar","",function(data){
		//alert(data)
		$.each(data,function(i,o){
			
			var $ul ="<ul>" ;
				$ul += "<li style='width:210px;'><span class='glyphicon glyphicon-list' style='font-size:13px;'></span> "+o.nAllCommType+"</li>" ;
				$ul += "<li class='ulLi'>"+o.nIndex+"</li>" ;
				$ul += "<li class='ulLi'>"+o.nHot+"</li>" ;
				$ul += "<li class='ulLi'>"+o.nNow+"</li>" ;
				$ul += "<li class='ulLi'>"+o.nSnapUp+"</li>" ;
				$ul += "<li class='ulLi'>"+o.nGiftBox+"</li>" ;
				$ul += "<li class='ulLi'>"+o.nTds+"</li>" ;
				$ul +="</ul>"; 
				
				$("#daoHao_1").append($ul);
				
		});
		
	});
	/* 加载商品品牌 */
	$.get("<%=basePath%>/brandAction/findAllBrand","",function(data){
	
		$.each(data,function(i,o){
			var $pp = "<a href=''>"+o.brname+"</a>" ;
			
			if(i==2){
				
				$pp += "<br/>" ;
			}
			if(i==3){
				$pp = "<a href='' class='re'>"+o.brname+"</a>" ;
			}
			$("#type_comm_head_1").append($pp) ;
			if(i==4){
				return false ;
			}
			
		});
		
		
	});
	/* 加载猜你喜欢 */
	$.get("<%=basePath%>/brandAction/findAllBrand","",function(data){
	
		$.each(data,function(i,o){
			var $pp = "<a href=''>"+o.brname+"</a>" ;
			
			if(i==2){
				$pp = "<a href='' class='re'>"+o.brname+"</a>" ;
				$pp += "<br/>" ;
			}
			$("#type_comm_head_4").append($pp) ;
			if(i==4){
				return false ;
			}
			
		});
		
		
	});
	/* 加载国家
	 $.get("<%=basePath%>/countryAction/findAllCountry","",function(data){
	
		$.each(data,function(i,o){
			var $pp = "<a href='#'>"+o.ptname+"</a>" ;
			
			if(i==2){
				$pp += "<br/>" ;
			}
			$("#type_comm_head_3").append($pp) ;
			if(i==4){
				return false ;
			}
			
		});
		
		
	});
	 */
	/* 加载国家2 */
	$.get("<%=basePath%>/countryAction/findAllCountry","",function(data){
	
		$.each(data,function(i,o){
			var $pp = "<a href=''>"+o.ptname+"</a>" ;
			if(i==7){
				$pp += "<br/>" ;
			}
			if(i==15){
				$pp += "<br/>" ;
			}
			if(i==3){
				$pp = "<a href='' class='re'>"+o.ptname+"</a>" ;
			}
			if(i==14){
				$pp = "<a href='' class='re'>"+o.ptname+"</a>" ;
			}
			if(i==18){
				$pp = "<a href='' class='re'>"+o.ptname+"</a>" ;
			}
			$("#gjia").append($pp) ;
			
		});
		
		
	});
	/* 加载国家3 */
	$.get("<%=basePath%>/countryAction/findAllCountry","",function(data){
	
		$.each(data,function(i,o){
			var $pp = "<a href=''>"+o.ptname+"</a>" ;
			
			if(i==13){
				$pp += "<br/>" ;
			}
			if(i==3){
				$pp = "<a href='' class='re'>"+o.ptname+"</a>" ;
			}
			if(i==10){
				$pp = "<a href='' class='re'>"+o.ptname+"</a>" ;
			}
			
			$("#ppj").append($pp) ;
			
		});
		
		
	});
	
	/* 加载全部商品品牌 */
	$.get("<%=basePath%>/brandAction/findAllBrand","",function(data){
	
		$.each(data,function(i,o){
			var $pp = "<a href='#'>"+o.brname+"</a>" ;
			if(i==6){
				$pp +="<br>" ; 
			}
			if(i==14){
				$pp +="<br>" ;
			}
			if(i==21){
				$pp +="<br>" ;
			}
			if(i==30){
				$pp +="<br>" ;
			}
			if(i==4){
				$pp = "<a href='' class='re'>"+o.brname+"</a>" ;
			}
			if(i==20){
				$pp = "<a href='' class='re'>"+o.brname+"</a>" ;
			}
			if(i==15){
				$pp = "<a href='' class='re'>"+o.brname+"</a>" ;
			}
			if(i==3){
				$pp = "<a href='' class='re'>"+o.brname+"</a>" ;
			}
			
			
			$("#type_pp").append($pp) ;
		});
		
		
	});
	
	
	
	// countryAction/findAllCountry  //国家
	/* 设置鼠标经过 
	$("body").on("mouseover",".ulLi",function(){
		//alert("经过了")
		$(this).addClass("goByLi");
		
	});
	/* 设置鼠标离开
	$("body").on("mouseleave",".ulLi",function(){
		//alert("离开了")
		$(".ulLi").removeClass("goByLi");
	});
	/*设置点击样式
	$("body").on("click",".ulLi",function(){
		//alert("离开了")
		$(".ulLi").removeClass("clickLi");  //先把前面的点击样式移除
		$(this).addClass("clickLi");  //再添加当前的点击样式
	});
	*/
	
	/* 设置鼠标经过  */
	$(".type_comm_head,.type_comm_2").live("mouseover",function(){
		//alert("经过了")
		/* 获取序号 */
		var index = $(this).index();
		
		$(".type_comm_head").eq(index).addClass("type_comm_head_left");
		//移除样式
		$(".type_comm_2").removeClass("z-index_right");
		$(".type_comm_2").eq(index).removeClass("index_right2");
		$(".type_comm_2").eq(index).addClass("z-index_right");
		$("#type_comm_2").removeClass("index_right2");
		
	});
	
	
	
	/*  设置鼠标离开 */
	$(".type_comm_head,.type_comm_2").live("mouseleave",function(){
		//alert("离开了")
		$(".type_comm_head").removeClass("type_comm_head_left");
		$(".type_comm_2").addClass("index_right2");
		$("#type_comm_2").addClass("index_right2");
		
	});
	
	
	
	
	/* ================================================= */
	/* ================================================= */
	/* ================================================= */
	/* ================================================= */
	
	
	/* 鼠标经过导航栏 --手机二维码 */
	$(".hwad_gg_0").mouseover(function(){
		$(this).addClass("head_gg_jinguo");
		//alert('-'); 
		$("#erwm").removeClass("head_gg_yinc");   //移除隐藏
		$("#erwm").addClass("head_gg_xians");   //添显示
		
	});
	$("#erwm").mouseover(function(){
		$(".hwad_gg_0").addClass("head_gg_jinguo");
		//alert('-'); 
		$("#erwm").removeClass("head_gg_yinc");   //移除隐藏
		$("#erwm").addClass("head_gg_xians");   //添显示
		
	});
	/* 鼠标离开 --手机二维码  */
	$(".hwad_gg_0,#erwm").mouseleave(function(){
		
		$("#erwm").removeClass("head_gg_xians");   //移除显示
		$("#erwm").addClass("head_gg_yinc");   //添加隐藏
		$(".hwad_gg_0").removeClass("head_gg_jinguo");
		  
		//$(".hwad_gg_0").removeClass("head_gg_jinguo");
	});
	
	
	
	
	/* 鼠标经过导航栏 --网站导航 */
	$(".hwad_gg_1").mouseover(function(){
		$(this).addClass("head_gg_jinguo");
		$("#headdh").removeClass("head_gg_yinc");   //移除隐藏
		$("#headdh").addClass("head_gg_xians");   //添显示
	});
	
	$("#headdh").mouseover(function(){
		$(".hwad_gg_1").addClass("head_gg_jinguo");
		$("#headdh").removeClass("head_gg_yinc");   //移除隐藏
		$("#headdh").addClass("head_gg_xians");   //添显示
	});
	
	
	/* 鼠标离开 --网站导航  */

	$(".hwad_gg_1,#headdh").mouseleave(function(){
		
		$(".hwad_gg_1").removeClass("head_gg_jinguo");
		//headdh
		$("#headdh").removeClass("head_gg_xians");   //移除显示
		$("#headdh").addClass("head_gg_yinc");   //添加隐藏
		
	});
	
	
	/* 鼠标经过导航栏 --客户服务 */
	$(".hwad_gg_2,#headfw").mouseover(function(){
		$(this).addClass("head_gg_jinguo");
		//上箭头  var $shangjt = ' <a class="glyphicon glyphicon-chevron-up" style="color: #EEE0E5;font-size: 10px;"></a>';
		//下箭头
		var $xiajt = ' <a class="glyphicon glyphicon-chevron-down" style="color: #EEE0E5;font-size: 10px;"></a>';
		$("#fw_jiant").empty();  //清空上箭头
		$("#fw_jiant").append($xiajt);  //添加下箭头
		
		//headfw
		
		$("#headfw").removeClass("head_gg_yinc");   //移除隐藏
		$("#headfw").addClass("head_gg_xians");   //添显示
	});
	
	$("#headfw").mouseover(function(){
		$(".hwad_gg_2").addClass("head_gg_jinguo");
		//上箭头  var $shangjt = ' <a class="glyphicon glyphicon-chevron-up" style="color: #EEE0E5;font-size: 10px;"></a>';
		//下箭头
		var $xiajt = ' <a class="glyphicon glyphicon-chevron-down" style="color: #EEE0E5;font-size: 10px;"></a>';
		$("#fw_jiant").empty();  //清空上箭头
		$("#fw_jiant").append($xiajt);  //添加下箭头
		
		//headfw
		
		$("#headfw").removeClass("head_gg_yinc");   //移除隐藏
		$("#headfw").addClass("head_gg_xians");   //添显示
	});
	
	/* 鼠标离开 --客户服务  */
	$(".hwad_gg_2,#headfw").mouseleave(function(){
		$(".hwad_gg_2").removeClass("head_gg_jinguo");
		var $shangjt = ' <a class="glyphicon glyphicon-chevron-up" style="color: #EEE0E5;font-size: 10px;"></a>';
		$("#fw_jiant").empty();  //清空下箭头
		$("#fw_jiant").append($shangjt);  //添加上箭头
		
		$("#headfw").removeClass("head_gg_xians");   //移除显示
		$("#headfw").addClass("head_gg_yinc");   //添加隐藏
		
	});
	
	
	
</script>

