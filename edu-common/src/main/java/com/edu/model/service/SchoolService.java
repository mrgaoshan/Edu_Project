package com.edu.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.edu.base.service.BaseAppService;
import com.edu.model.bean.School;
import com.edu.model.mapper.SchoolMapper;
import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

@Service("schoolService")
public class SchoolService extends BaseAppService<SchoolMapper>{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4561576274127210993L;

	public List<School> selectAll(){
		
		return mapper.selectAll();
	}
}
