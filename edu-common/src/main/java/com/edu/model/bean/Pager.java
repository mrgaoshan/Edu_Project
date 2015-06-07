package com.edu.model.bean;



import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.edu.base.bean.BaseAppTO;

public class Pager<T> extends BaseAppTO {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1841843157707034115L;

	private Integer pageNumber;

	private Integer pageSize;

	private Integer totalNum;
	
	private Integer startNum;
	
	private Integer endNum;
	
	private List<T> resultList;
	
	//private String sEcho;
	
	public Pager(){
		this.pageNumber=1;
		this.pageSize=10;
		//this.setStartNum();
		//this.setEndNum();
	}

	public Integer getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = null==pageNumber?1:pageNumber;
		//this.setStartNum();
		//this.setEndNum();
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = null==pageSize?10:pageSize;
		//this.setStartNum();
		//this.setEndNum();
	}

	public Integer getTotalNum() {
		return totalNum;
	}

	public void setTotalNum(Integer totalNum) {
		this.totalNum = totalNum;
	}

	public Integer getStartNum() {
		return startNum;
	}

	public void setStartNum(Integer startNum) {
		this.startNum = startNum;
		this.setEndNum();
	}

	public Integer getEndNum() {
		return endNum;
	}

	public void setEndNum() {
		this.endNum = startNum+pageSize;
	}

	public List<T> getResultList() {
		return resultList;
	}

	public void setResultList(List<T> resultList) {
		this.resultList = resultList;
	}
		
	
	/*public String getsEcho() {
		return sEcho;
	}

	public void setsEcho(String sEcho) {
		this.sEcho = sEcho;
	}*/

	public JSONObject getJsonData(){
		JSONObject jsonObject = new JSONObject();
		
		JSONArray jsonArray = JSONArray.fromObject(resultList);
		jsonObject.accumulate("iTotalRecords", totalNum)
				  .accumulate("iTotalDisplayRecords", totalNum)
				  .accumulate("aaData", jsonArray);
				 	
		return  jsonObject;
	}
	

}
