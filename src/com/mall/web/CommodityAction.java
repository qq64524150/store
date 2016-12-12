package com.mall.web;

import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mall.util.PicUtils;

@Controller
@RequestMapping("/commodityAction")
public class CommodityAction {
	

	// 商品的图片
	@RequestMapping("addPrductImg")
	public void addPrductImg(HttpServletRequest request, HttpServletResponse response,PrintWriter out,
			MultipartHttpServletRequest multipar) throws Exception {
		response.setContentType("text/html;charset=utf-8");

		// 多内容请求对象
		List<MultipartFile> file = multipar.getFiles("ufile");
		FileOutputStream fos = null;
		String fileName = null;
		String[] findImg_pdepict = new String[file.size()];
		//String[] hpuz = {".jpg",".png"};
		String hquz = ".jpg,.png" ;
		String msg = "true" ;
		int is = -1 ; 
		
		for(int i = 0; i < file.size(); i++){
			fileName = file.get(i).getOriginalFilename();
			String name = fileName.substring(fileName.lastIndexOf('.'));
			Long l = file.get(i).getSize();
			System.out.println(hquz.indexOf(name));
			is = hquz.indexOf(name) ;
			if(is==-1){
				break ;
			}
			if(l>20971520){
				is=1 ;
				break ;
			}
			
		}
		
		System.out.println("---"+is);
		if(is==0){
			
			for (int i = 0; i < file.size(); i++) {
				
				if (!file.get(i).isEmpty()) {
					fileName = file.get(i).getOriginalFilename();
					String name = fileName.substring(fileName.lastIndexOf('.'));
					
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					String findImg = sdf.format(new Date()) + fileName.substring(fileName.lastIndexOf('.'));
					String url = request.getServletContext().getRealPath("/upload") + "/"+ findImg;
					fos = new FileOutputStream(url);
					fos.write(file.get(i).getBytes());
					findImg_pdepict[i]=findImg;
					//生成压缩图
					System.out.println(url);
					PicUtils pic = new PicUtils(url);
					pic.resizeByHeight(200);
					
					System.out.println("===="+name);
					fos.flush();
					fos.close();
				}
				
			}
			
			
			
		}
		
	/*	String s = Arrays.toString(findImg_pdepict).replace("[", "");*/
//		String s = Arrays.toString(findImg_pdepict);
//		String ss = s.substring(0, s.length()-1);
		
		
		/*System.out.println(ss);*/
		out.print(msg);
		
		
		
		
		
		
		
		
		
		
		
		/*String[] findImg_pdepict; // 存放图片名
		// 设置编码 -- UTF-8
		response.setContentType("text/html;charset=UTF-8");
		List<MultipartFile> file = multipar.getFiles("ufile");
		System.out.println("数量："+file.size());
		FileOutputStream fos = null;
		String fileName = null;
		String hquz = ".jpg,.png";
		String msg = "true";
		long is = -1;
		findImg_pdepict = new String[file.size()];

		// 进行图片格式的判断和图片的大小判断
		for (int i = 0; i < file.size(); i++) {
			fileName = file.get(i).getOriginalFilename();
			// 获取文件的后缀
			String name = fileName.substring(fileName.lastIndexOf('.'));
			// 获取文件的大小
			Long l = file.get(i).getSize();
			is = hquz.indexOf(name);
			// 判断图片后缀是否在指定的范围内
			if (is == -1) {
				break;
			}
			// 判断图片大小
			if (l > 20971520) {
				System.out.println("超了...");
				is = 1; // 图片超过大小了
				break;
			}

		}

		if (is == 0) {
			for (int i = 0; i < file.size(); i++) {
				if (!file.get(i).isEmpty()) {
					// 获取文件名
					fileName = file.get(i).getOriginalFilename();
					// 获取文件的后缀
					String name = fileName.substring(fileName.lastIndexOf('.'));
					// 自定义日期格式
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
					// 设置行的文件名
					String findImgName = sdf.format(new Date()) + fileName.substring(fileName.lastIndexOf('.'));
					String ImgURL = request.getServletContext().getRealPath("/upload") + "/" + findImgName;
					fos = new FileOutputStream(ImgURL);
					findImg_pdepict[i] = findImgName;
					fos.write(file.get(i).getBytes());
					// 生成压缩图
					PicUtils pic = new PicUtils(ImgURL);
					// 压缩高
					pic.resizeByHeight(200);

					fos.flush();
					fos.close();

				}
			}

		}

		// 进行字符串的截取
		String s = Arrays.toString(findImg_pdepict).replace("[", "");
		String ImgName = s.substring(0, s.length() - 1);
		System.out.println("xing"+ImgName);
		*//**
		 * 把字符串转换为数组 //使用String的split 方法 public static String[]
		 * convertStrToArray(String str){ String[] strArray = null; strArray =
		 * str.split(","); //拆分字符为"," ,然后把结果交给数组strArray return strArray; }
		 *//*

		out.print(is);*/
	}

	/*// 商品描述的图片
	@RequestMapping("addDepictImg")
	@ResponseBody
	public String addDepictImg(HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multipar) throws Exception {
		String[] findImg_pdepict; // 存放图片名
		// 设置编码 -- UTF-8
		response.setContentType("text/html;charset=UTF-8");
		List<MultipartFile> file = multipar.getFiles("file");
		FileOutputStream fos = null;
		String fileName = null;
		String hquz = ".jpg,.png";
		String msg = "true";
		int is = -1;
		findImg_pdepict = new String[file.size()];

		// 进行图片格式的判断和图片的大小判断
		for (int i = 0; i < file.size(); i++) {
			fileName = file.get(i).getOriginalFilename();
			// 获取文件的后缀
			String name = fileName.substring(fileName.lastIndexOf('.'));
			// 获取文件的大小
			Long l = file.get(i).getSize();
			is = hquz.indexOf(name);
			// 判断图片后缀是否在指定的范围内
			if (is == -1) {
				break;
			}
			// 判断图片大小
			if (l > 20971520) {
				is = 1; // 图片超过大小了
				break;
			}

		}

		if (is == 0) {
			for (int i = 0; i < file.size(); i++) {
				if (!file.get(i).isEmpty()) {
					// 获取文件名
					fileName = file.get(i).getOriginalFilename();
					// 获取文件的后缀
					String name = fileName.substring(fileName.lastIndexOf('.'));
					// 自定义日期格式
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
					// 设置行的文件名
					String findImgName = sdf.format(new Date()) + fileName.substring(fileName.lastIndexOf('.'));
					String ImgURL = request.getServletContext().getRealPath("/upload") + "/" + findImgName;
					fos = new FileOutputStream(ImgURL);
					findImg_pdepict[i] = findImgName;
					fos.write(file.get(i).getBytes());
					// 生成压缩图
					PicUtils pic = new PicUtils(ImgURL);
					// 压缩高
					pic.resizeByHeight(200);

					fos.flush();
					fos.close();

				}
			}

		}

		// 进行字符串的截取
		String s = Arrays.toString(findImg_pdepict).replace("[", "");
		String ImgName = s.substring(0, s.length() - 1);

		*//**
		 * 把字符串转换为数组 //使用String的split 方法 public static String[]
		 * convertStrToArray(String str){ String[] strArray = null; strArray =
		 * str.split(","); //拆分字符为"," ,然后把结果交给数组strArray return strArray; }
		 *//*

		return is + "";
	}*/
	
	
	//添加商品
	
	
}
