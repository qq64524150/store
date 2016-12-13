package com.mall.web;

import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mall.entity.Pdepict;
import com.mall.entity.Product;
import com.mall.service.CommodService;
import com.mall.util.PicUtils;

@Controller
@RequestMapping("/commodityAction")
public class CommodityAction {
	private String pdepictImg; // 存储商品描述图片
	private String productImg; // 存储商品图片
	@Resource
	private CommodService commodService ;
	// 商品的图片
	@RequestMapping("addPrductImg")
	public void addPrductImg(int toImg, HttpServletRequest request, HttpServletResponse response, PrintWriter out,
			MultipartHttpServletRequest multipar) throws Exception {
		response.setContentType("text/html;charset=utf-8");

		// 多内容请求对象
		List<MultipartFile> file = multipar.getFiles("ufile");
		FileOutputStream fos = null;
		String fileName = null;
		String[] findImg_pdepict = new String[file.size()];
		// String[] hpuz = {".jpg",".png"};
		String hquz = ".jpg,.png";
		int is = -1;
		for (int i = 0; i < file.size(); i++) {
			fileName = file.get(i).getOriginalFilename();
			String name = fileName.substring(fileName.lastIndexOf('.'));
			Long l = file.get(i).getSize();
			System.out.println(hquz.indexOf(name));
			is = hquz.indexOf(name);
			if (is == -1) {
				break;
			}
			if (l > 20971520) {
				is = 1;
				break;
			}

		}

		System.out.println("---" + is);
		if (is == 0) {

			for (int i = 0; i < file.size(); i++) {

				if (!file.get(i).isEmpty()) {
					fileName = file.get(i).getOriginalFilename();
					String name = fileName.substring(fileName.lastIndexOf('.'));

					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					String findImg = sdf.format(new Date()) + fileName.substring(fileName.lastIndexOf('.'));
					String url = request.getServletContext().getRealPath("/upload") + "/" + findImg;
					fos = new FileOutputStream(url);
					fos.write(file.get(i).getBytes());
					findImg_pdepict[i] = findImg;
					// 生成压缩图
					System.out.println(url);
					PicUtils pic = new PicUtils(url);
					pic.resizeByHeight(200);

					System.out.println("====" + name);
					fos.flush();
					fos.close();
				}

			}

		}

		String s = Arrays.toString(findImg_pdepict).replace("[", ""); 
		// String s = Arrays.toString(findImg_pdepict);
		String ss = s.substring(0, s.length()-1);

		System.out.println(ss); 
		//保存商品描述图片
		if(toImg == 0){
			setPdepictImg(ss);
		}else if(toImg ==1 ){  //保存商品图片
			setProductImg(ss);
		}
		
		out.print(is);

	}

	
	/**
	 * 添加商品/商品描述 
	 * @param product
	 * @param pdepict
	 * @param response
	 * @param request
	 * @return true / false
	 * @throws Exception
	 */
	@RequestMapping(value = "/addCommod")
	@ResponseBody
	public String addIctAndUct(Product product,Pdepict pdepict,HttpServletResponse response,HttpServletRequest request) throws Exception {
		
		pdepict.setPdimagesDepict(getPdepictImg()); //pdepictImg
		pdepict.setPimagesReferral(getProductImg());
		return commodService.addProduct(product, pdepict)?"true":"false";
	}

	
	
	
	public String getPdepictImg() {
		return pdepictImg;
	}

	public void setPdepictImg(String pdepictImg) {
		this.pdepictImg = pdepictImg;
	}

	public String getProductImg() {
		return productImg;
	}

	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}

	public void setCommodService(CommodService commodService) {
		this.commodService = commodService;
	}

		
	
	
}
