package com.mall.util;

import java.util.Date;
import java.util.Random;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class PhoneCode {

	public String phone(String phone,int code) throws ApiException {

		// 官网的URL---必须是这个
		String url = "http://gw.api.taobao.com/router/rest";
		// 成为开发者，创建应用后系统会自动生成--前面图片中有说明
		String appkey = "23528650";
		// 创建应用后系统会自动生成--前面图片中有说明
		String secret = "9d36c75cef950a93151fdc4a26788c93";
		// 随机生成 num 位验证码
		//int code = (int) (1 + Math.random() * (10000 - 1 + 1));
		///Random r = new Random(new Date().getTime());

		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend("");
		req.setSmsType("normal");
		req.setSmsFreeSignName("格兰蒂名酒网");
		req.setSmsParamString("{number:'" + code + "'}");
		req.setRecNum(phone);
		req.setSmsTemplateCode("SMS_25665742");
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		
		return rsp.getBody();

	}

}
