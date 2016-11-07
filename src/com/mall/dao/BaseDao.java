package com.mall.dao;

import java.io.Serializable;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
@Component
public class BaseDao {
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;

	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//修改
	public boolean updateObject(Object obj){
		try{
			getSession().update(obj);
			return true;
		} catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	//添加
	public boolean addObject(Object obj){
		try{
			getSession().save(obj);
			return true;
		} catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	//删除
	public boolean delObject(Object obj){
		try{
			getSession().delete(obj);
			return true;
		} catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	//根据id进行查询
	public Object getObject(Object obj,Serializable s){
		try{
			return getSession().get(obj.getClass(),s);
		} catch(Exception e){
			return null;
		}
	}
}
