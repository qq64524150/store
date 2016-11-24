package com.mall.util;

/**
 * 验证码
 */
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.PrintWriter;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mall.entity.User;
import com.mall.service.UserService;

@Controller
@RequestMapping("/tovcode")
public class Vcode {
	@Resource
	private UserService userService;
	
	// 验证码图片的宽度。
	private int width = 60;
	// 验证码图片的高度。
	private int height = 20;
	// 存放验证码
	private String vode;

	@RequestMapping("/vocde")
	public void vocde(HttpServletResponse resp, HttpServletRequest req, String getImg,User user) throws Exception {
		if (getImg.equals("getImg")) {

			BufferedImage buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
			Graphics2D g = buffImg.createGraphics();

			// 创建一个随机数生成器类。
			Random random = new Random();
			g.setColor(Color.WHITE);
			g.fillRect(0, 0, width, height);

			// 创建字体，字体的大小应该根据图片的高度来定。
			Font font = new Font("Times New Roman", Font.PLAIN, 18);
			// 设置字体。
			g.setFont(font);

			// 画边框。
			g.setColor(Color.BLACK);
			g.drawRect(0, 0, width - 1, height - 1);

			// 随机产生160条干扰线，使图象中的认证码不易被其它程序探测到。
			g.setColor(Color.GRAY);
			for (int i = 0; i < 10; i++) {
				int x = random.nextInt(width);
				int y = random.nextInt(height);
				int xl = random.nextInt(12);
				int yl = random.nextInt(12);
				g.drawLine(x, y, x + xl, y + yl);
			}

			// randomCode用于保存随机产生的验证码，以便用户登录后进行验证。
			StringBuffer randomCode = new StringBuffer();
			int red = 0, green = 0, blue = 0;

			// 随机产生4位数字的验证码。
			for (int i = 0; i < 4; i++) {
				// 得到随机产生的验证码数字。
				String strRand = String.valueOf(random.nextInt(10));

				// 产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同。
				red = random.nextInt(200);
				green = random.nextInt(200);
				blue = random.nextInt(200);

				// 产生随机高度 13至height之间
				float imght = 0;
				while (imght <= 12) {
					imght = Float.parseFloat(String.valueOf(random.nextInt(height)));
				}
				// 用随机产生的颜色将验证码绘制到图像中。
				g.setColor(new Color(red, green, blue));
				g.drawString(strRand, 13 * i + 6, imght);

				// 将产生的四个随机数组合在一起。
				randomCode.append(strRand);
			}
			// 将四位数字的验证码保存到Session中。
			HttpSession session = req.getSession();
			session.setAttribute("randomCode", randomCode.toString());

			// 禁止图像缓存。
			resp.setHeader("Pragma", "no-cache");
			resp.setHeader("Cache-Control", "no-cache");
			resp.setDateHeader("Expires", 0);

			resp.setContentType("image/jpeg");

			// 将图像输出到Servlet输出流中。

			ServletOutputStream sos = resp.getOutputStream();
			setVode(randomCode.toString());
			ImageIO.write(buffImg, "jpeg", sos);

		}else{
			//System.out.println(getVode());
			String msg = null ;
			//获取输出流对象
			PrintWriter out = resp.getWriter();
			//进行登录操作
			//进行验证码判断
			if(getImg.equals(getVode())){
				//进行登录操作 -- 密码匹配
				User u = userService.pwd(user);
				//把查询出了的谢谢存放到会话中
				if(u!=null){
					req.getSession().setAttribute("userInfo", u);
					msg = "true";
				}else{
					msg = "falseW";
				}
				
			}else{
				msg = "false" ;
			}
			out.println(msg);
			//关闭输出流
			out.close();
		}

	}

	public String getVode() {
		return vode;
	}

	public void setVode(String vode) {
		this.vode = vode;
	}

}
