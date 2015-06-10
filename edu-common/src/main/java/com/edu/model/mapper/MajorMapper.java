package com.edu.model.mapper;

import com.edu.base.mapper.BaseAppMapper;
import com.edu.model.bean.Major;

import java.util.List;

public interface MajorMapper extends BaseAppMapper{

    List<Major> listBySchool(Integer schoolId);
    
    List<Major> selectTop10();
}