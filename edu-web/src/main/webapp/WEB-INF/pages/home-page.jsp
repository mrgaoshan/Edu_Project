﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<title>升学选校网</title>
	<link href="${ctx}/resources/css/bootstrap.css" rel="stylesheet" />
	<link href="${ctx}/resources/css/style.css" rel="stylesheet" />
	<script type="text/javascript" src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/js.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="${ctx}/resources/images/favicon.ico" />
</head>

<script>

function changeShool(obj){
	
	var schoolId = $(obj).val();
	$("#majorList").empty();  
	var emptopt = " <option value='0' selected='selected'>---选择专业---</option>";
	$("#majorList").append(emptopt);
	 $.post("findMajor.do",{shoolId:schoolId},function(result){ 
		   $(result).each(function(index){
			   
			   var majorName =result[index].name;
			   
			   var majorId =result[index].id;
			   
			   var opt = "<option value="+majorId + ">"+majorName+"</option>"
			   
			   $("#majorList").append(opt);
			  
		   });
		  });
}


function submitForm(){
	
			$.ajax({
		                cache: true,
		                type: "POST",
		                url: "<%=request.getContextPath() %>/user/apply.do",
		                data:$('#registForm').serialize(),
		                async: false,
		                error: function(request) {
		                    alert("Connection error");
		                },
		                success: function(data) {
		                   alert(data.msg);
		                }
		            });
}

function bookmark(){
	  

    alert('添加失败\n您可以通过浏览器，手动收藏');  
   
}

function saveHome(){
	
	alert("设置首页失败，请手动设置！");  
		    
}
</script>


<body>
	<div class="index-header-line">
    	<div class="index-center">
        	<span class="wellcomeword">欢迎您来到升学网！</span>
            <span class="index-hl-link">
                <a href="${ctx}/">网站首页</a> |
                <a href="#" onclick="bookmark();">加入收藏</a> |
                <a href="#" onclick="saveHome();">设为主页</a>
            </span>
        </div>
    </div>
   <div style="background:url(${ctx}/resources/images/top-bg.png) no-repeat center;">
    <div class="index-center logo-tel" >
    	<a href="#"><img src="${ctx}/resources/images/logo.png" class="index-logo" /></a>
        <img src="${ctx}/resources/images/tel.png" class="index-tel" />
    </div>
    </div>
    <div class="index-nav">
    	<div class="index-center">
        	<a href="${ctx}/">首页</a>
            <span></span>
            <a href="school/index/1.do" target="_blank">四川天一学院</a>
            <span></span>
            <a href="school/index/5.do" target="_blank">五月花专修学院</a>
            <span></span>
            <a href="school/index/4.do" target="_blank">成都机电工程学院</a>
            <span></span>
            <a href="school/index/2.do" target="_blank">成都信息技术学院</a>
            <span></span>
            <a href="school/index/3.do" target="_blank">电大商贸管理学院</a>
            <span></span>
            <a href="school/index/6.do" target="_blank">四川化工高级技工学院</a>
            <span></span>
          	 <a href="viewNews.do?id=46" >联系我们</a>  
        </div>
    </div>
  
    <div class="index-center" style="padding-top:30px;margin-bottom:30px;">
  	  ${content}
    </div>
      
        
    <div class="index-center index-news">
        <div class="col-lg-4">
            <div class="index-news-c">
                <p>
                    <span class="in1">学校信息</span>
                    <span class="in2">College news</span>
                    <a href="#">>></a>
                </p>
                <ul>
                 <c:forEach items="${xxxxList}" var="item">
                    <li><a href="<c:url value="viewNews.do?id=${item.id}"/>">${item.title}</a></li>
                </c:forEach>
                </ul>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="index-news-c" style="margin:0 auto;">
                <p>
                    <span class="in1">中考资讯</span>
                    <span class="in2">Senior high school entrance</span>
                    <a href="#">>></a>
                </p>
                <ul>
                     <c:forEach items="${zkxxList}" var="item">
                    <li><a href="<c:url value="viewNews.do?id=${item.id}"/>">${item.title}</a></li>
                </c:forEach>
                </ul>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="index-news-c" style="float:right; margin-right:0px;">
                <p>
                    <span class="in1">高考资讯</span>
                    <span class="in2">College entrance examination</span>
                    <a href="#">>></a>
                </p>
                <ul>
                 <c:forEach items="${gkxxList}" var="item">
                    <li><a href="<c:url value="viewNews.do?id=${item.id}"/>">${item.title}</a></li>
                </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <div class="index-center index-link row">
        <p>
            <span class="in1">友情链接</span>
            <span class="in2">Links</span>
        </p>
       <div class="index-link-c" style="line-height:50px">
            	<a href="http://www.scedu.net" target="_blank" style="margin-left:40px">四川教育厅</a>
                <a href="http://www.sceea.cn" target="_blank" style="margin-left:40px">四川教育考试院</a>
                <a href="http://www.tfzikao.com" target="_blank" style="margin-left:40px">成人自考网</a>
                <a href="http://www.sczsxx.com" target="_blank" style="margin-left:40px">四川高考招考</a>
                <a href="http://www.scpta.gov.cn/" target="_blank" style="margin-left:40px">四川人事考试</a>
                <a href="http://www.51test.net/gaokao/sichuan/xinwen/" target="_blank" style="margin-left:40px">四川高考信息网</a>
                <a href="http://www.scsgk.com/" target="_blank" style="margin-left:40px">四川公考网</a>
       </div>
    </div>
    <div class="btinfo">
        <div class="index-center">
      报名热线：028-89766786 联系老师：陈老师 联系手机：18180788702 13550030325 QQ咨询：<a href="http://wpa.qq.com/msgrd?v=3&uin=525118464&site=qq&menu=yes" target="_blank"><img src="${ctx}/resources/images/qq_icon.gif"></a>
	<a href="http://wpa.qq.com/msgrd?v=3&uin=915209431&site=qq&menu=yes" target="_blank"><img src="${ctx}/resources/images/qq_icon.gif"></a>
      ©2015 成都升学选校网 版权所有 <a href="${ctx}/viewNews.do?id=52">关于我们</a>
    </div>
    </div>
</body>
</html>
