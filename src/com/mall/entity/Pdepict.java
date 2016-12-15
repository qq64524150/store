package com.mall.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 定义一个商品描述
 * @author Administrator
 *
 */
@Entity
@Table(name="tb_pdepict")
public class Pdepict implements Serializable{
	
	private String pdno	;				//id						
	//private String pdid	; 				//所属商品
	private String pdlevel ;			//级别	
	private String pdtaste ;			//口感
	private String pdsoberUp ;			//醒酒	
	private String pdvol ;				//含量
	private String pdspirit	;			//酒精	
	private String pdbreed ;			//品种
	private String colorur ;            //色泽
	private String pdyear ;				//年份		
	private String pdregion ;			//产区
	private String pdimagesDepict ;		//图片详细描述
	private String ptime ;				//时间
	private String pimagesReferral ;	//图片介绍（大小）
	
	//这个商品描述属于哪个商品
	private Product product ;
	
	public Pdepict() {
		super();
	}
	
	
	public Pdepict(String pdno, String pdlevel, String pdtaste, String pdsoberUp, String pdvol, String pdspirit,
			String pdbreed, String colorur, String pdyear, String pdregion, String pdimagesDepict, String ptime,
			String pimagesReferral, Product product) {
		super();
		this.pdno = pdno;
		this.pdlevel = pdlevel;
		this.pdtaste = pdtaste;
		this.pdsoberUp = pdsoberUp;
		this.pdvol = pdvol;
		this.pdspirit = pdspirit;
		this.pdbreed = pdbreed;
		this.colorur = colorur;
		this.pdyear = pdyear;
		this.pdregion = pdregion;
		this.pdimagesDepict = pdimagesDepict;
		this.ptime = ptime;
		this.pimagesReferral = pimagesReferral;
		this.product = product;
	}


	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="uuid.hex")
	public String getPdno() {
		return pdno;
	}
	public void setPdno(String pdno) {
		this.pdno = pdno;
	}
	public String getPdlevel() {
		return pdlevel;
	}
	public void setPdlevel(String pdlevel) {
		this.pdlevel = pdlevel;
	}
	public String getPdtaste() {
		return pdtaste;
	}
	public void setPdtaste(String pdtaste) {
		this.pdtaste = pdtaste;
	}
	public String getPdsoberUp() {
		return pdsoberUp;
	}
	public void setPdsoberUp(String pdsoberUp) {
		this.pdsoberUp = pdsoberUp;
	}
	public String getPdvol() {
		return pdvol;
	}
	public void setPdvol(String pdvol) {
		this.pdvol = pdvol;
	}
	public String getPdspirit() {
		return pdspirit;
	}
	public void setPdspirit(String pdspirit) {
		this.pdspirit = pdspirit;
	}
	public String getPdbreed() {
		return pdbreed;
	}
	public void setPdbreed(String pdbreed) {
		this.pdbreed = pdbreed;
	}
	public String getPdyear() {
		return pdyear;
	}
	public void setPdyear(String pdyear) {
		this.pdyear = pdyear;
	}
	public String getPdregion() {
		return pdregion;
	}
	public void setPdregion(String pdregion) {
		this.pdregion = pdregion;
	}
	public String getPdimagesDepict() {
		return pdimagesDepict;
	}
	public void setPdimagesDepict(String pdimagesDepict) {
		this.pdimagesDepict = pdimagesDepict;
	}
	public String getPtime() {
		return ptime;
	}
	public void setPtime(String ptime) {
		this.ptime = ptime;
	}
	public String getPimagesReferral() {
		return pimagesReferral;
	}
	public void setPimagesReferral(String pimagesReferral) {
		this.pimagesReferral = pimagesReferral;
	}
	
	
	
	public String getColorur() {
		return colorur;
	}

	public void setColorur(String colorur) {
		this.colorur = colorur;
	}

	@OneToOne(cascade={CascadeType.REFRESH,CascadeType.MERGE},fetch=FetchType.LAZY)
	@JoinColumn(name="product_ID")
	public Product getProduct() {
		return product;
	}
	
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
	
}
