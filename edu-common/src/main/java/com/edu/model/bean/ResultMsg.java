package com.edu.model.bean;

import java.io.Serializable;

public class ResultMsg implements Serializable{

	private static final long serialVersionUID = 3561580337057057966L;

	/**
	 * 0表示失败，1表示成功
	 */
	private Integer code = 0;
	/**
	 * 返回消息
	 */
	private String msg;
	/**
	 * 返回对象
	 */
	private Object object;

	public ResultMsg(){}
	public ResultMsg(Integer code, String msg){
		this.code = code;
		this.msg = msg;
	}
	public ResultMsg(Integer code, String msg, Object object){
		this.code = code;
		this.msg = msg;
		this.object = object;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getObject() {
		return object;
	}
	public void setObject(Object object) {
		this.object = object;
	}
}
