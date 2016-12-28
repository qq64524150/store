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