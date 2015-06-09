<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
        	<div class="cc-left1">
                <p class="cc-left-title">信息导航</p>
                <ul>
                    <li><a href="#">关于学校</a></li>
                    <li><a href="#">专业设置</a></li>
                    <li><a href="#">校园新闻</a></li>
                    <li><a href="#">校园风光</a></li>
                    <li><a href="#">就业中心</a></li>
                    <li><a href="#">收费标准</a></li>
                    <li><a href="#">联系方式</a></li>
                </ul>
            </div>
            
         	<div class="c-index-m-f" style="margin-top:20px;">
            	<p class="c-i-m-f-t">在线报名</p>
            	<form method="post" action="#" class="zxbm">
                	<p><label>您的名称：</label><input type="text" name="name"  class="fdfinput" placeholder="输入名称" /></p>
                    <p><label>报名专业：</label><select name="zhuanye" class="fdfinput">
                    							<option selected="selected" value="">专业1</option>
                                                <option value="">专业1</option>
                                                <option value="">专业1</option>
                                                <option value="">专业1</option>
                                              </select>
                    </p>
                    <p><label>联系方式：</label><input type="text" name="tel" class="fdfinput" placeholder="输入联系方式" /></p>
                    <p><label>您的Q Q：</label><input type="text" name="QQ" class="fdfinput"  placeholder="输入数字"/></p>
                    <p><label>出生日期：</label><input type="text" name="birthday" placeholder="yyyymmdd" class="fdfinput" /></p>
                    <p><label>性   别：</label>男：<input type="radio" name="sex" value="male" />
                                           女：<input type="radio" name="sex" value="female" />
                    </p>
                    <p><label></label><input type="submit" class="submit" value="提交" /></p>
                </form>
            </div>
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
            <%--<a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>--%>
            <%--<a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>--%>
            <%--<a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>--%>
            <%--<a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>--%>
            <%--<a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>--%>
            <%--<a href="#"><img src="${ctx}/resources/images/clinks.jpg" /></a>--%>
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
