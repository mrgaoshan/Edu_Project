<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <c:if test='${contact == "Y"}'>
            <div class="cc-content">
            	<p class="c-i-m-f-t">联系我们</p>
                <div><label>咨询电话：</label><span>${sch.tel}</span></div>
                <%--<div><label>传真号码：</label><span>028-12345678</span></div>--%>
                <div><label>电子邮件：</label><span>${sch.email}</span></div>
                <div><label>在线Q Q：</label><span>${sch.qq}</span></div>
                <div><label>学校地址：</label><span>${sch.address}</span></div>
            </div>
            </c:if>
        </div>
       
    
        
    </div>
    </div>

    <jsp:include page="./college-bottom.jsp" />
</body>
</html>
