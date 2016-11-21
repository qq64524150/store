package com.mall.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mall.dao.UserDao;
import com.mall.entity.User;
import com.mall.service.UserService;
import com.mall.util.PageBean;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao UserDao;

	// 添加用户
	@Override
	public boolean addUser(User user){
		return UserDao.addUser(user);
	}
	//查询用户
	@Override
	public User findUserById(User user) {
		User u = null ;
		List<User> list=  UserDao.findUserById(user);
		if(list.size()>0){
			u = list.get(0);
		}
		
		return u ;
		
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List findAllUser(PageBean pageBean, User user) {
		// TODO Auto-generated method stub
		return null;
	}

	public void setUserDao(UserDao userDao) {
		UserDao = userDao;
	}

}
