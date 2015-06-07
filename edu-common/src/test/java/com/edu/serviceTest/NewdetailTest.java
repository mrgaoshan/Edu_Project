/**
 * 
 */
package com.edu.serviceTest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.constant.Constant;
import com.edu.model.bean.Newsdetail;
import com.edu.model.service.NewsdetailService;

/**
 * @author kasimodo
 *
 */
public class NewdetailTest extends AbstractServiceForTesting{
	
    @Autowired
    private NewsdetailService newsdetailService;
    
    @Test
    public void test(){
    	
    	Newsdetail out = 	(Newsdetail) newsdetailService.findBySchoolAndCate(1, Constant.NewsCategory.GKXX);
    	
    	System.out.println(out.getContent());
    	
    }
    
    
    @Test
    public void test11(){
    	
    	Newsdetail newsdetail =  newsdetailService.updateAndView(1);
    	
    	System.out.println(newsdetail.getContent());
    	System.out.println("dddd");
    }

}
