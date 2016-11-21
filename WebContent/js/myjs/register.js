$(function() {

	// 验证号码
	var phones = "false";
	$("#phone").blur(function() {
		var $parent = $("#phoneOne");
		$parent.find(".formtips").remove();
				// 验证号码
		if ($(this).is("#phone")) {
			//禁止按钮
			$("#btnSendCode").attr("disabled", "true");
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
								var okMsg = "此号码可以注册"
								$parent.append('<span class="formtips onSuccess glyphicon glyphicon-ok-circle"></span><span class="formtips onSuccess glyphicon ok">'
												+ okMsg + '</span>');
							}else{
								var error = "此号码已注册"
									$parent.append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
														+ error + '</span>');
								
								
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
									.match(/^[a-zA-Z_]{1,15}[0-9a-zA-Z_]{4,15}$/))) {
						var error = "请输入至少6位的密码"
						$parent.append('<span class="formtips onSuccess glyphicon glyphicon-remove-circle"></span><span class="formtips onSuccess glyphicon error">'
								+ error + '</span>');
					} else {
						
						var okMsg = "正确"
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

						var okMsg = "正确"
						$parent.append('<span class="formtips onSuccess glyphicon glyphicon-ok-circle"></span><span class="formtips onSuccess glyphicon ok">'
								+ okMsg + '</span>');
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
	
	//默认按钮为禁止
	$("#btnSendCode").attr("disabled", "true");
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
			alert(data)
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
	
	//提交数据
	$("#tijiao").click(function(){
		var pamth = $("#froms").serialize();
		$.post("userAction/addUser",pamth,function(data){
			alert(data)
		});
	});
	
	
	
	
	
	
	
	
	
	
	
	
	

})
