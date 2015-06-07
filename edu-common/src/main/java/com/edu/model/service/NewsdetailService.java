package com.edu.model.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.base.service.BaseAppService;
import com.edu.model.bean.Newsdetail;
import com.edu.model.mapper.NewsdetailMapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("newsdetailService")
public class NewsdetailService extends BaseAppService<NewsdetailMapper> {

	private static final long serialVersionUID = -478225924502967138L;

	public List<Newsdetail> findBySchoolAndCate(Integer schoolId, String cate) {

		Map map = new HashMap();
		map.put("schoolId", schoolId);
		map.put("cate", cate);
		return mapper.findBySchoolAndCate(map);
	}

	public Newsdetail updateAndView(Integer id) {

		Newsdetail newsdetail = (Newsdetail) selectByPrimaryKey(id);

		updateReadTime(newsdetail);

		return newsdetail;
	}

	public void updateReadTime(Newsdetail newsdetail) {

		if (null != newsdetail) {
			Integer readtimes;

			readtimes = newsdetail.getReadtimes();

			if (null == readtimes) {
				readtimes = 0;
			}

			readtimes++;

			newsdetail.setReadtimes(readtimes);

			updateByPrimaryKeySelective(newsdetail);
		}

	}

}
