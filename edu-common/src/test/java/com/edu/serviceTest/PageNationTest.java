package com.edu.serviceTest;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.edu.model.bean.NavList;
import com.edu.model.bean.Pager;
import com.edu.model.service.NavListService;

public class PageNationTest extends AbstractServiceForTesting{
	 

	@Autowired
	private NavListService navListService;
	
	@Test
	public void testPageNation(){
		
		Pager pager  = new Pager<NavList>();
		
		pager.setPageNumber(2);
		
		pager = navListService.pageList(pager);
		
		List<NavList> list = pager.getResultList();
		
		System.out.println("total number"+ pager.getTotalNum());
		
		for(NavList item:list){
			System.out.println("nave name"+ item.getNavname());
		}
	}
	
	public static void main(String dd[]){
		
		List<NavList> list = new ArrayList<NavList>();
		NavList a1 = new NavList();
		a1.setLevel(2);
		NavList a2 = new NavList();
		a2.setLevel(3);
		list.add(a1);
		list.add(a2);
		JSONArray jsonArray = JSONArray.fromObject(list);
		
		System.out.println(jsonArray.toString());
	}
	
	
	
}
