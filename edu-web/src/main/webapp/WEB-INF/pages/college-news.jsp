<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<title>学校首页</title>
<link href="${ctx}/resources/css/bootstrap.css" rel="stylesheet" />
<link href="${ctx}/resources/css/style.css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/js.js"></script>
</head>

<body>
    <jsp:include page="./college-top.jsp" />
	<%--<div class="college-header-line">
    	<div class="college-center">
        	<span class="wellcomeword"></span>
            <span class="college-hl-link">
                <a href="#">网站首页</a> |
                <a href="#">加入收藏</a> |
                <a href="#">设为主页</a> |
            </span>
        </div>
    </div>
    <div class="college-l-t">
    	<div class="college-center">
        	<a href="#">
            	<img src="images/tianyilogo.jpg" />
            </a>
            <p>
            	<i>
                <span class="c-t-title">24小时服务热线：</span><br />
                <span class="c-t-content">028-12345678</span>
                </i>
            </p>
        </div>
    </div>
    <div class="college-center c-nav">
    	<ul>
        	<li><a href="#">学校首页</a></li>
        	<li><a href="#">关于学校</a></li>
        	<li><a href="#">专业设置</a></li>
        	<li><a href="#">校园新闻</a></li>
        	<li><a href="#">校园风光</a></li>
        	<li><a href="#">就业中心</a></li>
        	<li><a href="#">收费标准</a></li>
        	<li><a href="#">在线报名</a></li>
        	<li><a href="#">联系方式</a></li>
        </ul>
    </div>
    <div class="c-main-img college-center">
    	<img src="images/tianyiimg.jpg" />
    </div>--%>
    <div style="float:left; width:100%; height:auto; margin-top:20px;">
   		<div class="college-center college-page">
    	<div class="cc-left">
            <jsp:include page="college-menu.jsp" />
            <jsp:include page="college-form.jsp" />
        </div>
        
        <div class="cc-right">
        	<div class="cc-content">
                <c:if test="${newsList != null}">
                    <ul>
                        <c:forEach items="${newsList}" var="news">
                            <li><a href="${ctx}/school/newsInfo/${schId}/${news.id}.do">${news.title}</a></li>
                    </c:forEach>
                    </ul>
                </c:if>
                <%--<div class="fenye">
                	<a href="#" class="prevpage">上一页</a>
                    <div class="fenyelink">
                    	<a href="#">1</a>
                        <a href="#" class="nowpage">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                    </div>
                	<a href="#" class="nextpage">下一页</a>
                </div>--%>
            </div>
        </div>
    </div>
    </div>
     <div style="float:left; width:100%; height:auto;">
    <div class="c-link">
        <div class="college-center">
            <a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>
            <a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>
            <a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>
            <a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>
            <a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>
            <a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>
        </div>
    </div>
     <div class="btinfo">
        	<div class="index-center">
            	全国报名电话：02812345678 24小时服务热线：400-2154-124
               	©2015 成都升学选校网（WWW.SHENXXX.COM)版权所有 
            </div>
        </div>
        </div>
</body>
</html>
