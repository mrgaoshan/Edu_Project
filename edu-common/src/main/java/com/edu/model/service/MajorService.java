package com.edu.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.edu.base.service.BaseAppService;
import com.edu.model.bean.Major;
import com.edu.model.mapper.MajorMapper;

@Service("majorService")
public class MajorService extends BaseAppService<MajorMapper>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3108482724434763359L;

	public List<Major> listBySchool(Integer schoolId) {
		return mapper.listBySchool(schoolId);
	}
	
	
	public List<Major> selectTop10(){
		
		return mapper.selectTop10();
	}
}
