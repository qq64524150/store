package com.mall.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 定义用户实体对象
 * @author Administrator
 *
 */

@Entity
@Table(name="tb_user")
public class User implements Serializable{
	
	private String uid ; 			//用户id
	private String uname ;			//真实姓名
	private String upwd	; 			//密码
	private String uusername ;		//会员名（自动生成）
	private int upoint ;			//会员积分
	private String uimages ;		//头像/默认
	private String uemail ;			//E-mail
	private String uphone ; 		//电话
	private String uuserID	;		//身份证
	private String ustate="3" ;		//状态（0/正常，1/禁止，2/已封，3/未完善,4/完善）					
	private Date utime	;			//时间
	private String usex	;			//性别
	private String ubrith ;			//出生日期
	private int uage	;			//年龄
	private String unick ;			//昵称
	private String urole ;			//角色
	
	public User() {
		super();
	}
	
	public User(String uid, String uname, String upwd, String uusername, int upoint, String uimages, String uemail,
			String uphone, String uuserID, String ustate, Date utime, String usex, String ubrith, int uage,
			String unick, String urole) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upwd = upwd;
		this.uusername = uusername;
		this.upoint = upoint;
		this.uimages = uimages;
		this.uemail = uemail;
		this.uphone = uphone;
		this.uuserID = uuserID;
		this.ustate = ustate;
		this.utime = utime;
		this.usex = usex;
		this.ubrith = ubrith;
		this.uage = uage;
		this.unick = unick;
		this.urole = urole;
	}
	
	@Id
	@GeneratedValue(generator="pk")
	@GenericGenerator(name="pk",strategy="uuid.hex")
	public String getUid() {
		return uid;
	}
	
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUusername() {
		return uusername;
	}
	public void setUusername(String uusername) {
		this.uusername = uusername;
	}
	public int getUpoint() {
		return upoint;
	}
	public void setUpoint(int upoint) {
		this.upoint = upoint;
	}
	public String getUimages() {
		return uimages;
	}
	public void setUimages(String uimages) {
		this.uimages = uimages;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUuserID() {
		return uuserID;
	}
	public void setUuserID(String uuserID) {
		this.uuserID = uuserID;
	}
	public String getUstate() {
		return ustate;
	}
	public void setUstate(String ustate) {
		this.ustate = ustate;
	}
	public Date getUtime() {
		return utime;
	}
	public void setUtime(Date utime) {
		this.utime = utime;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public String getUbrith() {
		return ubrith;
	}
	public void setUbrith(String ubrith) {
		this.ubrith = ubrith;
	}
	public int getUage() {
		return uage;
	}
	public void setUage(int uage) {
		this.uage = uage;
	}
	public String getUnick() {
		return unick;
	}
	public void setUnick(String unick) {
		this.unick = unick;
	}
	public String getUrole() {
		return urole;
	}
	public void setUrole(String urole) {
		this.urole = urole;
	}

}
