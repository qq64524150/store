package com.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mall.dao.BaseDao;
import com.mall.dao.UserDao;
import com.mall.entity.User;
import com.mall.util.PageBean;

@Repository
public class UserDaoImpl extends BaseDao implements UserDao {
	//添加用户
	@Override
	public boolean addUser(User user) {
		return addObject(user);
	}
	//查询用户
	@Override
	public List findUserById(User user) {
	
		String hql = "from User u where u.uphone = '"+user.getUphone()+"' "
				+ "or u.uname = '"+user.getUname()+"' or u.uusername = '"+user.getUname()+"' "
						+ "or u.uemail = '"+user.getUname()+"' or u.uphone = '"+user.getUname()+"' ";
		List list = getSession().createQuery(hql).list();
		return list ;
		
	}

	@Override
	public boolean updateUser(User user) {
		return false;
	}

	@Override
	public boolean deleteUser(User user) {
		return false;
	}
	
	@Override
	public List findAllUser(PageBean pageBean,String hql) {
		return null;
	}

}
