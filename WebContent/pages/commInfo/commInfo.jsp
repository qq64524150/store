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

<!-- 这是五星评价样式 -->
<link href="<%=basePath%>evaluate/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>evaluate/css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
<script src="<%=basePath%>evaluate/js/star-rating.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath%>js/cloud-zoom.1.0.2.min.js"></script>

<title>Insert title here</title>
</head>
<style>

</style>
<body>
	<!-- 载入头 -->
	<c:import url="../../index_head.jsp"></c:import> 
	
	<%-- <c:forEach items="${sessionScope.commInfoById}" var="w">
		${w[0].pname }
	</c:forEach> --%>
	
	
	<!-- 这是商品的图片展示区 -->
	<div id="info_imgquy" >
		
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
			 <div id='pnameComm'>
			 	 ${sessionScope.commInfoById.pname }
			 </div>	
			 <div id='commjiage'>
			 	<p id='zhit'>促销信息:<span id='spzheks'>商品折扣</span><span id='spjinpin'>精品洋酒 双12促销价</span></p>
			 	<!-- <p id='gengd'>更多优惠<span class='glyphicon glyphicon-chevron-down'></span></p> -->
			 </div>
			 
			 <div id='ggmoney'>
			 	<span id='motext'>您的专享价:</span>
			 	<span id='tub'><img alt="" src="<%=basePath%>images/jiage.png"></span>	
			 	<span id='tubmoney'>${sessionScope.commInfoById.pprice*(sessionScope.commInfoById.pdis/10) }</span>	
			 	<span id='yymoney'>原价:${sessionScope.commInfoById.pprice*1.0 }</span>	
			 </div>
			 <div id='zhek'>
			 	<div id='zhek_1'>
			 		促销折扣 <span>${sessionScope.commInfoById.pdis }</span>折
				 </div>
			 	<div id='zhek_2'>
			 		<span>节省</span>
			 		
			 		<span id='jies_yy'>￥${sessionScope.commInfoById.pprice-(sessionScope.commInfoById.pprice*(sessionScope.commInfoById.pdis/10)) }</span>
				 </div>
			 </div>
			 <div id='xianggtis'>
			 	<span><img alt="" src="<%=basePath%>images/ziying.png"> 自营商品</span>
			 	<span><img alt="" src="<%=basePath%>images/baoy.png"> 满88包邮</span>
			 	<span><img alt="" src="<%=basePath%>images/chun.png"> 可存酒库</span>
			 	<span><img alt="" src="<%=basePath%>images/xinyong.png"> 信用支付</span>
			 </div>
			 
			 <div id='peisdq'>
			 	
			 	<div id='peis'> 	
					<ul id="list1"">
					
						<li id="summary-stock">
					
							<div class="dt">配&nbsp;送&nbsp;至：</div>
					
							<div class="dd">
					
								<div id="store-selector">
					
									<div class="text"><div></div><b></b></div>                   
					
									<div onclick="$('#store-selector').removeClass('hover')" class="close"></div>
					
								</div><!--store-selector end-->
					
								<div id="store-prompt"><strong></strong></div><!--store-prompt end--->
					
							</div>
							
								<span id='tishi'>单笔不满88，收取运费10元，满88包邮<img alt="" src="<%=basePath%>/images/wenhao.png"></span>
								
							
						</li>
					
					</ul>
			 	</div>
			 	<div id='shulian'>
			 		数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量：
			 		<input id="min" name="" type="button" value="-" />  
					<input id="text_box" name="" type="text" value="1"style="width:30px;"/>  
					<input id="add" name="" type="button" value="+" />  
			 	</div>
			 </div>
			 <div id='peispinj'>
			 	<p id='shuliang'>累计浏览量(<span class='shulcolor'>0</span>)</p>
			 	<p id='pingjia'>累计评价(<span class='pingjcolor'>0</span>)</p>
			 </div>
			 
			 <div id='commImg_bott'>
			 	
			 	<div id='goumai'>
			 		<input type="button" value='立即购买'/>
			 	</div>
			 	<div id='jiatgwc'>
			 		<input type="button" value='加入购物车'/>
			 	</div>
			 	
			 </div>
			 
			 
		</div>	
			
		<!-- 其他商品展示 -->
		<div id='comInfocomm'>
			
			<ul>
			
				<c:set var="infotupzs" value="true"/>
				<c:forEach items="${sessionScope.comm }" var="comm" varStatus="i">
					
					<c:if test="${infotupzs }">
						
						<li>
							<div class='tupxians'>
								<a href="<%=basePath %>commodityAction/findPdepictByIdthree?id=${comm[0].pno}">
		 							<img  src="<%=basePath %>upload/${comm[0].pimage}">
		 						</a>
							</div>
							<div class='tupwenz'>
								<div>
									<a href="<%=basePath %>commodityAction/findPdepictByIdthree?id=${comm[0].pno}">
	 									${comm[0].pname}
	 								</a>
	 							</div>
								<div class='infoQian'>
									<span>￥</span><b>${sessionScope.commInfoById.pprice*(sessionScope.commInfoById.pdis/10) }</b>
								</div>
							</div>
						</li>
						
					</c:if>
					
					<c:if test="${i.count == 2}">
				 		<c:set var="infotupzs" value="false"/>
				 	</c:if>
				</c:forEach>
			</ul>
		</div>		
	</div>
	
	
	<div id='qita'>
		<div id='jiaguanz'><img alt="" src="<%=basePath %>images/jiahao.png"> 加关注</div>
		<div id='guanzhu'>
			<a class='tianj' title="QQ空间" href="#"><img alt="" src="<%=basePath %>images/qqkj.png"></a>
			<a class='tianj' title="新浪微博" href="#"><img alt="" src="<%=basePath %>images/xingl.png"></a>
			<a class='tianj' title="人人网" href="#"><img alt="" src="<%=basePath %>images/rr.png"></a>
			<a class='tianj' title="腾讯微博" href="#"><img alt="" src="<%=basePath %>images/txwb.png"></a>
		</div>
	</div>
	
	
	
	<!-- 这是商品组合推荐 -->
	<div id='sptuij' class='DivSize'>
		<div id='sptuij_head' class='DivSize'>
			<span>组合购买更优惠</span>
		</div>
		<div id='sptuijuangs' class='DivSize' >
			<ul>
						
				<li>
					<div class='tupxians_tj'>
						<a href='#'><img class='tupxians_tj_img' alt="" src="<%=basePath %>upload/20161227091046471.jpg"></a>
					</div>
					<div class='tupwenz_tj'>
						<div class='tupwenz_tj_name'>
							<span>这是测试名字。。。。</span>
						</div>
						<div class='infoQian_tj'>
							<span>￥</span> <b>10000.0</b>
						</div>
						<div class='gwc_tj'>
							<div class='gwcdianj'>
								<img alt="" src="<%=basePath %>images/gwc.png"> 加入购物车
							</div>
						</div>
					</div>
				</li>
			</ul>
			
		</div>
		
	</div>
	
	
	<!-- 这是商品的详细信息图片展示区 -->
	
	<div id='commxianxIsnfo_zu'>
		
		<!-- 这是左边 -->
		<div id='zuobiang'>
			
			<div class='zuobiang_head_1'> &nbsp;相关分类</div>
			
			<div id='xianggfl'>
				<ul>
					<li class='xianggfl_1'>
						<ul>
							<li><a href='#'>洋酒</a></li>
							<li><a href='#'>葡萄酒</a></li>
							<li><a href='#'>香槟</a></li>
							<li><a href='#'>果酒</a></li>
						</ul>
					</li>
					
					
					<li  class='xianggfl_1'>
						<ul>
							<li><a href='#'>黄酒</a></li>
							<li><a href='#'>詹姆士</a></li>
							<li><a href='#'>酒具</a></li>
							<li><a href='#'>啤酒</a></li>
						</ul>
						
					</li>
				</ul>
			</div>
			
			
			<div class='zuobiang_head_1'> &nbsp;推荐品牌</div>
			
			<div id='xianggfl_2'>
				<ul>
					<li class='xianggfl_1'>
						<ul>
							<li><a href='#'>拉菲</a></li>
							<li><a href='#'>奔富酒园</a></li>
							<li><a href='#'>长城</a></li>
							<li><a href='#'>黄尾袋鼠</a></li>
							<li><a href='#'>尼雅葡</a></li>
							<li><a href='#'>张裕</a></li>
							<li><a href='#'>红魔鬼</a></li>
						</ul>
					</li>
					
					
					<li  class='xianggfl_1'>
						<ul>
							<li><a href='#'>智利人</a></li>
							<li><a href='#'>澜爵</a></li>
							<li><a href='#'>拉菲传奇</a></li>
							<li><a href='#'>木桐酒庄</a></li>
							<li><a href='#'>卡斯维拉</a></li>
							<li><a href='#'>圣贝克</a></li>
							<li><a href='#'>卡斯特</a></li>
						</ul>
						
					</li>
				</ul>
			</div>
			
			<div class='zuobiang_head_1'> &nbsp;酒友推荐</div>
			
			<div id='xianggfl_3'>
				
			</div>
			<!-- 导航 -->
			<div class='zuobiang_head_1'> &nbsp;排行榜</div>
				<div id='panHanBan'>
					<ul>
						<li class="moRemYY panHanBanDianJi">同价位</li>
						<li class='moRemYY'>同品牌</li>
						<li class='moRemYY'>同类型</li>
					</ul>
				</div>
				<!-- 主体 -->
			<div id='xianggfl_4'>
				<div class='xianggfl_4'>同价位</div>
				<div class='xianggfl_4 xianggfl_4_none'>同品牌</div>
				<div class='xianggfl_4 xianggfl_4_none'>同类型</div>
				
			</div>
			
			
			
			<div class='zuobiang_head_1'> &nbsp;买了又买</div>
			
			
			<div id='xianggfl_5'>
				
			</div>
		</div>
		
		
		
		
		
		
		<!-- 这是右边 -->
		<div id='commxianxIsnfo'>
			
			<div id='commxianxIsnfo_head'>
				<ul>
				
					<li class='dianjiInfo'>商品详情</li>
					<li>用户评价</li>
					<li>商品咨询</li>
					
				</ul>
			</div>
			
			
			<div class='yem showInfo'>
				<div id='xianggInfo'>
					
					<ul>
						<li>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/guojia.png"/> <b>国家：</b> ${sessionScope.commInfoById.ptype }</p>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/ppai.png"/> <b>品牌： </b>${sessionScope.commInfoById.pbrand }</p>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/jibie.png"/> <b>级别： </b>${sessionScope.commInfoById.pdepict.pdlevel }</p>
						</li>
						
						<li>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/kg.png"/> <b>口感： </b>${sessionScope.commInfoById.pdepict.pdtaste }</p>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/xingj.png"/> <b>醒酒：</b> ${sessionScope.commInfoById.pdepict.pdsoberUp } 分钟</p>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/hanl.png"/> <b>含量：</b> ${sessionScope.commInfoById.pdepict.pdvol }</p>
						</li>
						
						<li>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/jingjin.png"/> <b>酒精：</b> ${sessionScope.commInfoById.pdepict.pdspirit } 度</p>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/pzong.png"/> <b>品种： </b>${sessionScope.commInfoById.pdepict.pdbreed }</p>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/yan.png"/> <b>色泽：</b> ${sessionScope.commInfoById.pdepict.colorur }</p>
						</li>
						
						<li style="border-right:  1px #EEE9E9 solid; ">
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/nianf.png"/> <b>年份：</b> ${sessionScope.commInfoById.pdepict.pdyear } 年</p>
							<p><img class= 'xianggTubiao' src="<%=basePath %>images/diq.png"/> <b>产区： </b>${sessionScope.commInfoById.pdepict.pdregion }</p>
						</li>
						
					</ul>
					
				</div>
				
				<hr style="margin-top: -40px ;">
				
				<div id='spanxiaggdtup'>
					<b>详细介绍</b>
				</div>
				
			</div>
			
			<div  class='yem noneInfo'>
				
				<div class='yhpjs'>
					<img class='ppimgYY' alt="" src="<%=basePath %>images/pping.png">&nbsp; 用户评价
				</div>
				
				<div id='pinJiaPinPai'>
					<div id='pinJiaPinPai_1'>
						<div id='haopinDushu'>
							<div id='dushu'>100%</div>
							<div id='dushu2'>好评度</div>
							
						</div>
					 
					 <div id='xingji'> <input id="input-21b" value="5" type="number" class="rating" min=0 max=5 step=0.2 data-size="lg"></div>
					 
					</div>
					<div id='pinJiaPinPai_2'>
						
					</div>
				</div>
				
				
				
				
			</div>
			
			<div  class='yem noneInfo'>
				这是咨询
			</div>
		</div>
	
	</div>
	
<script src="<%=basePath %>js/myjs/commInfo.js"></script>	
<!-- 地址 -->
<script src="<%=basePath%>js/site/location.js"></script>

<!-- 五星评价jq -->

</body>
</html>
<script type="text/javascript">
/* 地址 */

$("#city").live("click",function(e){
	SelCity(this,e);
	
});
/* 五星 */
jQuery(document).ready(function () {
    $(".rating-kv").rating();
});

</script>