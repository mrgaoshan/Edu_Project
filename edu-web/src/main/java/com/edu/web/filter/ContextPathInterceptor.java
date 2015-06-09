package com.edu.web.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 应用程序path拦截器，为所有资源加上path
 *
 */
public class ContextPathInterceptor extends HandlerInterceptorAdapter {
	
	Logger log = LoggerFactory.getLogger(ContextPathInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        request.getSession()
               .getServletContext()
               .setAttribute("ctx", request.getContextPath());
        
        
      /*  String url = request.getRequestURI();
        
        String contextPah = request.getContextPath();
        
        log.info("request url is " + url);
        
        if(url.contains(".css") || url.contains(".js") || url.contains(".JS") || url.contains(".CSS")){
        	 
            StringBuffer urlBuffer = new StringBuffer();
            urlBuffer.append(contextPah).append("/").append(url);
            
            log.info("new url info is " +urlBuffer.toString() );
            
            response.sendRedirect(urlBuffer.toString());
            
            return false;
        	
        }*/
       

        return super.preHandle(request, response, handler);
    }
}
