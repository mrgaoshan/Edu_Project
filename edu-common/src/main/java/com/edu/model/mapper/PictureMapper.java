package com.edu.model.mapper;

import com.edu.base.mapper.BaseAppMapper;
import com.edu.model.bean.Picture;

import java.util.List;
import java.util.Map;

public interface PictureMapper extends BaseAppMapper{

    List<Picture> listByTypeAndSchool(Map map);

}