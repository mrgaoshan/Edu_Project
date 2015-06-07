package com.edu.model.bean;

import com.edu.base.bean.BaseAppTO;

public class Webconfig extends BaseAppTO{
    private Integer id;

    private String confname;

    private String confvalue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getConfname() {
        return confname;
    }

    public void setConfname(String confname) {
        this.confname = confname == null ? null : confname.trim();
    }

    public String getConfvalue() {
        return confvalue;
    }

    public void setConfvalue(String confvalue) {
        this.confvalue = confvalue == null ? null : confvalue.trim();
    }
}