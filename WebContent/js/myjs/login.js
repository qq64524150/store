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
	
	var anNu = true ; 
	
	/*//验证手机号1
	$("#phone").blur(function() {
		var $parent = $("#phoneOne");
		$parent.find(".formtips").remove();
		if(this.value==""){
			var hint = "<span class='formtips onSuccess'><span class=' glyphicon glyphicon-exclamation-sign'><span></span>请输入手机号码";
			$parent.append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!(this.value.match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "<span class='formtips onSuccess'><span class='glyphicon glyphicon-exclamation-sign'></span></span>手机号码有误！";
			$parent.append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}	
		
	});*/
	
	//验证手机号2
	$("#phone2").blur(function() {
		var $parent = $("#phoneOne2");
		$parent.find(".formtips").remove();
		if(this.value==""){
			var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>请输入手机号码/邮箱/用户名";
			$parent.append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!(this.value.match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>手机号码有误！";
			$parent.append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else{
			/*if(anNu){
				
				$("#btnSendCode").removeAttr("disabled");// 启用按钮
			}*/
			
		}	
		
	});
	
	//判断密码是否为空
	
	
	
	
	
	//验证1
	$("#login").click(function(){
		var $pone = $("#phone");
		var $code = $("#code");
		$(".formtips").remove();
		
		if($pone.val()=="" || $pone.val()==null){
			var hint = "<span class='formtips onSuccess'><span class='glyphicon glyphicon-exclamation-sign'></span></span>请输入手机号码";
			$("#phoneOne").append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!($pone.val().match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>手机号码有误！";
			$("#phoneOne").append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if($code.val()==""){
			var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>请输入验证码";
			$("#yan").append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else{
			$("#login").val("正在登录..");
			//提交
			var pamar = $("#froms").serialize();
			$.post("userAction/login",pamar,function(data){
				$("#login").val("登录");
				alert(data)
				location.href=data;
				
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
			var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>请输入手机号码/邮箱/用户名";
			$("#phoneOne2").append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!($pone.val().match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>手机号码有误！";
			$("#phoneOne2").append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if($exampleInputPassword1.val()==""){
			var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>请输入密码";
			$("#pwd").append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if($code.val()==""){
			var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>请输入验证码";
			$("#yan2").append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else{
			//提交 -- 进行登陆
			//序列化
			var pamar = $("#froms2").serialize();
			//设置登录显示
			$("#login2").val("正在登录..");
			//请求后台
			$.get("tovcode/vocde",pamar,function(data){
				
				var s = $.trim(data) ;
				if(s=="false"){
					$(".formtips").remove();
					var hint = "<span class='formtips onSuccess glyphicon glyphicon-exclamation-sign'></span>验证码有误";
					$("#yan2").append('<span class="formtips onSuccess glyphicon texts">'
							+ hint + '</span>');
				}else if(s=="falseW"){
					$("#formtips").remove();
					$("#tis").css("display","block");
					var hint = "<span class='formtips onSuccess glyphicon glyphicon glyphicon-minus-sign'></span>你输入的密码和账户名不匹配，是否<a href='#'><忘记密码?></a>";
					$("#tis").append('<span class="formtips onSuccess glyphicon texts">'
							+ hint + '</span>');
				}else{
					$("#tis").css("display","none");
					$("#login2").val("登录");
					//跳转
					alert(data)
					location.href=data;
					
				}
			});
		}
	});
	
	
	//验证码
	$("body").on("click","#img",function(){
		$.post("tovcode/vocde?getImg=getImg","",function(data){
			$(".vodeImg").empty();
			var s = ' <img alt=""  name="image" src="tovcode/vocde?getImg=getImg" id="img" >';
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
	$("#btnSendCode").removeAttr("disabled");// 启用按钮
	// 当前剩余秒数
	$("#btnSendCode").click(function(){
		var s = $("#phone");
		var $parent = $("#phoneOne");
		$parent.find(".formtips").remove();
		if(s.val()==""){
			var hint = "<span class='formtips onSuccess'><span class=' glyphicon glyphicon-exclamation-sign'><span></span>请输入手机号码";
			$parent.append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else if(!(s.val().match(/^(((13[0-9]{1})|159|153)+\d{8})$/))){
			var hint = "<span class='formtips onSuccess'><span class='glyphicon glyphicon-exclamation-sign'></span></span>手机号码有误！";
			$parent.append('<span class="formtips onSuccess glyphicon texts">'
					+ hint + '</span>');
		}else{
			curCount = count;
			// 设置button效果，开始计时
			$("#btnSendCode").attr("disabled", "true"); // 关闭按钮
			$("#btnSendCode").html(curCount + " 秒后重新获取"); // 启动计时器，1秒执行一次
			InterValObj = window.setInterval(SetRemainTime, 1000); // 获取表单输入的信息
			//var pamth = $("#froms").serialize();
			var phone = $("#phone").val(); //获取手机号码
			
			// 向后台发送表单输入的信息
			$.post("userAction/sendCode?uphone="+phone, "", function(data) {
				//alert(data)
			});
			
		}	
		
		
		
		
		
	});
	
		
	// timer处理函数
	function SetRemainTime() {
		if (curCount == 0) {
			window.clearInterval(InterValObj);// 停止计时器
			anNu = true ; //设置true
			$("#btnSendCode").removeAttr("disabled");// 启用按钮
			$("#btnSendCode").html("重新获取");
		} else {
			curCount--;
			$("#btnSendCode").html(curCount + " 秒后重新获取");
		}
	}
	
	//登录
	/*$("#login2").click(function(){
		
	});*/
	
	
	
});