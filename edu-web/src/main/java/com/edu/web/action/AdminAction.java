package com.edu.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.model.bean.LoginUser;
import com.edu.model.bean.Pager;
import com.edu.model.bean.Registration;
import com.edu.model.service.RegistrationService;

@Controller
public class AdminAction {
	
	@Autowired
	private RegistrationService registrationService;

	@RequestMapping(value="/admin/index.do")
    public String adminIndex(HttpServletRequest request){
		LoginUser loginUser = (LoginUser) request.getSession().getAttribute("loginUser");
		if(loginUser == null){
			return "redirect:/login.do";
		}
        return "admin/index";
    }
	
	@RequestMapping(value="/admin/registrationlist.do", method=RequestMethod.GET)
    public String registrationlist(HttpServletRequest request){
		LoginUser loginUser = (LoginUser) request.getSession().getAttribute("loginUser");
		if(loginUser == null){
			return "redirect:/login.do";
		}
        return "admin/registrationlist";
    }
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value="/admin/getregistrationlist.do",method=RequestMethod.POST)
	@ResponseBody
	public List<Registration> getregistrationlist() throws Exception{
		Pager pager = new Pager<Registration>();
		pager.setStartNum(0);
		try {
			pager = registrationService.pageList(pager);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pager.getResultList();
	}
}
