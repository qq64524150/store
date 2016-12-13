package com.mall.entity;

import javax.ejb.EJB;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/*
 * 定义一个实体类 -- 商品类型
 */
@Entity
@Table(name="tb_country")
public class Country {
	
	private int ptno	; //id		
	private String ptname	; //类型名
	private String ptdp ; //描述
	
	public Country() {
		super();
	}
	
	public Country(int ptno, String ptname, String ptdp) {
		super();
		this.ptno = ptno;
		this.ptname = ptname;
		this.ptdp = ptdp;
	}
	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="increment")
	public int getPtno() {
		return ptno;
	}
	public void setPtno(int ptno) {
		this.ptno = ptno;
	}
	public String getPtname() {
		return ptname;
	}
	public void setPtname(String ptname) {
		this.ptname = ptname;
	}
	public String getPtdp() {
		return ptdp;
	}
	public void setPtdp(String ptdp) {
		this.ptdp = ptdp;
	}
	
	
	

	
	
	
}
