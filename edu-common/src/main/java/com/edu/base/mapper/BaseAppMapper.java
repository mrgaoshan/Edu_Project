/**
 * 
 */
package com.edu.base.mapper;

import java.util.List;

import com.edu.base.bean.BaseAppTO;
import com.edu.model.bean.Pager;


/**
 * @author kasimodo
 *
 */
public interface BaseAppMapper {
    public void insert(BaseAppTO obj);

    public void update(BaseAppTO obj);

    public void delete(BaseAppTO obj);

    public List<BaseAppTO> search(BaseAppTO obj);

    public List<BaseAppTO> find(BaseAppTO obj);
    
    int deleteByPrimaryKey(Integer id);

    int insertSelective(BaseAppTO record);

    BaseAppTO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BaseAppTO record);

    int updateByPrimaryKey(BaseAppTO record);
    
    public List<BaseAppTO> pageList(Pager<BaseAppTO> obj);
	
	public Integer totalNum();

}
