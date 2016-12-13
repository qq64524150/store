package com.mall.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 定义一个类 -- 商品销售类型
 * @author Administrator
 *
 */
@Entity
@Table(name="tb_pstype")
public class Pstype {
	private int pstno	;//id	
	private String pstname	; //销售类型	
	private String pstdp ; //描述
	
	
	public Pstype() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Pstype(int pstno, String pstname, String pstdp) {
		super();
		this.pstno = pstno;
		this.pstname = pstname;
		this.pstdp = pstdp;
	}
	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="increment")
	public int getPstno() {
		return pstno;
	}
	public void setPstno(int pstno) {
		this.pstno = pstno;
	}
	public String getPstname() {
		return pstname;
	}
	public void setPstname(String pstname) {
		this.pstname = pstname;
	}
	public String getPstdp() {
		return pstdp;
	}
	public void setPstdp(String pstdp) {
		this.pstdp = pstdp;
	}
	
	
	
	
    

	
}
