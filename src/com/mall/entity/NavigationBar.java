package com.mall.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 定义一个导航栏实体对象
 * @author Administrator
 *
 */

@Entity
@Table(name="tb_navigationBar")
public class NavigationBar {
	private int nno ;   				//id
	private String nAllCommType ; 		//全部商品类型，
	private String nIndex ; 			//首页，
	private String nHot ; 				//热门商品，
	private String nNow ; 				//新品，
	private String nSnapUp ; 			//抢购，
	private String nGiftBox ; 			//礼盒专区，
	private String nTds ;  				//名庄特卖
	private int nStatus = 0; 			//状态（0正常，1新，2热门，3/失效）
	
	
	
	public NavigationBar() {
		super();
	}



	public NavigationBar(int nno, String nAllCommType, String nIndex, String nHot, String nNow, String nSnapUp,
			String nGiftBox, String nTds, int nStatus) {
		super();
		this.nno = nno;
		this.nAllCommType = nAllCommType;
		this.nIndex = nIndex;
		this.nHot = nHot;
		this.nNow = nNow;
		this.nSnapUp = nSnapUp;
		this.nGiftBox = nGiftBox;
		this.nTds = nTds;
		this.nStatus = nStatus;
	}


	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="increment")
	public int getNno() {
		return nno;
	}



	public void setNno(int nno) {
		this.nno = nno;
	}



	public String getnAllCommType() {
		return nAllCommType;
	}



	public void setnAllCommType(String nAllCommType) {
		this.nAllCommType = nAllCommType;
	}



	public String getnIndex() {
		return nIndex;
	}



	public void setnIndex(String nIndex) {
		this.nIndex = nIndex;
	}



	public String getnHot() {
		return nHot;
	}



	public void setnHot(String nHot) {
		this.nHot = nHot;
	}



	public String getnNow() {
		return nNow;
	}



	public void setnNow(String nNow) {
		this.nNow = nNow;
	}



	public String getnSnapUp() {
		return nSnapUp;
	}



	public void setnSnapUp(String nSnapUp) {
		this.nSnapUp = nSnapUp;
	}



	public String getnGiftBox() {
		return nGiftBox;
	}



	public void setnGiftBox(String nGiftBox) {
		this.nGiftBox = nGiftBox;
	}



	public String getnTds() {
		return nTds;
	}



	public void setnTds(String nTds) {
		this.nTds = nTds;
	}



	public int getnStatus() {
		return nStatus;
	}



	public void setnStatus(int nStatus) {
		this.nStatus = nStatus;
	}
	
	
	
	
	
	
	
	
	
}
