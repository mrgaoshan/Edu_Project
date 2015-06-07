/**
 * 
 */
package com.edu.base.service;

import java.io.Serializable;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.base.bean.BaseAppTO;
import com.edu.base.mapper.BaseAppMapper;
import com.edu.model.bean.Pager;

/**
 * @author kasimodo
 *
 */
public class BaseAppService<T extends BaseAppMapper> implements Serializable {

	private static final Log log = LogFactory.getLog(BaseAppService.class);
	private static final long serialVersionUID = 1L;
	protected T mapper;

	@Autowired
	public void setMapper(T t) {
		this.mapper = t;
	}

	public void insert(BaseAppTO obj) {
		mapper.insert(obj);
	}

	public void update(BaseAppTO obj) {
		mapper.update(obj);
	}

	public void delete(BaseAppTO obj) {
		mapper.delete(obj);
	}

	public List<BaseAppTO> search(BaseAppTO obj) {
		return mapper.search(obj);
	}

	public List<BaseAppTO> find(BaseAppTO obj) {
		return mapper.find(obj);
	}

	public int deleteByPrimaryKey(Integer id) {
		return mapper.deleteByPrimaryKey(id);
	}

	public int insertSelective(BaseAppTO record) {
		return mapper.insertSelective(record);
	}

	public BaseAppTO selectByPrimaryKey(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(BaseAppTO record) {
		return mapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(BaseAppTO record) {
		return mapper.updateByPrimaryKey(record);
	}

	public Pager<BaseAppTO> pageList(Pager<BaseAppTO> pager) {

		Integer toalNum = mapper.totalNum();
		
		pager.setTotalNum(toalNum);

		pager.setResultList(mapper.pageList(pager));

		return pager;
	}

}
