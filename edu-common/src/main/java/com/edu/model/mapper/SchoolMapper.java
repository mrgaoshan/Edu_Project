package com.edu.model.mapper;

import java.util.List;

import com.edu.base.mapper.BaseAppMapper;
import com.edu.model.bean.School;

public interface SchoolMapper extends BaseAppMapper{
	
	
	
	List<School> selectAll();
}