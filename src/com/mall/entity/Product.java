package com.mall.entity;

import java.beans.Transient;
import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * 创建一个商品实体对象
 * @author Administrator
 *
 */
@Entity
@Table(name="tb_product")
@JsonIgnoreProperties(value={"pdepict"})
public class Product implements Serializable{
	private String pno	;			//id			
	//private String pdepict ;    	//商品描述
	private String pdis	;			//商品折扣
	private int pisExist	;		//是否存在活动(0,正常，1活动)
	private String ptype ;			//国家
	private String pSelingPrice ;	//实时商品销售价
	private String pprice ;			//商品进价
	private String pbrand ;			//商品品牌
	private String pname ;			//商品名称
	private String pPinkage	;		//是否包邮
	private String pstate ;			//状态（上架/下架/无货）
	private int pnumber ;			//数量
	private String ptime ;			//时间
	private String pimage ;			//商品图片
	private String pheat = "0";			//购买的数量
	private int bitPdepict = 0;        //是否添加了商品描述 0/1
	
	private String pdate_from ;     //
	private String pdate_to ;
	
	//进行和商品描述一对一关联
	private Pdepict pdepict ;
	
	public Product() {
		super();
	}
	
	

	public Product(String pno, String pdis, int pisExist, String ptype, String pSelingPrice, String pprice,
			String pbrand, String pname, String pPinkage, String pstate, int pnumber, String ptime, String pimage,
			String pheat, int bitPdepict, String pdate_from, String pdate_to, Pdepict pdepict) {
		super();
		this.pno = pno;
		this.pdis = pdis;
		this.pisExist = pisExist;
		this.ptype = ptype;
		this.pSelingPrice = pSelingPrice;
		this.pprice = pprice;
		this.pbrand = pbrand;
		this.pname = pname;
		this.pPinkage = pPinkage;
		this.pstate = pstate;
		this.pnumber = pnumber;
		this.ptime = ptime;
		this.pimage = pimage;
		this.pheat = pheat;
		this.bitPdepict = bitPdepict;
		this.pdate_from = pdate_from;
		this.pdate_to = pdate_to;
		this.pdepict = pdepict;
	}



	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="uuid.hex")
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getPdis() {
		return pdis;
	}
	public void setPdis(String pdis) {
		this.pdis = pdis;
	}
	public int getPisExist() {
		return pisExist;
	}
	public void setPisExist(int pisExist) {
		this.pisExist = pisExist;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getpSelingPrice() {
		return pSelingPrice;
	}
	public void setpSelingPrice(String pSelingPrice) {
		this.pSelingPrice = pSelingPrice;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPbrand() {
		return pbrand;
	}
	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getpPinkage() {
		return pPinkage;
	}
	public void setpPinkage(String pPinkage) {
		this.pPinkage = pPinkage;
	}
	public String getPstate() {
		return pstate;
	}
	public void setPstate(String pstate) {
		this.pstate = pstate;
	}
	public int getPnumber() {
		return pnumber;
	}
	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}
	public String getPtime() {
		return ptime;
	}
	public void setPtime(String ptime) {
		this.ptime = ptime;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public String getPheat() {
		return pheat;
	}
	public void setPheat(String pheat) {
		this.pheat = pheat;
	}
	public int getBitPdepict() {
		return bitPdepict;
	}
	public void setBitPdepict(int bitPdepict) {
		this.bitPdepict = bitPdepict;
	}
	
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="product")
	public Pdepict getPdepict() {
		return pdepict;
	}
	public void setPdepict(Pdepict pdepict) {
		this.pdepict = pdepict;
	}
	
	
	
	@Transient
	public String getPdate_from() {
		return pdate_from;
	}
	public void setPdate_from(String pdate_from) {
		this.pdate_from = pdate_from;
	}
	
	
	
	@Transient
	public String getPdate_to() {
		return pdate_to;
	}
	public void setPdate_to(String pdate_to) {
		this.pdate_to = pdate_to;
	}
	
	
	
}
