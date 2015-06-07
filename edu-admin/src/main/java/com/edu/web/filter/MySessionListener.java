package com.edu.web.filter;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class MySessionListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent arg0) {
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent arg0) {
        String name = (String) arg0.getSession().getAttribute("name");
        if (name != null && name.length() > 0) {// session失效时候移除记录
            if (MySessionAttributeListener.sessionMap.containsKey(name))
                MySessionAttributeListener.sessionMap.remove(name);
        }
    }
}
