package com.edu.model.service;

import com.edu.model.bean.Picture;
import org.springframework.stereotype.Service;

import com.edu.base.service.BaseAppService;
import com.edu.model.mapper.PictureMapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("pictureService")
public class PictureService extends BaseAppService<PictureMapper>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7923663460510835727L;

	public List<Picture> listByTypeAndSchool(String type, Integer schoolId){
		Map map = new HashMap();
		map.put("type", type);
		map.put("schoolId", schoolId);
		return mapper.listByTypeAndSchool(map);
	}
}
