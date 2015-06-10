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

    <div style="float:left; width:100%; height:auto; margin-top:20px;">
   		<div class="college-center college-page">
    	<div class="cc-left">
            <jsp:include page="./college-left.jsp" />

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
