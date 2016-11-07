package com.mall.util;
/**
 * ��ҳ
 */
import java.util.List;

/**
 * ��װ��ҳ���Ե���
 * @author Administrator
 *
 */
public class PageBean {
	
	private int cpage=1;//��ǰҳ
	private int showNum=3;//ÿҳ��ʾ����
	private int allNum=0;//�ܼ�¼����
	private int allPages=0;//��ҳ��
	
	private List showResult;//ÿҳҪ��ʾ������

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

	//�����ܵļ�¼��
	public void setAllNum(int allNum) {
		this.allNum = allNum;
		
		//�����ܼ�¼���������ҳ��
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







