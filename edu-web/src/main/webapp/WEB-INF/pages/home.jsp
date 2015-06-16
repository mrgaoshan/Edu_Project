<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			   
			   var opt = "<option value="+majorId + ">"+majorName+"</option>";
			   
			   $("#majorList").append(opt);
			  
		   });
		  });
}


function submitForm(){
	
			$.ajax({
		                cache: true,
		                type: "POST",
		                url: "${ctx}/user/apply.do",
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
            <a href="school/index/1.do" target="_blank">四川天一学校</a>
            <span></span>
            <a href="school/index/5.do" target="_blank">五月花专修学院</a>
            <span></span>
            <a href="school/index/4.do" target="_blank">成都机电工程学校</a>
            <span></span>
            <a href="school/index/2.do" target="_blank">成都信息技术学校</a>
            <span></span>
            <a href="school/index/3.do" target="_blank">电大商贸管理学院</a>
            <span></span>
            <a href="school/index/6.do" target="_blank">四川化工高级技学校</a>
            <span></span>
            <a href="viewNews.do?id=46">联系我们</a> 
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
                <div class="active item"><img src="${ctx}/resources/images/lb1.jpg" /></div>
                <div class="item"><img src="${ctx}/resources/images/lb2.jpg" /></div>
                <div class="item"><img src="${ctx}/resources/images/lb3.jpg" /></div>
              </div>
              <!-- Carousel nav -->
              <a class="carousel-control left" href="#myCarousel" style="background:url(${ctx}/resources/images/prevb.png) no-repeat center" data-slide="prev">&lsaquo;</a>
              <a class="carousel-control right" href="#myCarousel" style="background:url(${ctx}/resources/images/nextbg.png) no-repeat center" data-slide="next">&rsaquo;</a>
            </div>
        </div>
        <div class="index-form">
  			<div class="c-index-m-f" style="height:332px;">
            	<p class="c-i-m-f-t" style="text-align:center; height:30px; line-height:30px; font-size:16px">在线报名</p>
		<p class="c-i-m-f-t  c-i-form-show" style="text-align:left;  line-height:22px; font-size:14px; color:red;margin-top: -10px;border-bottom: none;background: #e3ffce;">
   		 1、请各位同学认真填写以下报名信息。<br>
    		 2、本次报名不会影响你的填报志愿。<br>
   		 3、多一份选择，多一份希望。
 		 </p>
            	<form method="post" id="registForm" action="" class="zxbm">
                    <p style="margin-bottom:3px;"><label style="width:70px; font-size:14px;">您的姓名：</label><input type="text" name="name"  style=" font-size:14px;" class="fdfinput" placeholder="输入您的姓名" /></p>
		    <p style=" font-size:14px;"><label style="width:70px; font-size:14px;">性   别：</label>男：<input style=" font-size:14px;" type="radio" name="gender" value="male" />&nbsp;&nbsp;
                                           女：<input style=" font-size:14px;" type="radio" name="gender" value="female" />
                    </p>

                    <p style="margin-bottom:3px;"><label style="width:70px; font-size:14px;">出生日期：</label><input style=" font-size:14px;" type="text" name="birthday" placeholder="yyyymmdd" class="fdfinput" /></p>
                    <p style="margin-bottom:3px;"><label style="width:70px; font-size:14px;">预报学校：</label><select style=" font-size:14px;" name="schoolid" class="fdfinput" onchange="changeShool(this)">
                    							  <option value="0" selected="selected">---选择学校---</option>
                    							 <c:forEach items="${schoolsList}" var="item">
                    							  <option value="${item.id}">${item.name} </option>
                    							 </c:forEach>
                    							     
                                              </select>
                    </p>
                    <p style="margin-bottom:3px;"><label style="width:70px; font-size:14px;">预报专业：</label><select style=" font-size:14px;" name="majorid" class="fdfinput" id="majorList">
                    						 	 <option value="0" selected="selected">---选择专业---</option>
                                               
                                              </select>
                    </p>
                    <p style="margin-bottom:3px;"><label style="width:70px; font-size:14px;">联系电话：</label><input style=" font-size:14px;" type="text" name="phone" class="fdfinput" placeholder="输入联系方式" /></p>
                    <p style="margin-bottom:3px;"><label style="width:70px; font-size:14px;">您的Q Q：</label><input style=" font-size:14px;" type="text" name="qq" class="fdfinput"  placeholder="输入数字"/></p>
                    
                    <p style="margin-bottom:3px;"><label style="width:70px; font-size:14px;"></label><input type="button" style=" font-size:14px;" class="submit" value="提交" onclick="submitForm()"/></p>
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
                <a href="school/index/1.do"><img src="${ctx}/resources/images/tyxx.jpg" /></a>
                <a href="school/index/2.do"><img src="${ctx}/resources/images/cdxxjsxx.jpg" /></a>
                <a href="school/index/3.do"><img src="${ctx}/resources/images/gbdsdx.jpg" /></a>
                <a href="school/index/4.do"><img src="${ctx}/resources/images/cdjdgcxx.jpg" /></a>
                <a href="school/index/5.do"><img src="${ctx}/resources/images/wyh.jpg" /></a>
                <a href="school/index/6.do"><img src="${ctx}/resources/images/schggjjgxx.jpg" /></a>
            </div>
        </div>
        <div class="index-center">
        	<img src="${ctx}/resources/images/adv.jpg" />
        </div>
    <div class="index-center index-college-box ">
        <div class="col-lg-6 index-college index-left">
            <p class="index-college-title"><span><a href="http://www.shenxxx.com/school/index/1.do">四川天一学校</a></span></p>
            <div class="index-college-img"><a href="http://www.shenxxx.com/school/index/1.do"><img src="${ctx}/resources/images/btyxx.jpg" /></a></div>
            <div class="index-college-content">
                <a href="http://www.shenxxx.com/school/index/1.do"><p><strong>招生专业：</strong>电子工程、航空服务、电子商务专业、会计专业、计算机及应用、建筑专业、旅游管理等</p>
                <p><strong>招生层次：</strong>中专、大专、本科</p>
                <p><strong>所有费用：</strong>8200元/年</p>
                <p><strong>招生对象：</strong>初中生、高中生、职高生</p></a>
            </div>
        </div>
	<div class="col-lg-6 index-college index-right">
            <p class="index-college-title"><span><a href="http://www.shenxxx.com/school/index/5.do">五月花专修学校</span></a></p>
            <div class="index-college-img"><a href="http://www.shenxxx.com/school/index/5.do"><img src="${ctx}/resources/images/bwyh.jpg" /></a></div>
            <div class="index-college-content"><a href="http://www.shenxxx.com/school/index/5.do">
                <p><strong>招生专业：</strong>财务会计、电子商务、服装设计、航空服务、护理专业、旅游管理、烹饪专业、汽车全能技师等</p>
                <p><strong>招生层次：</strong>中专、大专、本科</p>
                <p><strong>所有费用：</strong>8200元/年</p>
                <p><strong>招生对象：</strong>初中生、高中生、职高生</p></a>
            </div>
        </div>
	<div class="col-lg-6 index-college index-left">
            <p class="index-college-title"><span><a href="http://www.shenxxx.com/school/index/4.do">成都机电工程学校</span></a></p>
            <div class="index-college-img"><a href="http://www.shenxxx.com/school/index/4.do"><img src="${ctx}/resources/images/bcdjdgcxx.jpg" /></a></div>
            <div class="index-college-content"><a href="http://www.shenxxx.com/school/index/4.do">
                <p><strong>招生专业：</strong>阿联酋航空公司-迪拜国际机场航空服务人才定制班、触控技术人才定制班、海航动车高铁乘务人才定制班等</p>
                <p><strong>招生层次：</strong>中专、大专、本科</p>
                <p><strong>所有费用：</strong>8200元/年</p>
                <p><strong>招生对象：</strong>初中生、高中生、职高生</p></a>
            </div>
        </div>
        <div class="col-lg-6 index-college index-right">
            <p class="index-college-title"><span><a href="http://www.shenxxx.com/school/index/2.do">成都信息技术学校</a></span></p>
            <div class="index-college-img"><a href="http://www.shenxxx.com/school/index/2.do"><img src="${ctx}/resources/images/bcdxxjsxx.jpg" /></a></div>
            <div class="index-college-content"><a href="http://www.shenxxx.com/school/index/2.do">
                <p><strong>招生专业：</strong>医护管理、计算机信息管理、艺术设计、机电专业、司法警察、航空服务、教育管理等</p>
                <p><strong>招生层次：</strong>中专、大专、本科</p>
                <p><strong>所有费用：</strong>5000元/年</p>
                <p><strong>招生对象：</strong>初中生、高中生、职高生</p></a>
            </div>
        </div>
        <div class="col-lg-6 index-college index-left">
            <p class="index-college-title"><span><a href="http://www.shenxxx.com/school/index/3.do">电大商贸管理学院</a></span></p>
            <div class="index-college-img"><a href="http://www.shenxxx.com/school/index/3.do"><img src="${ctx}/resources/images/bschggjjgxx.jpg" /></a></div>
            <div class="index-college-content"><a href="http://www.shenxxx.com/school/index/3.do">
                <p><strong>招生专业：</strong>电信通讯、动漫、广告设计、建筑工程、经济管理、旅游专业、汽车工程、学前教育、小学教育等</p>
                <p><strong>招生层次：</strong>中专、大专、本科</p>
                <p><strong>所有费用：</strong>8200元/年</p>
                <p><strong>招生对象：</strong>初中生、高中生、职高生</p></a>
            </div>
        </div>
        
        <div class="col-lg-6 index-college index-right">
            <p class="index-college-title"><span><a href="http://www.shenxxx.com/school/index/6.do">四川化工高级技工学校</a></span></p>
            <div class="index-college-img"><a href="http://www.shenxxx.com/school/index/6.do"><img src="${ctx}/resources/images/index-college-img.jpg" /></a></div>
            <div class="index-college-content"><a href="http://www.shenxxx.com/school/index/6.do">
                <p><strong>招生专业：</strong>电子商务、工程造价、工商企业管理、化工分析与检验、会计专业、计算机软件设计、计算机网络技术等</p>
                <p><strong>招生层次：</strong>中专、大专、本科</p>
                <p><strong>所有费用：</strong>8200元/年</p>
                <p><strong>招生对象：</strong>初中生、高中生、职高生</p></a>
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
            <div class="index-link-c" style="line-height:50px">
            	<a href="http://www.scedu.net" target="_blank" style="margin-left:30px">四川教育厅</a>
                <a href="http://www.sceea.cn" target="_blank" style="margin-left:30px">四川教育考试院</a>
                <a href="http://www.tfzikao.com" target="_blank" style="margin-left:30px">成人自考网</a>
                <a href="http://www.sczsxx.com" target="_blank" style="margin-left:30px">四川高考招考</a>
            </div>
        </div>
        <div class="btinfo">
        	<div class="index-center">
            	全国报名电话：02812345678 24小时服务热线：400-2154-124
               	©2015 成都升学选校网（WWW.SHENXXX.COM)版权所有 
            </div>
        </div>

<%--浮动联系框--%>
<div style="width:163px; height:auto; position:fixed; right:0px; z-index: 999999; top:50%; margin-top:-80px; padding-bottom:10px; border:1px solid #999; background:#fff" id="qqck">
    <p style=" line-height:33px; background:url(${ctx}/resources/images/qqtitlebg.jpg) repeat-x; color:#fff; padding-left:12px; margin-bottom:15px;">在线客服
        <a href="javascript:void(0)" style="color:#fff; float:right; margin-right:10px; text-decoration:none;" id="qqckclose">×</a>
    </p>
    
    <p style=" margin:3px 0px; text-align:center;">
        <a href="http://wpa.qq.com/msgrd?v=3&uin=3187233790&site=qq&menu=yes" target="_blank" style="color:#333; font-size:12px; font-weight:bold; text-decoration:none;">在线客服：<img src="${ctx}/resources/images/qq_icon.gif"></a>
    </p>
    <p style=" margin:3px 0px; text-align:center;">
        <a href="http://wpa.qq.com/msgrd?v=3&uin=3187233790&site=qq&menu=yes" target="_blank" style="color:#333; font-size:12px; font-weight:bold; text-decoration:none;">在线客服：<img src="${ctx}/resources/images/qq_icon.gif"></a>
    </p>
    
    <p style=" margin:3px 0px; text-align:center;">
        <a href="http://wpa.qq.com/msgrd?v=3&uin=3187233790&site=qq&menu=yes" target="_blank" style="color:#333; font-size:12px; font-weight:bold; text-decoration:none;">在线客服：<img src="${ctx}/resources/images/qq_icon.gif"></a>
    </p>
    <p style="margin:15px 0px 0px 0px ; padding:5px; border-top:1px solid #ddd;">
        如需帮助，请拨打电话<br><span style="font-size:14px; color:#d90000; font-size:14px; font-weight:bold; line-height:28px;">13550030325</span>
    </p>
</div>

<script>
    $(document).ready(function(e) {
        $("#qqckclose").click(function(e) {
            $("#qqck").hide();
        });
    });
</script>
</body>
</html>
