package com.edu.model.bean;

import com.edu.base.bean.BaseAppTO;

public class Major extends BaseAppTO{
    /**
	 * 
	 */
	private static final long serialVersionUID = -3939724800883987854L;

	private Integer id;

    private Integer schoolid;

    private String name;

    private String leadimage;

    private Integer readtimes;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSchoolid() {
        return schoolid;
    }

    public void setSchoolid(Integer schoolid) {
        this.schoolid = schoolid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getLeadimage() {
        return leadimage;
    }

    public void setLeadimage(String leadimage) {
        this.leadimage = leadimage == null ? null : leadimage.trim();
    }

    public Integer getReadtimes() {
        return readtimes;
    }

    public void setReadtimes(Integer readtimes) {
        this.readtimes = readtimes;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}