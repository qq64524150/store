package com.mall.dao.impl;
/**
 * 这是导航栏持久层 实现类
 */
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mall.dao.BaseDao;
import com.mall.dao.NavigationBarDao;
import com.mall.entity.NavigationBar;
@Repository
public class NavigationBarDaoImpl extends BaseDao implements NavigationBarDao {
	/**
	 * 查询出全部导航栏
	 */
	@Override
	public List<NavigationBar> findAllNavigationBar() {
		String hql = "from NavigationBar" ;
		return getSession().createQuery(hql).list();
	}

}
