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

    <div style="float:left; width:100%; height:auto; margin-top:20px;">
   		<div class="college-center college-page">
    	<div class="cc-left">
            <jsp:include page="college-menu.jsp" />
            <jsp:include page="college-form.jsp" />
        </div>
        
        <div class="cc-right">
        	<div class="cc-content">
                <div id="myCarousel" class="carousel slide">
                  <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                  </ol>
                  <!-- Carousel items -->
                  <div class="carousel-inner">
                    <div class="active item"><img src="${ctx}/resources/images/lb1.jpg" /><p style="position:absolute; bottom: 0px; background:#666; height:25px; text-align:center;width: 100%;margin: 0px;color: #fff;">图书馆</p></div>
                    <div class="item"><img src="${ctx}/resources/images/lb2.jpg" /><p style="position:absolute; bottom: 0px; background:#666; height:25px; text-align:center;width: 100%;margin: 0px;color: #fff;">图书馆</p></div>
                    <div class="item"><img src="${ctx}/resources/images/lb3.jpg" /><p style="position:absolute; bottom: 0px; background:#666; height:25px; text-align:center;width: 100%;margin: 0px;color: #fff;">图书馆</p></div>
                  </div>
                  <!-- Carousel nav -->
                  <a class="carousel-control left" href="#myCarousel" style="background:url(${ctx}/resources/images/prevb.png) no-repeat center" data-slide="prev">&lsaquo;</a>
                  <a class="carousel-control right" href="#myCarousel" style="background:url(${ctx}/resources/images/nextbg.png) no-repeat center" data-slide="next">&rsaquo;</a>
                </div>
            </div>
        </div>
    </div>
    </div>
     <div style="float:left; width:100%; height:auto;">
    <div class="c-link">
        <div class="college-center">
            <c:if test="${xyfgList != null}">
                <c:forEach items="${xyfgList}" var="xyfg">
                    <img src="${ctx}/resources/images/${xyfg.path}" />
                    <%--<img src="${ctx}/resources/images/clinks.jpg" />--%>
                    <%--<img src="${ctx}/resources/images/clinks.jpg" />--%>
                </c:forEach>
            </c:if>
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
