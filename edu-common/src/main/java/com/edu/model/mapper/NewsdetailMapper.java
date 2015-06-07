package com.edu.model.mapper;

import java.util.List;
import java.util.Map;

import com.edu.base.mapper.BaseAppMapper;
import com.edu.model.bean.Newsdetail;

public interface NewsdetailMapper extends BaseAppMapper {

	List<Newsdetail> findBySchoolAndCate(Map map);

}