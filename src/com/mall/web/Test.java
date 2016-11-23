package com.mall.web;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mall.entity.Role;
import com.mall.service.PermissionService;
import com.mall.service.RoleService;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

@Controller
@RequestMapping("/test")
public class Test {
	@Resource
	private PermissionService permissionService;
	@Resource
	private RoleService roleService;

	@RequestMapping("/go")
	@ResponseBody
	public String sendMessage2(String mobile, HttpServletRequest request) throws ApiException {
		System.out.println(mobile);

		// 官网的URL---必须是这个
		String url = "http://gw.api.taobao.com/router/rest";
		// 成为开发者，创建应用后系统会自动生成--前面图片中有说明
		String appkey = "23528650";
		// 创建应用后系统会自动生成--前面图片中有说明
		String secret = "9d36c75cef950a93151fdc4a26788c93";
		// 随机生成 num 位验证码
		int code = (int) (1 + Math.random() * (10000 - 1 + 1));
		Random r = new Random(new Date().getTime());

		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend("");
		req.setSmsType("normal");
		req.setSmsFreeSignName("波多尔名酒网");
		req.setSmsParamString("{number:'" + code + "'}");
		req.setRecNum(mobile);
		req.setSmsTemplateCode("SMS_25665742");
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
		return "ok";
	}

	// 测试
	@RequestMapping("/gotest")

	public String test02(HttpServletRequest request) {
		request.setAttribute("t", permissionService.findFunction());
		return "admin/index";
	}

	// 查询出指定功能
	@RequestMapping("/fun")
	@ResponseBody
	public List findFunctionById(int id) {
		System.out.println("id---" + id);
		return permissionService.findFunctionById(id);
	}

	// 测试
	@RequestMapping(value = "/funs")
	@ResponseBody
	public void findFunction(HttpServletResponse response, PrintWriter out) throws JsonProcessingException {

		Role r = roleService.findRole("1");
		System.out.println("角色" + r.getRoauthids());

		response.setHeader("Cache-Control", "no-cache");
		response.setContentType("text/text;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		List lost = permissionService.findper(r.getRoauthids(), "0");
		ObjectMapper mapper = new ObjectMapper();
		String s = mapper.writeValueAsString(lost);
		out.print(s);
		out.close();

	}

	public static void main(String[] args) throws ParseException {
		/*
		 * SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 * int i = getBetweenDay(sdf.parse("2016-11-21 19:24:21"),new Date());
		 * System.out.println(i); System.out.println(isInDate(new Date(),
		 * "00:00:00 ","00:01:00 "));
		 */
		//分钟差
		//Date date1 = new Date();
		SimpleDateFormat d = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date1= d.parse("2016/11/21 19:45:21");
		Date date2 = new Date();
		
		SimpleDateFormat format = new SimpleDateFormat("HH:mm");
		//System.out.println(format.format(date1));// 输出23 ： 50
		//System.out.println(format.format(date2));// 输出00： 20
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy/MM/dd/ HH:mm:ss");
		//System.out.println(format2.format(date1));// 输出2011/03/17/ 23:50:00
		//System.out.println(format2.format(date2));//输出2011/03/18/  00:20:00
													
		System.out.println((date2.getTime()-date1.getTime())/60/1000+ "分钟");//date2.getTime()得到的是毫秒，所以要除以60*1000
	}

	/**
	 * 得到两个日期相差的天数
	 */
	public static int getBetweenDay(Date date1, Date date2) {
		Calendar d1 = new GregorianCalendar();
		d1.setTime(date1);
		Calendar d2 = new GregorianCalendar();
		d2.setTime(date2);
		int days = d2.get(Calendar.DAY_OF_YEAR) - d1.get(Calendar.DAY_OF_YEAR);
		System.out.println("days=" + days);
		int y2 = d2.get(Calendar.YEAR);
		if (d1.get(Calendar.YEAR) != y2) {
			// d1 = (Calendar) d1.clone();
			do {
				days += d1.getActualMaximum(Calendar.DAY_OF_YEAR);
				d1.add(Calendar.YEAR, 1);
			} while (d1.get(Calendar.YEAR) != y2);
		}
		return days;
	}

	/**
	 * 判断时间是否在时间段内
	 * 
	 * @param date
	 *            当前时间 yyyy-MM-dd HH:mm:ss
	 * @param strDateBegin
	 *            开始时间 00:00:00
	 * @param strDateEnd
	 *            结束时间 00:05:00
	 * @return
	 */
	public static boolean isInDate(Date date, String strDateBegin, String strDateEnd) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String strDate = sdf.format(date);
		// 截取当前时间时分秒
		int strDateH = Integer.parseInt(strDate.substring(11, 13));
		int strDateM = Integer.parseInt(strDate.substring(14, 16));
		int strDateS = Integer.parseInt(strDate.substring(17, 19));
		// 截取开始时间时分秒
		int strDateBeginH = Integer.parseInt(strDateBegin.substring(0, 2));
		int strDateBeginM = Integer.parseInt(strDateBegin.substring(3, 5));
		int strDateBeginS = Integer.parseInt(strDateBegin.substring(6, 8));
		// 截取结束时间时分秒
		int strDateEndH = Integer.parseInt(strDateEnd.substring(0, 2));
		int strDateEndM = Integer.parseInt(strDateEnd.substring(3, 5));
		int strDateEndS = Integer.parseInt(strDateEnd.substring(6, 8));
		if ((strDateH >= strDateBeginH && strDateH <= strDateEndH)) {
			// 当前时间小时数在开始时间和结束时间小时数之间
			if (strDateH > strDateBeginH && strDateH < strDateEndH) {
				return true;
				// 当前时间小时数等于开始时间小时数，分钟数在开始和结束之间
			} else if (strDateH == strDateBeginH && strDateM >= strDateBeginM && strDateM <= strDateEndM) {
				return true;
				// 当前时间小时数等于开始时间小时数，分钟数等于开始时间分钟数，秒数在开始和结束之间
			} else if (strDateH == strDateBeginH && strDateM == strDateBeginM && strDateS >= strDateBeginS
					&& strDateS <= strDateEndS) {
				return true;
			}
			// 当前时间小时数大等于开始时间小时数，等于结束时间小时数，分钟数小等于结束时间分钟数
			else if (strDateH >= strDateBeginH && strDateH == strDateEndH && strDateM <= strDateEndM) {
				return true;
				// 当前时间小时数大等于开始时间小时数，等于结束时间小时数，分钟数等于结束时间分钟数，秒数小等于结束时间秒数
			} else if (strDateH >= strDateBeginH && strDateH == strDateEndH && strDateM == strDateEndM
					&& strDateS <= strDateEndS) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	/**
	 * 判断是否超过24小时
	 * 
	 * 
	 * 
	 * @param date1
	 * 
	 * @param date2
	 * 
	 * @return boolean
	 * 
	 * @throws Exception
	 * 
	 */

	public static boolean judgmentDate(String date1, String date2) throws Exception {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-M-d HH:mm:ss");

		Date start = sdf.parse(date1);

		Date end = sdf.parse(date2);

		long cha = end.getTime() - start.getTime();

		if (cha < 0) {

			return false;

		}

		double result = cha * 1.0 / (1000 * 60 * 60);

		if (result <= 24) {

			return true;

		} else {

			return false;

		}

	}

	public void setPermissionService(PermissionService permissionService) {
		this.permissionService = permissionService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

}
