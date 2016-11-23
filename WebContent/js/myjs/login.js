$(function(){
	
	//鼠标经过/离开
	$("#daohan div").hover(
		  function () {
		   var a  = $(this).attr("class");
		   if(a!="xuanz"){
			   $(this).addClass("jin");
		   }
		  },
		  function () {
			  var a  = $(this).attr("class");
			   if(a!="xuanz"){
				   $(this).removeClass("jin");
			   }
		  }
	);
	
	//登录切换
	$("#daohan div").click(function(){
		//var s = $(this).attr("class");
		$("#daohan div").removeClass("xuanz");
		var s = $(this).attr("id");
		$(this).addClass("xuanz");
		
		if(s=="one"){
			$("#zhuti").css("display","block");
			$("#zhuti2").css("display","none");
		}else if(s=="two"){
			$("#zhuti").css("display","none");
			$("#zhuti2").css("display","block");
			
		}
		
	});
	
	
	
	//验证手机号1
	$("#phone").blur(function() {
		var $parent = $("#phoneOne");
		$parent.find(".formtips").remove();
		if(this.value==""){
			var hint = "请输入手机号码";
			$parent.append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!(this.value.match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "手机号码有误！";
			$parent.append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else{
			$("#btnSendCode").removeAttr("disabled");// 启用按钮
		}	
		
	});
	//验证手机号2
	$("#phone2").blur(function() {
		var $parent = $("#phoneOne2");
		$parent.find(".formtips").remove();
		if(this.value==""){
			var hint = "请输入手机号码/邮箱/用户名";
			$parent.append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!(this.value.match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "手机号码有误！";
			$parent.append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else{
			$("#btnSendCode").removeAttr("disabled");// 启用按钮
		}	
		
	});
	
	//判断密码是否为空
	
	
	
	
	
	//验证1
	$("#login").click(function(){
		var $pone = $("#phone");
		var $code = $("#code");
		$(".formtips").remove();
		
		if($pone.val()=="" || $pone.val()==null){
			var hint = "请输入手机号码";
			$("#phoneOne").append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!($pone.val().match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "手机号码有误！";
			$("#phoneOne").append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if($code.val()==""){
			var hint = "请输入验证码";
			$("#yan").append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else{
			//提交
			$.post("","",function(data){
				
			});
		}
	});
	//验证2
	$("#login2").click(function(){
		var $pone = $("#phone2");
		var $code = $("#code2");
		var $exampleInputPassword1 = $("#exampleInputPassword1");
		$(".formtips").remove();
		
		if($pone.val()=="" || $pone.val()==null){
			var hint = "请输入手机号码/邮箱/用户名";
			$("#phoneOne2").append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!($pone.val().match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "手机号码有误！";
			$("#phoneOne2").append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if($exampleInputPassword1.val()==""){
			var hint = "请输入密码";
			$("#pwd").append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if($code.val()==""){
			var hint = "请输入验证码";
			$("#yan2").append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else{
			//提交
			
		}
	});
	
	
	//验证码
	$("body").on("click","#img",function(){
		$.post("tovcode/vocde","",function(data){
			alert(data)
			$(".vodeImg").empty();
			var s = ' <img alt=""  name="image" src="tovcode/vocde" id="img" >';
			$(".vodeImg").append(s);
		});
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//默认按钮为禁止
	$("#btnSendCode").attr("disabled", "true");
	//验证码发送
	var InterValObj;
	// timer变量，控制时间
	var count = 60; // 间隔函数，1秒执行 
	var curCount;
	// 当前剩余秒数
	$("#btnSendCode").click(function(){
		
		curCount = count;
		// 设置button效果，开始计时
		$("#btnSendCode").attr("disabled", "true");
		$("#btnSendCode").html(curCount + " 秒后重新获取"); // 启动计时器，1秒执行一次
		InterValObj = window.setInterval(SetRemainTime, 1000); // 获取表单输入的信息
		//var pamth = $("#froms").serialize();
		var phone = $("#phone").val(); //获取手机号码
		
		// 向后台发送表单输入的信息
		$.post("userAction/sendCode?uphone="+phone, "", function(data) {
			//alert(data)
		});
		
		
	});
	
		
	// timer处理函数
	function SetRemainTime() {
		if (curCount == 0) {
			window.clearInterval(InterValObj);// 停止计时器
			$("#btnSendCode").removeAttr("disabled");// 启用按钮
			$("#btnSendCode").html("重新获取");
		} else {
			curCount--;
			$("#btnSendCode").html(curCount + " 秒后重新获取");
		}
	}
	
	
});