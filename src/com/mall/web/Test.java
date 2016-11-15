package com.mall.web;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mall.entity.Role;
import com.mall.service.PermissionService;
import com.mall.service.RoleService;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

@Controller
@RequestMapping("/test")
public class Test {
	@Resource
	private PermissionService permissionService;
	@Resource
	private RoleService roleService ;
	@RequestMapping("/go")
	@ResponseBody
	public String sendMessage2(String mobile,HttpServletRequest request) throws ApiException { 
		System.out.println(mobile);
	
		//官网的URL---必须是这个 
		String url="http://gw.api.taobao.com/router/rest";   
		//成为开发者，创建应用后系统会自动生成--前面图片中有说明 
		String appkey="23528650";   
		//创建应用后系统会自动生成--前面图片中有说明 
		String secret="9d36c75cef950a93151fdc4a26788c93"; 
		//随机生成 num 位验证码 
		int code = (int)(1+Math.random()*(10000-1+1)) ;
		Random r = new Random(new Date().getTime()); 
		
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend( "" );
		req.setSmsType( "normal" );
		req.setSmsFreeSignName( "波多尔名酒网" );
		req.setSmsParamString( "{number:'"+code+"'}" );
		req.setRecNum( mobile );
		req.setSmsTemplateCode( "SMS_25665742" );
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
		return "ok" ;
	}


	//测试
	@RequestMapping("/gotest")
	
	public String test02(HttpServletRequest request){
		request.setAttribute("t", permissionService.findFunction());
		return "admin/index" ;
	}
	//查询出指定功能
	@RequestMapping("/fun")
	@ResponseBody
	public List findFunctionById(int id ){
		System.out.println("id---"+id);
		return permissionService.findFunctionById(id);
	}
	
	//测试
	@RequestMapping(value = "/funs")
	@ResponseBody
	public void findFunction(HttpServletResponse response,PrintWriter out) throws JsonProcessingException{
		response.setHeader("Cache-Control", "no-cache");   
        response.setContentType("text/text;charset=UTF-8");  
        response.setCharacterEncoding("UTF-8");  
		List lost =  permissionService.findper("0,1,2,3,4,5,6,7,8,8,9,10", "0");
		ObjectMapper mapper = new ObjectMapper();
		String s = mapper.writeValueAsString(lost);
		out.print(s);
		out.close();
	}
	
	
	
	public void setPermissionService(PermissionService permissionService) {
		this.permissionService = permissionService;
	}


	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
	
	
	
}
