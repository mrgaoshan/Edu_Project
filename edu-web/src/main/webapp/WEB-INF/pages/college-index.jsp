<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<title>升学选校网-${sch.name}</title>
    <link rel="shortcut icon" type="image/x-icon" href="${ctx}/resources/images/favicon.ico" />
    <link href="${ctx}/resources/css/bootstrap.css" rel="stylesheet" />
    <link href="${ctx}/resources/css/style.css" rel="stylesheet" />
    <script type="text/javascript" src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${ctx}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/resources/js/js.js"></script>
    <style>
        .c-i-form-show{ display:none;}
    </style>
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
                <div><label>咨询电话：</label><span>${sch.tel}</span></div>
                <%--<div><label>传真号码：</label><span>028-12345678</span></div>--%>
                <div><label>电子邮件：</label><span>${sch.email}</span></div>
                <div><label>在线Q Q：</label><span>${sch.qq}</span></div>
                <div><label>学校地址：</label><span>${sch.address}</span></div>
            </div>
        </div>
    </div>

    <style>
        .movebox{ width:200px; height:180px; overflow:hidden; border:1px solid #ddd; background:#fff; cursor:pointer;}
        .movebox p{ margin:0px 8px; padding:0px;}
        .moveimg{ display:block; width:200px; height:150px; overflow:hidden;}
        .moveimg img{ width:200px; height:150px;}
        .movetitle{ background:#ddd; height:30px; display:block; width:200px; color:#000; line-height:30px; text-align:center;}
    </style>

    <div class="college-center c-index-images">
    	<p class="c-i-m-c-t"><span>证书展示</span></p>
        <c:if test="${zszsList != null}">
        <div id="gpica" style="overflow:hidden; width:950px; height:182px; margin:0 auto;">
            <table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td id="gpic1a" valign="top" align="center"><table width="974" border="0" align='center' cellpadding="0" cellspacing="0">
                        <tr>
                            <c:forEach items="${zszsList}" var="zszs">
                                <td height="150">
                                    <div class="movebox">
                                        <p class="moveimg"><img src="${ctx}/resources/images/${zszs.path}"></p>
                                        <p class="movetitle">${zszs.description}</p>
                                    </div>
                                </td>
                            </c:forEach>
                        </tr>
                    </table>
                    </td>
                    <td id="gpic2a" valign="top"></td>
                </tr>
            </table>
        </div>
        </c:if>
    </div>
    <div class="college-center c-index-images" style="display: none;">
    	<p class="c-i-m-c-t"><span>校企合作</span></p>
        <div id="gpicb" style="overflow:hidden; width:950px; height:182px; margin:0 auto;">
            <table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td id="gpic1b" valign="top" align="center"><table width="974" border="0" align='center' cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="150">
                                <div class="movebox">
                                    <p class="moveimg"><img src="images/imgcase.jpg"></p>
                                    <p class="movetitle">这是标题</p>
                                </div>
                            </td>
                        </tr>
                    </table>
                    </td>
                    <td id="gpic2b" valign="top"></td>
                </tr>
            </table>
        </div>
        <%--<c:if test="${xqhzList != null}">
            <ul>
                <c:forEach items="${xqhzList}" var="xqhz">
                    <li class="">
                        <img src="${ctx}/resources/images/${xqhz.path}" />
                        <p>${xqhz.description}</p>
                    </li>
                </c:forEach>
            </ul>
        </c:if>--%>
    </div>
    <div class="college-center c-index-images">
    	<p class="c-i-m-c-t"><span>校园风光</span></p>
        <c:if test="${xyfgList != null}">
        <div id="gpicc" style="overflow:hidden; width:950px; height:182px; margin:0 auto;">
            <table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td id="gpic1c" valign="top" align="center"><table width="974" border="0" align='center' cellpadding="0" cellspacing="0">
                        <tr>
                            <c:forEach items="${xyfgList}" var="xyfg">
                                <td height="150">
                                    <div class="movebox">
                                        <p class="moveimg"><img src="${ctx}/resources/images/${xyfg.path}"></p>
                                        <p class="movetitle">${xyfg.description}</p>
                                    </div>
                                </td>
                            </c:forEach>
                        </tr>
                    </table>
                    </td>
                    <td id="gpic2c" valign="top"></td>
                </tr>
            </table>
        </div>
        </c:if>
    </div>
    <jsp:include page="./college-bottom.jsp" />
</body>

<script>
    var speed=30;
    gpic2a.innerHTML=gpic1a.innerHTML;
    function Marqueea(){
        if(gpic2a.offsetWidth-gpica.scrollLeft<=0)
            gpica.scrollLeft-=gpic1a.offsetWidth;
        else{
            gpica.scrollLeft++;
        }
    }
    var MyMara=setInterval(Marqueea,speed);
    gpica.onmouseover=function() {clearInterval(MyMara)}
    gpica.onmouseout=function() {MyMara=setInterval(Marqueea,speed)}



    var speedb=30;
    gpic2b.innerHTML=gpic1b.innerHTML
    function Marqueeb(){
        if(gpic2b.offsetWidth-gpicb.scrollLeft<=0)
            gpicb.scrollLeft-=gpic1b.offsetWidth
        else{
            gpicb.scrollLeft++
        }
    }
    var MyMarb=setInterval(Marqueeb,speedb)
    gpicb.onmouseover=function() {clearInterval(MyMarb)}
    gpicb.onmouseout=function() {MyMarb=setInterval(Marqueeb,speedb)}



    var speedc=30;
    gpic2c.innerHTML=gpic1c.innerHTML
    function Marqueec(){
        if(gpic2c.offsetWidth-gpicc.scrollLeft <= 0)
            gpicc.scrollLeft-=gpic1c.offsetWidth
        else{
            gpicc.scrollLeft++
        }
    }
    var MyMarc=setInterval(Marqueec,speedc)
    gpicc.onmouseover=function() {clearInterval(MyMarc)}
    gpicc.onmouseout=function() {MyMarc=setInterval(Marqueec,speedc)}

</script>
</html>
