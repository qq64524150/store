package com.mall.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 创建权限实体
 * @author Administrator
 *
 */

@Entity
@Table(name="tb_permission")
public class Permission {
	
	private int perno ; // 权限编号  
	private String pername ; //权限名称	
	private String perurl ; //权限路径
	private String perioce ; //图标
	private int persuperior ; //上级节点	
	private int pisNavigation ; //是否显示导航	
	private String  perdepict ; //权限描述
	private String perstatus ; //权限状态
	
	public Permission() {
		super();
	}
	//构造方法
	public Permission(int perno, String pername, String perurl, String perioce, int persuperior, int pisNavigation,
			String perdepict, String perstatus) {
		super();
		this.perno = perno;
		this.pername = pername;
		this.perurl = perurl;
		this.perioce = perioce;
		this.persuperior = persuperior;
		this.pisNavigation = pisNavigation;
		this.perdepict = perdepict;
		this.perstatus = perstatus;
	}
	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="increment")
	public int getPerno() {
		return perno;
	}
	
	public void setPerno(int perno) {
		this.perno = perno;
	}
	public String getPername() {
		return pername;
	}
	public void setPername(String pername) {
		this.pername = pername;
	}
	public String getPerurl() {
		return perurl;
	}
	public void setPerurl(String perurl) {
		this.perurl = perurl;
	}
	public String getPerioce() {
		return perioce;
	}
	public void setPerioce(String perioce) {
		this.perioce = perioce;
	}
	public int getPersuperior() {
		return persuperior;
	}
	public void setPersuperior(int persuperior) {
		this.persuperior = persuperior;
	}
	public int getPisNavigation() {
		return pisNavigation;
	}
	public void setPisNavigation(int pisNavigation) {
		this.pisNavigation = pisNavigation;
	}
	public String getPerdepict() {
		return perdepict;
	}
	public void setPerdepict(String perdepict) {
		this.perdepict = perdepict;
	}

	public String getPerstatus() {
		return perstatus;
	}

	public void setPerstatus(String perstatus) {
		this.perstatus = perstatus;
	}
	
	
	
	

	
	
}
