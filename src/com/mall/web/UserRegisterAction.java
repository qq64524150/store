package com.mall.web;

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
		
		int code = (int) (1 + Math.random() * (10000 - 1 + 1));
		String s = null ;
		if(userService.findUserById(user)!=null){
			s =  "be";
			
		}else{
			if(user.getUphone().length()==11){
				try {
					s = new PhoneCode().phone(user.getUphone(),code);
					System.out.println(s);
					
				} catch (ApiException e) {
					e.printStackTrace();
				}
			}
		}
		
		return s ;
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
