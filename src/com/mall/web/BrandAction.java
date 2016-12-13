package com.mall.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.entity.Brand;
import com.mall.service.BrandService;

/**
 * 这是商品品牌的action类
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/brandAction")
public class BrandAction {
	@Resource
	private BrandService  brandService ;
	
	/**
	 * 查询出部商品品牌
	 * @return Brand
	 */
	@RequestMapping("/findAllBrand")
	@ResponseBody
	public List<Brand> finfAllBrand(){
		List<Brand> listBrand = brandService.findAllBrand();
		return listBrand ;
		
	}
	
	
	public void setBrandService(BrandService brandService) {
		this.brandService = brandService;
	}
	
}
