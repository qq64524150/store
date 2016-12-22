package com.mall.service;

import java.util.List;

import com.mall.entity.NavigationBar;

/**
 * 这是导航栏的服务层 --接口
 * @author Administrator
 *
 */
public interface NavigationBarService {
	//添加
	public List<NavigationBar> findAllNavigationBar();
	
}
