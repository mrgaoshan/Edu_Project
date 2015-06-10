/**
 * 
 */
package com.edu.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.constant.Constant;
import com.edu.model.bean.Major;
import com.edu.model.bean.Newsdetail;
import com.edu.model.bean.School;
import com.edu.model.service.MajorService;
import com.edu.model.service.NewsdetailService;
import com.edu.model.service.SchoolService;

/**
 * @author kasimodo
 *
 */
@Controller
public class HomeAction {

	@Autowired
	private NewsdetailService newsdetailService;
	
	@Autowired
    private SchoolService schoolService;
	
	@Autowired
	private MajorService majorService;

	@RequestMapping(value = "/index")
	public String homePage(Model model) {
		List<Newsdetail> gkxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.GKXX);
		List<Newsdetail> zsjjList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.ZSJJ);
		List<Newsdetail> xxxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.XXXX);
		List<Newsdetail> zkxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.ZKXX);
		List<School> schoolsList =  schoolService.selectAll();
		List<Major> topMajorList = majorService.selectTop10();

		model.addAttribute("gkxxList", gkxxList);
		model.addAttribute("zsjjList", zsjjList);
		model.addAttribute("xxxxList", xxxxList);
		model.addAttribute("zkxxList", zkxxList);
		model.addAttribute("schoolsList", schoolsList);
		model.addAttribute("topMajorList", topMajorList);

		return "home";

	}

	@RequestMapping(value = "viewNews")
	public String viewNews(Model model, Integer id) {

		Newsdetail newsdetail =  newsdetailService.updateAndView(id);
		
		List<Newsdetail> gkxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.GKXX);
		List<Newsdetail> xxxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.XXXX);
		List<Newsdetail> zkxxList = newsdetailService.findBySchoolAndCate(0, Constant.NewsCategory.ZKXX);
		
		//model.addAttribute("newsdetail", newsdetail);
		model.addAttribute("gkxxList", gkxxList);
		model.addAttribute("xxxxList", xxxxList);
		model.addAttribute("zkxxList", zkxxList);
		
		model.addAttribute("content", newsdetail.getContent());
		
		return "home-page";

	}
	
	@RequestMapping(value = "findMajor")
	@ResponseBody
	public Object findMajor(Model model, Integer shoolId) {

		/*Newsdetail newsdetail =  newsdetailService.updateAndView(id);
		
		model.addAttribute("newsdetail", newsdetail);*/
		List<Major> list = majorService.listBySchool(shoolId);
		
		return list;

	}

}
