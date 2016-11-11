package com.mall.web;

import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

@Controller
@RequestMapping("/test")
public class Test {
	@RequestMapping("/go")
	@ResponseBody
	public String sendMessage2(String mobile,HttpServletRequest request) throws ApiException { 
		
		//官网的URL---必须是这个 
		String url="http://gw.api.taobao.com/router/rest";   
		//成为开发者，创建应用后系统会自动生成--前面图片中有说明 
		String appkey="23528650";   
		//创建应用后系统会自动生成--前面图片中有说明 
		String secret="9d36c75cef950a93151fdc4a26788c93"; 
		//随机生成 num 位验证码 
		String code="";
		Random r = new Random(new Date().getTime()); 
		
		
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend( "" );
		req.setSmsType( "normal" );
		req.setSmsFreeSignName( "个人测试" );
		req.setSmsParamString( "{number:'2121'}" );
		req.setRecNum( "13217595955" );
		req.setSmsTemplateCode( "SMS_25735707" );
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
		return "ok" ;
	}
}
