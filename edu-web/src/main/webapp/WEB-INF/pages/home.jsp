<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>升学网</title>
	<link href="${ctx}/resources/css/bootstrap.css" rel="stylesheet" />
	<link href="${ctx}/resources/css/style.css" rel="stylesheet" />
	<script type="text/javascript" src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/js.js"></script>
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
			   
			   var opt = "<option value="+majorId + ">"+majorName+"</option>";
			   
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
</head>

<body>
	<div class="index-header-line">
    	<div class="index-center">
        	<span class="wellcomeword">欢迎您来到升学网！</span>
            <span class="index-hl-link">
                <a href="/edu-web">网站首页</a> |
                <a href="#" onclick="bookmark();">加入收藏</a> |
                <a href="#" onclick="saveHome();">设为主页</a> |
            </span>
        </div>
    </div>
    <div class="index-center logo-tel">
    	<a href="#"><img src="<%=request.getContextPath() %>/resources/images/logo.png" class="index-logo" /></a>
        <img src="<%=request.getContextPath() %>/resources/images/tel.png" class="index-tel" />
    </div>
    <div class="index-nav">
    	<div class="index-center">
        	<a href="/edu-web">首页</a>
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
           <!--  <a href="#">在线报名</a> -->
        </div>
    </div>
    <div class="index-lb-form index-center">
    	<div class="index-lb">
        	<div id="myCarousel" class="carousel slide">
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
              </ol>
              <!-- Carousel items -->
              <div class="carousel-inner">
                <div class="active item"><img src="<%=request.getContextPath() %>/resources/images/lb1.jpg" /></div>
                <div class="item"><img src="<%=request.getContextPath() %>/resources/images/lb2.jpg" /></div>
                <div class="item"><img src="<%=request.getContextPath() %>/resources/images/lb3.jpg" /></div>
              </div>
              <!-- Carousel nav -->
              <a class="carousel-control left" href="#myCarousel" style="background:url(<%=request.getContextPath() %>/resources/images/prevb.png) no-repeat center" data-slide="prev">&lsaquo;</a>
              <a class="carousel-control right" href="#myCarousel" style="background:url(<%=request.getContextPath() %>/resources/images/nextbg.png) no-repeat center" data-slide="next">&rsaquo;</a>
            </div>
        </div>
        <div class="index-form">
  			<div class="c-index-m-f" style="height:332px;">
            	<p class="c-i-m-f-t" style="text-align:center; height:35px; line-height:35px; font-size:16px">在线报名</p>
            	<form method="post" id="registForm" action="" class="zxbm">
                	<p style="margin-bottom:12px;"><label style="width:70px; font-size:14px;">您的名称：</label><input type="text" name="name"  style=" font-size:14px;" class="fdfinput" placeholder="输入名称" /></p>
                    <p style="margin-bottom:12px;"><label style="width:70px; font-size:14px;">报名学校：</label><select style=" font-size:14px;" name="schoolid" class="fdfinput" onchange="changeShool(this)">
                    							  <option value="0" selected="selected">---选择学校---</option>
                    							 <c:forEach items="${schoolsList}" var="item">
                    							  <option value="${item.id}">${item.name} </option>
                    							 </c:forEach>
                    							     
                                              </select>
                    </p>
                    <p style="margin-bottom:12px;"><label style="width:70px; font-size:14px;">报名专业：</label><select style=" font-size:14px;" name="majorid" class="fdfinput" id="majorList">
                    						 	 <option value="0" selected="selected">---选择专业---</option>
                                               
                                              </select>
                    </p>
                    <p style="margin-bottom:12px;"><label style="width:70px; font-size:14px;">联系方式：</label><input style=" font-size:14px;" type="text" name="phone" class="fdfinput" placeholder="输入联系方式" /></p>
                    <p style="margin-bottom:12px;"><label style="width:70px; font-size:14px;">您的Q Q：</label><input style=" font-size:14px;" type="text" name="qq" class="fdfinput"  placeholder="输入数字"/></p>
                    <p style="margin-bottom:12px;"><label style="width:70px; font-size:14px;">出生日期：</label><input style=" font-size:14px;" type="text" name="birthday" placeholder="yyyymmdd" class="fdfinput" /></p>
                    <p style=" font-size:14px;"><label style="width:70px; font-size:14px;">性   别：</label>男：<input style=" font-size:14px;" type="radio" name="gender" value="male" />
                                           女：<input style=" font-size:14px;" type="radio" name="gender" value="female" />
                    </p>
                    <p style="margin-bottom:12px;"><label style="width:70px; font-size:14px;"></label><input type="button" style=" font-size:14px;" class="submit" value="提交" onclick="submitForm()"/></p>
                </form>
            </div>
        </div>
    </div>
    <div class="index-center index-line1">
        	<div class="index-jz" >
                <div class="col-lg-4" style="width:335px; float:left; padding:0; height:350px">
        		<div class="c-index-m-c" style="height:340px;">
            	<p class="c-i-m-c-t"><span>招生简章</span></p>
                <div class="c-i-m-c-c">
                	<ul>
                	<c:forEach items="${zsjjList}" var="item">
                    	<li><a href="<c:url value="viewNews.do?id=${item.id}"/>">${item.title}</a></li>
                    </c:forEach>
                    </ul>
                </div>
            </div>
            	</div>
           		<div class="col-lg-4" style="width:335px; float:right; padding:0">
                <div class="c-index-m-c" style="height:340px;">
                    <p class="c-i-m-c-t"><span>热门专业</span></p>
                    <div class="c-i-m-c-c">
                        <ul>
                      
                         <c:forEach items="${topMajorList}" var="item">
                    	<li><a href="<c:url value="school/majorInfo/${item.schoolid}/${item.id}.do"/>">${item.name}</a></li>
                  		 </c:forEach>
                           
                        </ul>
                    </div>
                </div>
            </div>
            </div>
            
            <div class="index-slist">
            	<a href="#"><img src="<%=request.getContextPath() %>/resources/images/ty.jpg" /></a>
                <a href="#"><img src="<%=request.getContextPath() %>/resources/images/ty.jpg" /></a>
                <a href="#"><img src="<%=request.getContextPath() %>/resources/images/ty.jpg" /></a>
                <a href="#"><img src="<%=request.getContextPath() %>/resources/images/ty.jpg" /></a>
                <a href="#"><img src="<%=request.getContextPath() %>/resources/images/ty.jpg" /></a>
                <a href="#"><img src="<%=request.getContextPath() %>/resources/images/ty.jpg" /></a>
            </div>
        </div>
        <div class="index-center">
        	<img src="<%=request.getContextPath() %>/resources/images/adv.jpg" />
        </div>
        <div class="index-center index-college-box ">
        	<div class="col-lg-6 index-college index-left">
            	<p class="index-college-title"><span>天一学校</span></p>
                <div class="index-college-img"><img src="<%=request.getContextPath() %>/resources/images/index-college-img.jpg" /></div>
                <div class="index-college-content">
                	<p><strong>招生专业：</strong>旅游管理、电子商务、艺术设计、会计、企业管理、建筑、航空服务、幼师等</p>
                    <p><strong>招生层次：</strong>中专、大专、本科</p>
                    <p><strong>所有费用：</strong>8200元/年</p>
                    <p><strong>招生对象：</strong>初中生、高中生、职高生</p>
                </div>
            </div>
            <div class="col-lg-6 index-college index-right">
            	<p class="index-college-title"><span>成都信息技术学校</span></p>
                <div class="index-college-img"><img src="<%=request.getContextPath() %>/resources/images/index-college-img.jpg" /></div>
                <div class="index-college-content">
                	<p><strong>招生专业：</strong>旅游管理、电子商务、艺术设计、会计、企业管理、建筑、航空服务、幼师等</p>
                    <p><strong>招生层次：</strong>中专、大专、本科</p>
                    <p><strong>所有费用：</strong>8200元/年</p>
                    <p><strong>招生对象：</strong>初中生、高中生、职高生</p>
                </div>
            </div>
            <div class="col-lg-6 index-college index-left">
            	<p class="index-college-title"><span>商贸管理学校</span></p>
                <div class="index-college-img"><img src="<%=request.getContextPath() %>/resources/images/index-college-img.jpg" /></div>
                <div class="index-college-content">
                	<p><strong>招生专业：</strong>旅游管理、电子商务、艺术设计、会计、企业管理、建筑、航空服务、幼师等</p>
                    <p><strong>招生层次：</strong>中专、大专、本科</p>
                    <p><strong>所有费用：</strong>8200元/年</p>
                    <p><strong>招生对象：</strong>初中生、高中生、职高生</p>
                </div>
            </div>
            <div class="col-lg-6 index-college index-right">
            	<p class="index-college-title"><span>机电工程学校</span></p>
                <div class="index-college-img"><img src="<%=request.getContextPath() %>/resources/images/index-college-img.jpg" /></div>
                <div class="index-college-content">
                	<p><strong>招生专业：</strong>旅游管理、电子商务、艺术设计、会计、企业管理、建筑、航空服务、幼师等</p>
                    <p><strong>招生层次：</strong>中专、大专、本科</p>
                    <p><strong>所有费用：</strong>8200元/年</p>
                    <p><strong>招生对象：</strong>初中生、高中生、职高生</p>
                </div>
            </div>
            <div class="col-lg-6 index-college index-left">
            	<p class="index-college-title"><span>五月花学校</span></p>
                <div class="index-college-img"><img src="<%=request.getContextPath() %>/resources/images/index-college-img.jpg" /></div>
                <div class="index-college-content">
                	<p><strong>招生专业：</strong>旅游管理、电子商务、艺术设计、会计、企业管理、建筑、航空服务、幼师等</p>
                    <p><strong>招生层次：</strong>中专、大专、本科</p>
                    <p><strong>所有费用：</strong>8200元/年</p>
                    <p><strong>招生对象：</strong>初中生、高中生、职高生</p>
                </div>
            </div>
            <div class="col-lg-6 index-college index-right">
            	<p class="index-college-title"><span>四川化工高级技工学校</span></p>
                <div class="index-college-img"><img src="<%=request.getContextPath() %>/resources/images/index-college-img.jpg" /></div>
                <div class="index-college-content">
                	<p><strong>招生专业：</strong>旅游管理、电子商务、艺术设计、会计、企业管理、建筑、航空服务、幼师等</p>
                    <p><strong>招生层次：</strong>中专、大专、本科</p>
                    <p><strong>所有费用：</strong>8200元/年</p>
                    <p><strong>招生对象：</strong>初中生、高中生、职高生</p>
                </div>
            </div>
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
