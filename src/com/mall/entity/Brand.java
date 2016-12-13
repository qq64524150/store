package com.mall.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 创建一个商品品牌实体类
 * @author Administrator
 *
 */
@Entity
@Table(name="tb_brand")
public class Brand {
	private int brno ;    ///id		
	private String brname	;  //品牌名
	private String brdp ;  //描述
	
	
	public Brand() {
		super();
	}
	public Brand(int brno, String brname, String brdp) {
		super();
		this.brno = brno;
		this.brname = brname;
		this.brdp = brdp;
	}
	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="increment")
	public int getBrno() {
		return brno;
	}
	public void setBrno(int brno) {
		this.brno = brno;
	}
	public String getBrname() {
		return brname;
	}
	public void setBrname(String brname) {
		this.brname = brname;
	}
	public String getBrdp() {
		return brdp;
	}
	public void setBrdp(String brdp) {
		this.brdp = brdp;
	}
 

	
	
	
}
