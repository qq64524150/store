package com.mall.service.impl;
/**
 * 这是导航栏的服务层 实现类
 */
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mall.dao.NavigationBarDao;
import com.mall.entity.NavigationBar;
import com.mall.service.NavigationBarService;
@Service
public class NavigationBarServicImpl implements NavigationBarService {
	@Resource
	private NavigationBarDao navigationBarDao ;
	
	//查询全部
	@Override
	public List<NavigationBar> findAllNavigationBar() {
		
		return navigationBarDao.findAllNavigationBar();
	}
	
	
	public void setNavigationBarDao(NavigationBarDao navigationBarDao) {
		this.navigationBarDao = navigationBarDao;
	}
	
	
	
	
	
	
	
	
	
}
