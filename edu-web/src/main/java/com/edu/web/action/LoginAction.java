package com.edu.web.action;

import java.io.File;
import java.io.FileInputStream;
import java.util.Locale;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.edu.model.service.AdminService;
import com.edu.util.RequestUtil;

@Controller
public class LoginAction {

	@Autowired
	private AdminService adminService;

    @Autowired
    private SessionLocaleResolver localeResolver;

    @RequestMapping(value="/login.do")
    public String loginPage(){
        return "admin/login";
    }

    @RequestMapping(value="/usrLogin.do",method=RequestMethod.POST)
    @ResponseBody
    public boolean login(@RequestParam(value="username") String usr, @RequestParam(value="password") String pwd){
		try {
			Properties prop = new Properties();
	        String filePath = RequestUtil.getResourcePath("resource.properties");
			prop.load(new FileInputStream(new File(filePath)));
            String adminpass = prop.getProperty("A001");
            if("administrator".equalsIgnoreCase(usr) && adminpass.equals(pwd)){
        		return true;
        	}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
    }

    @RequestMapping(value="/")
    public ModelAndView main(HttpServletRequest request,ModelMap modelMap,HttpServletResponse response){
        Locale locale_session = (Locale) request.getSession().getAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        if(locale_session==null){
            locale_session = new Locale("zh");//防止cookie中locale失效时locale为空
            localeResolver.setLocale(request, response, locale_session);
        }
        modelMap.put("locale", locale_session.toString());
        return new ModelAndView("");
    }

    @RequestMapping(value="/logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("loginUser");
        return "redirect:/login";
    }

}
