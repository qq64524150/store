package com.mall.web;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.entity.Country;
import com.mall.service.CountryService;

/**
 * 这是关于国家操作的类
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/countryAction")
public class CountryAction {
	@Resource
	private CountryService countryService ;
	
	/**
	 * 查询出所有的国家
	 * @param out
	 */
	@RequestMapping("/findAllCountry")
	@ResponseBody
	public List<Country> findAllCountry(){
		List<Country> listCountry  =  countryService.findAllCountry() ;
		return listCountry ;
	}
	
	public void setCountryService(CountryService countryService) {
		this.countryService = countryService;
	}
	
	
}
