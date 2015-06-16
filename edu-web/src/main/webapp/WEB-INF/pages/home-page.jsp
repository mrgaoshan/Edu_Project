<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<title>升学网</title>
	<link href="${ctx}/resources/css/bootstrap.css" rel="stylesheet" />
	<link href="${ctx}/resources/css/style.css" rel="stylesheet" />
	<script type="text/javascript" src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/js.js"></script>
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
    <div class="index-center logo-tel">
        <a href="#"><img src="${ctx}/resources/images/logo.png" class="index-logo" /></a>
        <img src="${ctx}/resources/images/tel.png" class="index-tel" />
    </div>
    <div class="index-nav">
    	<div class="index-center">
        	<a href="${ctx}/">首页</a>
            <span></span>
            <a href="school/index/1.do">天一学校</a>
            <span></span>
            <a href="school/index/2.do">成都信息技术学校</a>
            <span></span>
            <a href="school/index/3.do">商贸管理学校</a>
            <span></span>
            <a href="school/index/4.do">机电工程学校</a>
            <span></span>
            <a href="school/index/5.do">五月花学校</a>
            <span></span>
            <a href="school/index/6.do">四川化工高级技学校</a>
            <span></span>
          <a href="viewNews.do?id=46">联系我们</a> 
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
        <div class="index-link-c">
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
        </div>
    </div>
    <div class="btinfo">
        <div class="index-center">
            全国报名电话：02812345678 24小时服务热线：400-2154-124
            ©2015 成都升学选校网（WWW.SHENXXX.COM)版权所有
        </div>
    </div>
</body>
</html>
