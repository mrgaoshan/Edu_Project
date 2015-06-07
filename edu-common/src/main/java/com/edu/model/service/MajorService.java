package com.edu.model.service;

import com.edu.base.bean.BaseAppTO;
import com.edu.model.bean.Major;
import org.springframework.stereotype.Service;

import com.edu.base.service.BaseAppService;
import com.edu.model.mapper.MajorMapper;

import java.util.List;

@Service("majorService")
public class MajorService extends BaseAppService<MajorMapper>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3108482724434763359L;

	public List<Major> listBySchool(Integer schoolId) {
		return mapper.listBySchool(schoolId);
	}
}
