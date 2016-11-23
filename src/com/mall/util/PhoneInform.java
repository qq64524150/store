package com.mall.util;

import java.util.Date;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class PhoneInform {

	public  String Infrom(String phone,String date, String usenName) throws ApiException{
		// 官网的URL---必须是这个
		String url = "http://gw.api.taobao.com/router/rest";
		// 成为开发者，创建应用后系统会自动生成--前面图片中有说明
		String appkey = "23528650";
		// 创建应用后系统会自动生成--前面图片中有说明
		String secret = "9d36c75cef950a93151fdc4a26788c93";
		
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend( "" );
		req.setSmsType( "normal" );
		req.setSmsFreeSignName( "波多尔名酒网" );
		req.setSmsParamString(  "{date:'"+date+"',name:'"+usenName+"'}" );
		req.setRecNum( phone );
		req.setSmsTemplateCode( "SMS_27655051" );
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		//System.out.println(rsp.getBody());
		return rsp.getBody();
	}
	
}
