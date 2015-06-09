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

    <div class="c-index-main">
    	<div class="col-lg-4" style="width:355px;">
        	<div class="c-index-m-c">
            	<p class="c-i-m-c-t"><span>学校简介</span></p>
                <div class="c-i-m-c-c">
                	${sch.description}
                </div>
            </div>
        </div>
    	<div class="col-lg-4" style="width:355px;">
        	<div class="c-index-m-c">
            	<p class="c-i-m-c-t"><span>招生介绍</span></p>
                <div class="c-i-m-c-c">
                    ${sch.demand}
                </div>
            </div>
        </div>
    	<div class="col-lg-4" style="width:300px;">
        	<div class="c-index-m-f">
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
    </div>
    <div class="c-index-main">
    	<div class="col-lg-4" style="width:355px;">
        	<div class="c-index-m-c">
            	<p class="c-i-m-c-t"><span>中考资讯</span></p>
                <div class="c-i-m-c-c">
                	<ul>
                    	<li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                    </ul>
                </div>
            </div>
        </div>
    	<div class="col-lg-4" style="width:355px;">
        	<div class="c-index-m-c">
            	<p class="c-i-m-c-t"><span>高考资讯</span></p>
                <div class="c-i-m-c-c">
                	<ul>
                    	<li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                        <li><a href="#">这是一条招生简章内容</a></li>
                    </ul>
                </div>
            </div>
        </div>
    	<div class="col-lg-4" style="width:300px;">
        	<div class="c-index-m-f c-index-contact">
            	<p class="c-i-m-f-t">联系我们</p>
                <div><label>热线电话：</label><span>028-12345678</span></div>
                <div><label>传真号码：</label><span>028-12345678</span></div>
                <div><label>电子邮件：</label><span>example@mail.com</span></div>
                <div><label>在线Q Q：</label><span>456123458</span></div>
                <div><label>公司地址：</label><span>成都市锦江区武城大道102号xxxx小区10栋201室</span></div>
            </div>
        </div>
    </div>
    <div class="college-center c-index-images">
    	<p class="c-i-m-c-t"><span>证书展示</span></p>
    	<ul>
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
        </ul>
    </div>
    <div class="college-center c-index-images">
    	<p class="c-i-m-c-t"><span>校企合作</span></p>
    	<ul>
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
        </ul>
    </div>
    <div class="college-center c-index-images">
    	<p class="c-i-m-c-t"><span>校园风光</span></p>
    	<ul>
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
        </ul>
    </div>
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
</body>
</html>