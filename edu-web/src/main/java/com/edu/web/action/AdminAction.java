package com.edu.web.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminAction {

	@RequestMapping(value="/admin/index.do")
    public String adminIndex(){
        return "admin/index";
    }
}
