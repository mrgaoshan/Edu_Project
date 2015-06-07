package com.edu.web.filter;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class MySessionAttributeListener implements HttpSessionAttributeListener {
    public static Map<String, HttpSession> sessionMap = new ConcurrentHashMap<String, HttpSession>();

    @Override
    public void attributeAdded(HttpSessionBindingEvent arg0) {
        String key= arg0.getName();
        if(key.equals("userName")){
            String name = (String) arg0.getValue();
            if(sessionMap.containsKey(name)){
                HttpSession session=sessionMap.remove(name);
                session.invalidate();
            }
            sessionMap.put(name, arg0.getSession());
        }
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent arg0) {
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent arg0) {
    }
}
