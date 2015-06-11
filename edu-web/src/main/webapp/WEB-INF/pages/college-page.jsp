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
            	${content}
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
