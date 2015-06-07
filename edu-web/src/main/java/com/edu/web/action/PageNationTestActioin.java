package com.edu.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.model.bean.NavList;
import com.edu.model.bean.Pager;
import com.edu.model.service.NavListService;

@Controller
public class PageNationTestActioin {
	@Autowired
	private NavListService navListService;
	
	
	@RequestMapping(value="/page")
    public String login(){	
		
        return "page";
    }

	
	@RequestMapping(value="/pageNation")
	@ResponseBody
    public String pageNation(
    		@RequestParam("iDisplayStart") int iDisplayStart,
    		@RequestParam("iDisplayLength") int iDisplayLength
    		){
		Pager pager  = new Pager<NavList>();
		
		pager.setPageSize(iDisplayLength);
		pager.setStartNum(iDisplayStart);
		pager = navListService.pageList(pager);
		
        return pager.getJsonData().toString();
    }
}
