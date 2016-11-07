package com.mall.util;
/**
 * 分页
 */
import java.util.List;

/**
 * 封装分页属性的类
 * @author Administrator
 *
 */
public class PageBean {
	
	private int cpage=1;//当前页
	private int showNum=3;//每页显示条数
	private int allNum=0;//总记录条数
	private int allPages=0;//总页数
	
	private List showResult;//每页要显示的数据

	public PageBean() {
		super();
	}

	public PageBean(int cpage, int showNum, int allNum, int allPages,
			List showResult) {
		super();
		this.cpage = cpage;
		this.showNum = showNum;
		this.allNum = allNum;
		this.allPages = allPages;
		this.showResult = showResult;
	}

	public int getCpage() {
		return cpage;
	}

	public void setCpage(int cpage) {
		this.cpage = cpage;
	}

	public int getShowNum() {
		return showNum;
	}

	public void setShowNum(int showNum) {
		this.showNum = showNum;
	}

	public int getAllNum() {
		return allNum;
	}

	//设置总的记录数
	public void setAllNum(int allNum) {
		this.allNum = allNum;
		
		//根据总记录数计算出总页数
		if(this.allNum%this.showNum==0)
			this.allPages=this.allNum/this.showNum;
		else
			this.allPages=this.allNum/this.showNum+1;
	}

	public int getAllPages() {
		return allPages;
	}

	public void setAllPages(int allPages) {
		this.allPages = allPages;
	}

	public List getShowResult() {
		return showResult;
	}

	public void setShowResult(List showResult) {
		this.showResult = showResult;
	}
}







