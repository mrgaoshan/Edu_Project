/**
 * 
 */
package com.edu.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.constant.Constant;
import com.edu.model.bean.Newsdetail;
import com.edu.model.service.NewsdetailService;

/**
 * @author kasimodo
 *
 */
@Controller
public class HomeAction {

	@Autowired
	private NewsdetailService newsdetailService;

	@RequestMapping(value = "/home")
	public String homePage(Model model) {
		List<Newsdetail> gkxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.GKXX);
		List<Newsdetail> zsjjList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.ZSJJ);
		List<Newsdetail> xxxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.XXXX);
		List<Newsdetail> zkxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.ZKXX);

		model.addAttribute("gkxxList", gkxxList);
		model.addAttribute("zsjjList", zsjjList);
		model.addAttribute("xxxxList", xxxxList);
		model.addAttribute("zkxxList", zkxxList);

		return "home";

	}

	@RequestMapping(value = "viewNews")
	public String viewNews(Model model, Integer id) {

		Newsdetail newsdetail =  newsdetailService.updateAndView(id);
		
		model.addAttribute("newsdetail", newsdetail);
		
		return "viewNews";

	}

}
