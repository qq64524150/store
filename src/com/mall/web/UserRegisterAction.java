package com.mall.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mall.entity.Role;
import com.mall.entity.User;
import com.mall.service.PermissionService;
import com.mall.service.RoleService;
import com.mall.service.UserService;
import com.mall.util.PhoneCode;
import com.mall.util.PhoneInform;
import com.taobao.api.ApiException;

@Controller
@RequestMapping("/userAction")
public class UserRegisterAction {
	@Resource
	private UserService userService;
	@Resource
	private RoleService roleService;
	@Resource
	private PermissionService permissionService;
	//存放验证码
	private int phoneCode;
	//存放时间
	private Date oldDate ;
	
	/**
	 * 添加用户
	 * 
	 * @param user 前端转来的user相关的信息
	 * @param phoneCode 验证码
	 * @return 返回相应结果
	 */
	
	@RequestMapping("/addUser")
	@ResponseBody
	public String addUser(User user, int phoneCode) {
		//存放结果
		String msg = "false"; //添加失败
		//进行判断验证码是否相等
		if (phoneCode == getPhoneCode()) {
			//进行判断验证码是否过期  -- 10分钟
			Date date1= getOldDate(); //获取旧的时间
			Date date2 = new Date();  //获取新的时间	
			//进行时间差的判断 如果在10分钟内就通过
			if(((date2.getTime()-date1.getTime())/60/1000)<=10){
				//进行判断前端传来的数据是否为空
				if (user.getUphone() != null || user.getUphone().length()>=11) {
					//根据手机号码进行自动生成用户名
					user.setUusername("bde_" + user.getUphone().substring(6, 11));
					user.setUtime(new Date()); //设置时间
					//添加到数据库，并返回结果
					if (userService.addUser(user)) {
						//给该用户发短信
						try {
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
							new PhoneInform().Infrom(user.getUphone(),sdf.format(date2),":"+user.getUusername());
							msg = "true"; //添加成功
						} catch (ApiException e) {
							System.out.println("发送出错");
							e.printStackTrace();
						}
					}
				}
			}else{
				msg = "noTime"; //验证码过期
			}

		}else{
			msg = "code"; //验证码错误
		}
			
		return msg;

	}
	
	/**
	 * 发送验证码
	 * 
	 * @param phone
	 *            手机号码
	 * @return 返回发送结果
	 * @throws ApiException
	 */
	@RequestMapping("/sendCode")
	@ResponseBody
	public String sendCode(User user) throws ApiException {
		// 定义一个变量，存储结果
		String s = null;
		// 进行判断是否已经注册
		User u = userService.findUserById(user);
		// 生成随机验证码
		int code = (int) (1 + Math.random() * (1000000 - 1 + 1));
		// 进行手机号码的合法验证
		String regExp = "^(((13[0-9]{1})|159|153)+\\d{8})$";
		//进行验证码
		Pattern p = Pattern.compile(regExp);
		Matcher m = p.matcher(user.getUphone());
		// 进行判断是否合法
		if (m.find()) {
			setPhoneCode(code); // 设置验证码
			setOldDate(new Date()); //设置时间
			s = new PhoneCode().phone(user.getUphone(), code);
		}
		// 返回
		return s;
	}
	
	/**
	 * 进行查询号码是否存在
	 * 
	 * @param user 用户信息
	 * @return false/true 
	 */
	@RequestMapping("/isFindByPhone")
	@ResponseBody
	public String isFindByPhone(User user) {
		String msg = "false";
		String regExp = "^(((13[0-9]{1})|159|153)+\\d{8})$";
		Pattern p = Pattern.compile(regExp);
		Matcher m = p.matcher(user.getUphone());
		// 进行判断是否合法
		if (m.find()) {
			User u = userService.findUserById(user);
			if (!(u != null)) {
				msg = "true";
			}
		}
		return msg;
	}
	
	//用户登录
	@RequestMapping("/login")
	@ResponseBody
	public String phoneLogin(HttpServletRequest req , HttpServletResponse response,User user,int code) throws JsonProcessingException{
		String msg = null ;
		//进行验证码判断
		if(getPhoneCode()==code){
			//进行验证码的数据判断
			//进行判断验证码是否过期  -- 10分钟
			Date date1= getOldDate(); //获取旧的时间
			Date date2 = new Date();  //获取新的时间	
			//10分钟内
			if(((date2.getTime()-date1.getTime())/60/1000)<=10){
				//进行登录操作 -- 密码匹配
				User u = userService.pwd(user);
				//把查询出了的谢谢存放到会话中
				if(u!=null){
					//设置在会话中
					req.getSession().setAttribute("userInfo", u);
					
					//进行登录
					//进行查询该用户的权限是什么
					Role r = roleService.findRole(u.getUrole());
					req.getSession().setAttribute("userRole", r);
					
					if(r.getRono().equals("1")){
						System.out.println("有身份");
						//跳转
						msg = "admin/index.jsp";
					}else{
						msg = "index.jsp";
					}
					
					
				}else{
					msg = "falseW";
				}
			}else{
				msg = "falseY";
			}
			
		}else{
			msg = "false";
		}
		return msg ;
	}
	
	@RequestMapping("/funs")
	@ResponseBody
	//获取菜单
	public void getRole(HttpServletRequest req ,HttpServletResponse response, PrintWriter out){
		
		//获取会话中的信息
		User user = (User) req.getSession().getAttribute("userInfo");
		System.out.println("菜单:手机号"+user.getUphone());
		
		if(user!=null && !(user.equals(""))){
			Role r = roleService.findRole(user.getUrole());
			System.out.println("角色" + r.getRoauthids());

			response.setHeader("Cache-Control", "no-cache");
			response.setContentType("text/text;charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			List lost = permissionService.findper(r.getRoauthids(), "0");
			ObjectMapper mapper = new ObjectMapper();
			try {
				String s = mapper.writeValueAsString(lost);
			} catch (JsonProcessingException e) {
				System.out.println("转换有误！");
				e.printStackTrace();
			}
		}else{
			System.out.println("会话为空！");
		}
		
		
		
	}
	
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public int getPhoneCode() {
		return phoneCode;
	}

	public void setPhoneCode(int phoneCode) {
		this.phoneCode = phoneCode;
	}

	public Date getOldDate() {
		return oldDate;
	}

	public void setOldDate(Date oldDate) {
		this.oldDate = oldDate;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public void setPermissionService(PermissionService permissionService) {
		this.permissionService = permissionService;
	}
	
	
	
}
