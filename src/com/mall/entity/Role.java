package com.mall.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 创建角色实体对象
 * @author Administrator
 *
 */

@Entity
@Table(name="tb_role")
public class Role implements Serializable {
	
	private String rono ; //编号
	private String roname ; //名称
	private String roauthids ; //拥有的权限
	private String rodescrip ; //描述
	
	
	public Role() {
		super();
	}
	public Role(String rono, String roname, String roauthids, String rodescrip) {
		super();
		this.rono = rono;
		this.roname = roname;
		this.roauthids = roauthids;
		this.rodescrip = rodescrip;
	}
	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="increment")
	public String getRono() {
		return rono;
	}
	public void setRono(String rono) {
		this.rono = rono;
	}
	public String getRoname() {
		return roname;
	}
	public void setRoname(String roname) {
		this.roname = roname;
	}
	public String getRoauthids() {
		return roauthids;
	}
	public void setRoauthids(String roauthids) {
		this.roauthids = roauthids;
	}
	public String getRodescrip() {
		return rodescrip;
	}
	public void setRodescrip(String rodescrip) {
		this.rodescrip = rodescrip;
	}
	
	
	
	
	
	
}
