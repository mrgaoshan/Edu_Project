<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<title>升学网-${sch.name}</title>
    <link rel="shortcut icon" type="image/x-icon" href="${ctx}/resources/images/favicon.ico" />
    <link href="${ctx}/resources/css/bootstrap.css" rel="stylesheet" />
    <link href="${ctx}/resources/css/style.css" rel="stylesheet" />
    <script type="text/javascript" src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${ctx}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/resources/js/js.js"></script>
</head>

<body>
    <jsp:include page="./college-top.jsp" />

    <div class="c-index-main">
    	<div class="col-lg-4" style="width:355px;">
        	<div class="c-index-m-c">
            	<p class="c-i-m-c-t"><span>学校简介</span></p>
                <div class="c-i-m-c-c">
                	${sch.brief}
                </div>
            </div>
        </div>
    	<div class="col-lg-4" style="width:355px;">
        	<div class="c-index-m-c">
            	<p class="c-i-m-c-t"><span>招生介绍</span></p>
                <div class="c-i-m-c-c">
                    <%--${sch.demand}--%>
                    ${zsjj}
                </div>
            </div>
        </div>
    	<div class="col-lg-4" style="width:300px;">
            <div style="margin-top:-20px;">
        	    <jsp:include page="college-form.jsp" />
            </div>
        </div>
    </div>
    <div class="c-index-main">
    	<div class="col-lg-4" style="width:355px;">
        	<div class="c-index-m-c">
            	<p class="c-i-m-c-t"><span>中考资讯</span></p>
                <div class="c-i-m-c-c">
                    <c:if test="${zkxxList != null}">
                        <ul>
                            <c:forEach items="${zkxxList}" var="zk">
                                <li><a href="${ctx}/school/newsInfo/${sch.id}/${zk.id}.do">${zk.title}</a></li>
                            </c:forEach>
                        </ul>
                    </c:if>
                </div>
            </div>
        </div>
    	<div class="col-lg-4" style="width:355px;">
        	<div class="c-index-m-c">
            	<p class="c-i-m-c-t"><span>高考资讯</span></p>
                <div class="c-i-m-c-c">
                    <c:if test="${gkxxList != null}">
                        <ul>
                            <c:forEach items="${gkxxList}" var="gk">
                                <li><a href="${ctx}/school/newsInfo/${sch.id}/${gk.id}.do">${gk.title}</a></li>
                            </c:forEach>
                        </ul>
                    </c:if>
                </div>
            </div>
        </div>
    	<div class="col-lg-4" style="width:300px;">
        	<div class="c-index-m-f c-index-contact">
            	<p class="c-i-m-f-t">联系我们</p>
                <div><label>热线电话：</label><span>${sch.tel}</span></div>
                <%--<div><label>传真号码：</label><span>028-12345678</span></div>--%>
                <div><label>电子邮件：</label><span>${sch.email}</span></div>
                <div><label>在线Q Q：</label><span>${sch.qq}</span></div>
                <div><label>公司地址：</label><span>${sch.address}</span></div>
            </div>
        </div>
    </div>
    <div class="college-center c-index-images">
    	<p class="c-i-m-c-t"><span>证书展示</span></p>
    	<%--<ul>
        	<li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
        </ul>--%>
        <c:if test="${zszsList != null}">
            <ul>
                <c:forEach items="${zszsList}" var="zszs">
                    <li class="">
                        <img src="${ctx}/resources/images/${zszs.path}" />
                        <p>${zszs.description}</p>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
    </div>
    <div class="college-center c-index-images">
    	<p class="c-i-m-c-t"><span>校企合作</span></p>
        <c:if test="${xqhzList != null}">
            <ul>
                <c:forEach items="${xqhzList}" var="xqhz">
                    <li class="">
                        <img src="${ctx}/resources/images/${xqhz.path}" />
                        <p>${xqhz.description}</p>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
    	<%--<ul>
        	<li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
        </ul>--%>
    </div>
    <div class="college-center c-index-images">
    	<p class="c-i-m-c-t"><span>校园风光</span></p>
    	<%--<ul>
        	<li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
            <li class="">
            	<img src="${ctx}/resources/images/imgcase.jpg" />
                <p>图片名称</p>
            </li>
        </ul>--%>
        <c:if test="${xyfgList != null}">
        <ul>
            <c:forEach items="${xyfgList}" var="xyfg">
                <li class="">
                    <img src="${ctx}/resources/images/${xyfg.path}" />
                    <p>${xyfg.description}</p>
                </li>
            </c:forEach>
        </ul>
        </c:if>
    </div>
    <jsp:include page="./college-bottom.jsp" />
</body>
</html>
