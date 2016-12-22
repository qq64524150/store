package com.mall.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.entity.NavigationBar;
import com.mall.service.NavigationBarService;

/**
 * 这是导航栏的Action类 
 * @author Administrator
 *
 */

@Controller
@RequestMapping("/navigationBarAction")
public class NavigationBarAction {
	@Resource
	private NavigationBarService navigationBarService;

	
	@RequestMapping("/findAllNavigationBar")
	@ResponseBody
	public List<NavigationBar> findAllNavigationBar(){
		
		return navigationBarService.findAllNavigationBar() ;
	}
	
	
	public void setNavigationBarService(NavigationBarService navigationBarService) {
		this.navigationBarService = navigationBarService;
	}
	
	
	
}
