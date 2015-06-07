package com.edu.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.edu.base.bean.BaseAppTO;
import com.edu.base.service.BaseAppService;
import com.edu.model.bean.Newsdetail;
import com.edu.model.mapper.NewsdetailMapper;

@Service("newsdetailService")
public class NewsdetailService extends BaseAppService<NewsdetailMapper>{

	/**
	 * 
	 */
	private static final long serialVersionUID = -478225924502967138L;
	
	
	public List<Newsdetail> findByShooclAndCate(Integer schoolId,String cate) {
		
		Map map = new HashMap();
		map.put("schoolId", schoolId);
		map.put("cate", cate);
		return mapper.findByShooclAndCate(map);
	}

}
