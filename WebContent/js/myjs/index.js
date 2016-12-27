$(function(){
	/**
	 * 这是图片移动效果
	 */
	$("#pingph_3 div").mouseover(function(){
		var indeximgs = $(this).index();
		//alert("-- "+$(".pimg").length);
		//先把所有的效果清0
		$(".pimg").animate({'left':'0px'});
		//向右移动
		$(".pimg").eq(indeximgs).animate({'left':'-90px'});
	});
	
	
	
	/*
	 * 这是公告
	 * */
	$("#index_left_gg ul li").mouseover(function(){
		
		var index = $(this).index();
		$("#index_left_gg ul li").removeClass("index_jinguo");
		$(this).addClass("index_jinguo");
		
		$("#test_left ul li").removeClass("top_left");
		$("#test_left ul li").eq(index).addClass("top_left");
		$("#index_left_gg ul li").eq(index).addClass("index_jinguo");
		
	
		
		/* 	
		 * 		动画效果
			 $(selector).animate({params},speed,callback);
			 必需的 params 参数定义形成动画的 CSS 属性。
			 可选的 speed 参数规定效果的时长。它可以取以下值："slow"、"fast" 或毫秒。
			 可选的 callback 参数是动画完成后所执行的函数名称。
			 下面的例子演示 animate() 方法的简单应用。它把 <div> 元素往右边移动了 250 像素：
		 */
		
		
		//index_conter_right_boot_bidyImg
	});
	/*$("#index_conter_right_head ul li").mouseleave(function(){
		
		var index = $(this).index();
		//$(this).addClass("index_jinguo");
		$(this).removeClass("index_jinguo");
		//alert(index);
		//$(this).addClass("index_jinguo");
		
		//index_conter_right_boot_bidyImg
	});*/
	
	/*================================================================*/
	/*================================================================*/
	/*================================================================*/
	/*================================================================*/
	/*================================================================*/
});