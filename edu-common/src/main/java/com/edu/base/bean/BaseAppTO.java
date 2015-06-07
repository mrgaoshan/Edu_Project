/**
 * 
 */
package com.edu.base.bean;

import java.io.Serializable;
import java.sql.Timestamp;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;



/**
 * @author kasimodo
 *
 */
public class BaseAppTO implements Serializable{
	private static final Log log = LogFactory.getLog(BaseAppTO.class);
	private String crtBy_m;
	private Timestamp crtOn_dt;

	public String getCrtBy_m() {
		return crtBy_m;
	}

	public void setCrtBy_m(String crtBy_m) {
		this.crtBy_m = crtBy_m;
	}

	public Timestamp getCrtOn_dt() {
		return crtOn_dt;
	}

	public void setCrtOn_dt(Timestamp crtOn_dt) {
		this.crtOn_dt = crtOn_dt;
	}

}
