$("#daoHao_1 ul li,#type_comm_1").live("mouseover",function(){
	
	var index = $(this).index();
	if(index=='0'){
		$("#type_comm_1").css("display","block");
	}
});
$(".type_comm_2").live("mouseover",function(){
	
	$("#type_comm_1").css("display","block");
});

$("#daoHao_1 ul li,#type_comm_1,.type_comm_2").live("mouseleave",function(){
	var index = $(this).index();
	$("#type_comm_1").css("display","none");
	
});

//获得文本框对象
var t = $("#text_box");
//初始化数量为1,并失效减
$('#min').attr('disabled',true);
 //数量增加操作
 $("#add").click(function(){    
     t.val(parseInt(t.val())+1)
     if (parseInt(t.val())!=1){
         $('#min').attr('disabled',false);
     }
   
 }) 
 //数量减少操作
 $("#min").click(function(){
     t.val(parseInt(t.val())-1);
     if (parseInt(t.val())==1){
         $('#min').attr('disabled',true);
     }
   
 })
 
 /*这是图片详情的div切换*/
 $("#commxianxIsnfo_head ul li").click(function(){
	 //获取当前点击的是第几个li 1，2，3
	 var index = $(this).index();
	// alert(index);
	 //获取相应的div
	 
	 $("#commxianxIsnfo_head ul li").removeClass("dianjiInfo");
	 $("#commxianxIsnfo_head ul li").eq(index).addClass("dianjiInfo");
	 
	 
	 $(".yem").addClass("noneInfo");
	 $(".yem").eq(index).removeClass("noneInfo")
	 $(".yem").eq(index).addClass("showInfo")
	 
 });
 

 /*这是控制切换框样式*/
 
 $("#panHanBan ul li").click(function(){
	 var index = $(this).index();
	 $("#panHanBan ul li").removeClass("panHanBanDianJi");
	 $(this).addClass("panHanBanDianJi");
	 
	 //alert(index)
	 /*获取相关元素*/
	 $(".xianggfl_4").addClass("xianggfl_4_none");
	 $(".xianggfl_4").eq(index).removeClass("xianggfl_4_none");
	 
 });
 
 
 
 
