package com.mall.web;
/**
 * 这是商品的web类
 */
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
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
		String msg = "false" ;
		
		//设置图片
		product.setPimage(getProductImg());
		//设置时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH:mm");
		product.setPtime(sdf.format(new Date()));
		
		Product prodComm =  commodService.addProduct(product);
		if(prodComm!=null){
			//设置图片
			pdepict.setPdimagesDepict(getPdepictImg()); //pdepictImg
			//添加商品描述
			if(commodService.addPdepict(pdepict, prodComm)){
				msg = "true" ;
			}
		}
		
		return msg ;
	}
	/**
	 * 查询全部商品信息
	 * @return 商品全部信息
	 * @throws JsonProcessingException 
	 */
	@RequestMapping("/findAllComm")
	@ResponseBody
	public List<Object[]> findAllComm(){
		List<Object[]> list  = commodService.findAllCommList();
		System.out.println(list.size());
		for (Object[] objs : list) {
			Product ch=(Product)objs[0];
			System.out.println(ch.getPname());
			Pdepict card=(Pdepict)objs[1];
			System.out.println(card.getColorur());
		}
		return list;
		/*ObjectMapper mapper = new ObjectMapper();
		String s = null;
		try {
			s = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.print(s);*/
	}
	
	//查询商品信息
	@RequestMapping("/findAllProduct")
	@ResponseBody
	public List<Product> findAllProduct(){
		//commodService.findAllProduct();
		return commodService.findAllProduct() ;
	}
	
	//查询指定商品信息;
	@RequestMapping("/findPdepictById")
	@ResponseBody
	public Pdepict findPdepictById(String id){
		
		return commodService.findPdepictById(id) ;
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
