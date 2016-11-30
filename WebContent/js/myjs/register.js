$(function() {

	// 验证号码
	var phones = "false";
	$("#phone").blur(function() {
		var $parent = $("#phoneOne");
		$parent.find(".formtips").remove();
		
		var phone = false ;
		var pwd = false ;
		var pwd2 = false ;
		var yan = false ;
		// 验证号码
		if ($(this).is("#phone")) {
			
				if(this.value == ""){
					var hint = "请输入手机号码";
					$parent.append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
							+ hint + '</span>');
				}else if (!(this.value != "" && this.value.match(/^(((13[0-9]{1})|159|153)+\d{8})$/))) {
					var error = "请输入正确的手机号码"
					$parent.append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
										+ error + '</span>');
				} else {
						var phone = this.value; //获取手机号码
						// 向后台发送表单输入的信息
						$.post("userAction/isFindByPhone?uphone="+phone, "", function(data) {
							if(data=="true"){
								$("#btnSendCode").removeAttr("disabled");// 启用按钮
								phones = "true";
								phone = true ; 
								var okMsg = "此号码可以注册"
								$parent.append('<span class="formtips onSuccess glyphicon glyphicon-ok-circle"></span><span class="formtips onSuccess glyphicon ok">'
												+ okMsg + '</span>');
							}else{
								var error = "此号码已注册"
								$("#btnSendCode").removeAttr("disabled");// 启用按钮
								$parent.append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
													+ error + '</span>');
							
								//禁止按钮
								$("#btnSendCode").attr("disabled", "true");
							}
						});
						
					}

				}
			}).keyup(function() {
		$(this).triggerHandler("blur");
	}).focus(function() {
		$(this).triggerHandler("blur");
	});

	// 验证密码
	$("#exampleInputPassword1").blur(function() {
				var $parent = $("#pwd");
				$parent.find(".formtips").remove();
				
				// 验证密码
				if ($(this).is("#exampleInputPassword1")) {
					if(this.value == ""){
						var hint = "请输入字母数字组合的密码";
						$parent.append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
								+ hint + '</span>');
					}else if ( !(this.value != "" && this.value
									.match(/^[a-zA-Z_]{1,15}[0-9a-zA-Z_]{5,15}$/))) {
						var error = "请输入至少6位的密码"
						$parent.append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
								+ error + '</span>');
					} else {
						
						var okMsg = "正确";
						pwd = true ;
						$parent.append('<span class="formtips onSuccess glyphicon glyphicon-ok-circle"></span><span class="formtips onSuccess glyphicon ok">'
								+ okMsg + '</span>');
					}

				}
			}).keyup(function() {
		$(this).triggerHandler("blur");
	}).focus(function() {
		$(this).triggerHandler("blur");
	});

	// 确认密码
	$("#exampleInputPassword2").blur(function() {
				var $exampleInputPassword1 = $("#exampleInputPassword1").val();

				var $parent = $("#pwd2");
				$parent.find(".formtips").remove();
				// 确认密码
				if ($(this).is("#exampleInputPassword2")) {
					if(this.value == ""){
						var hint = "请再次输入密码";
						$parent.append('<span class="formtips onSuccess glyphicon glyphicon-exclamation-sign"></span><span class="formtips onSuccess glyphicon texts">'
								+ hint + '</span>');
					}else if (this.value != $exampleInputPassword1) {
						var error = "密码不一致"
						$parent.append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
								+ error + '</span>');
					} else {
						var okMsg = "正确";
						pwd2 = true ;
						$parent.append('<span class="formtips onSuccess glyphicon glyphicon-ok-circle"></span><span class="formtips onSuccess glyphicon ok">'
								+ okMsg + '</span>');
						
						//进行验证的判断
						yan = true ;
						if(phone && pwd && pwd2 && yan){
							$("#tijiao").removeAttr("disabled");// 启用按钮
						}
						
					}

				}
			}).keyup(function() {
		$(this).triggerHandler("blur");
	}).focus(function() {
		$(this).triggerHandler("blur");
	});
	

	

	//验证码发送
	
	var InterValObj;
	// timer变量，控制时间
	var count = 60; // 间隔函数，1秒执行 
	var curCount;
	// 当前剩余秒数
	
	//默认
	$("#btnSendCode").removeAttr("disabled");// 启用按钮
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
			$("#btnSendCode").removeAttr("disabled");// 启用按钮
			$("#btnSendCode").html("重新获取");
		} else {
			curCount--;
			$("#btnSendCode").html(curCount + " 秒后重新获取");
		}
	}
	/*
	 * 条款是否选中
	 * */
	var c =  $("#tiao").is(":checked");
	
	
	//提交数据
	//$("#tijiao").removeAttr("disabled");// 启用按钮
	$("#tijiao").attr("disabled", "true");
	$("#tijiao").click(function(){
		if($("#yan").html()==""){
			var error = "请输入验证码"
			$("#yan").html(""); //清空
			$("#yan").append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
					+ error + '</span>');
		}else if(!($("#yan").html().match(/^[0-9]{4}$/))){
			var error = "验证码格式有误"
			$("#yan").html(""); //清空
			$("#yan").append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
					+ error + '</span>');
		}else if(!c){
			//显示
			$("#tiaoKunag").css("display","block");
			var error = "请接受波多尔服务条款"
				$("#tiaoKunag").html(""); //清空
			$("#tiaoKunag").append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
						+ error + '</span>');
		}else{
			//改变注册
			$("#tijiao").attr("disabled", "true"); //禁用按钮
			$("#tijiao").val("正在提交注册信息...");
			//隐藏
			$("#tiaoKunag").css("display","none");
			var pamth = $("#froms").serialize();
			$.post("userAction/addUser",pamth,function(data){
				alert(data)
				if(data=="code"){
					var error = "验证码错误"
						$("#yan").html(""); //清空
						$("#yan").append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
								+ error + '</span>');
						$("#tijiao").removeAttr("disabled");// 启用按钮
						$("#tijiao").val("立即注册");
				}else if(data == "noTime"){
					var error = "验证码已过期"
						$("#yan").html(""); //清空
						$("#yan").append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
								+ error + '</span>');
						$("#tijiao").removeAttr("disabled");// 启用按钮
						$("#tijiao").val("立即注册");
				}
				
				
			});
		}
		
		
	});
	
	

	
	

})
