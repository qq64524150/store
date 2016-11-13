
$(function(){
	//信息个数
	//location.href="Logon?op=newsxx" ;
	
	
	//设置主体背景的图片的宽高
	/*$('#formbackground').height($(window).height());
    $('#formbackground').width($(window).width());*/
	//显示标题
	$("#tabs").tabs({
		fit: true ,
		border:false ,
		
		loadingMessage:"你好"
	});
	
	
	//点击/显示
	$(".nav").click(function(node){
		//判断是否存在
		if($("#tabs").tabs('exists',$(this).html())){
			$("#tabs").tabs('select',$(this).html());
		}else{
			$("#tabs").tabs('add',{
				title: $(this).text(), //添加标题
				iconCls : $(this).attr("id"), // 标题图片
				//iconCls : $(this).children().eq(1).val(), // 标题图片
				closable:true , //可关闭
				href:$(this).attr('value')
				
			});
		}

		//alert($(this).attr("id"))
	});
	
	
	
	/*$("#tt").tree({
		
		onClick:function(node){
			alert($(node).attr('title'))
			if($("#tabs").tabs('exists',$(this).html())){
				$("#tabs").tabs('select',$(this).html());
			}else{
				$("#tabs").tabs('add',{
					title: node.text, //添加标题
					//iconCls : $(this).iconCls, // 标题图片
					closable:true , //可关闭
					href:$(this).attr('title')
					
				});
			}
		}
	});*/
	
	
	
	 //Accordion（分类）关闭全部默认
	$("#aa").accordion({
		border:false ,
	}) ;
	$("#aa").accordion('getSelected').panel('collapse');
	
	 //鼠标点击
	$(".tt .zhenc").click(function(){
		// alert( $(this).children().eq(1).val())
		 $(".tt li").removeClass(" dian") ;
		 $(this).addClass("dian") ;
		
		//判断是否存在
			if($("#tabs").tabs('exists',$(this).text())){
				$("#tabs").tabs('select',$(this).text());
			}else{
				$("#tabs").tabs('add',{
					title: $(this).text(), //添加标题
					//iconCls : $(this).attr("value"), // 标题图片
					iconCls : $(this).children().eq(1).val(), // 标题图片
					closable:true , //可关闭
					href:$(this).attr('value') 
					
				});
			}
		
	}); 
	  
	//未完成开始
	$(".tt .fzhenc").click(function(){
		$.messager.defaults={ok:"OK",width:"300px",modal:'true'} ;
		$.messager.alert('警告','此功能暂时未发布!','error'); 
	});
	
	$(".fnav").click(function(){
		$.messager.defaults={ok:"OK",width:"300px",modal:'true'} ;
		$.messager.alert('警告','此功能暂时未发布!','error'); 
	});
	
	//未完成结束
	
	//密码重置 --开始
	$(".pwreset").click(function(){
		$.messager.defaults={ok:"是",cancel:"否",width:"300px",modal:'true'} ;
		$.messager.confirm('确认','是否重置所有的员工密码？',function(r){    
			if(r){
				$.ajax({
					url:"../messageServlet?op=passwordReset" ,
					type:"post" ,
					success:function(data){
						if(data==1){
							$.messager.alert('恭喜','密码重置成功','info');    
						}else{
							
							$.messager.alert('警告','密码重置失败','error');  
						}
					}
				});
				
			}
		});
		
		
	});
	//密码重置 --结束
	
	//导航鼠标经过/离开
	 $(".tt li").hover(
		 function(){
			if($(this).attr("class")=="zhenc dian"){
				
			}else{
				 $(this).addClass("jin") ;
			}
			
		 },
		 function(){
			 $(this).removeClass("jin") ;
		 }
		 
	);

	$('#tui').click(function(){
		$.messager.defaults={ok:"是",cancel:"否",width:"260px",modal:'true'} ;
		
		$.messager.confirm('确认','您确认想要退出吗？',function(r){    
			if(r){
				location="../messageTonZhi.do?op=exit";
			}
		});
		
		
	});
	 
});


