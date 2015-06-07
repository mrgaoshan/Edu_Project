package com.edu.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.model.bean.Registration;
import com.edu.model.bean.ResultMsg;
import com.edu.model.service.RegistrationService;


@Controller
public class RegistrationAction {

	@Autowired
	private RegistrationService registrationService;

	@RequestMapping(value="/user/apply",method=RequestMethod.POST)
	@ResponseBody
	public ResultMsg addRegistraton(Registration registration) throws Exception{
		ResultMsg msg = null;
		try {
			registrationService.insertSelective(registration);
			msg = new ResultMsg(1, "报名成功，信息已提交！");
		} catch (Exception e) {
			msg = new ResultMsg(1, "报名失败！");
		}
		return msg;
	}
}
