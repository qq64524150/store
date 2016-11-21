package com.mall.web;

import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.entity.User;
import com.mall.service.UserService;
import com.mall.util.PhoneCode;
import com.taobao.api.ApiException;

@Controller
@RequestMapping("/userAction")
public class UserRegisterAction {
	@Resource
	private UserService userService ;
	
	/**
	 * 添加用户
	 * @param user 前端转来的user相关的信息
	 * @return 添加成功还是失败
	 */
	@RequestMapping("/addUser")
	@ResponseBody
	public String addUser(User user){
		String msg = "false";
		if(user!=null){
			user.setUusername("gld_"+user.getUphone().substring(6, 11));
			user.setUtime(new Date());
			if(userService.addUser(user)){
				msg = "true";
			}
			
		}
	
		
		return msg;
		
		
	}
	
	
	/**
	 * 发送验证码
	 * @param phone 手机号码
	 * @return 返回发送结果
	 * @throws ApiException  
	 */
	@RequestMapping("/sendCode")
	@ResponseBody
	public String sendCode(User user) throws ApiException{
		//定义一个变量，存储结果
		String s = null ; 
		//进行判断是否已经注册
		
		User u = userService.findUserById(user);
		
		//生成随机验证码
		int code = (int) (1 + Math.random() * (10000 - 1 + 1));
		//进行手机号码的合法验证
		String regExp = "^(((13[0-9]{1})|159|153)+\\d{8})$";  
		Pattern p = Pattern.compile(regExp);  
		Matcher m = p.matcher(user.getUphone());  
		//进行判断是否合法
		if(m.find()){
			s = new PhoneCode().phone(user.getUphone(),code);
		}
		//返回
		return s ;
	}
	/**
	 *进行查询号码是否存在
	 * @param user
	 * @return
	 */
	@RequestMapping("/isFindByPhone")
	@ResponseBody
	public String isFindByPhone(User user){
		
		String msg = "false";
		
		String regExp = "^(((13[0-9]{1})|159|153)+\\d{8})$";  
		Pattern p = Pattern.compile(regExp);  
		Matcher m = p.matcher(user.getUphone());  
		//进行判断是否合法
		if(m.find()){
			User u = userService.findUserById(user);
			if(!(u!=null)){
				msg = "true";
			}
		}
		
		return msg ;
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
