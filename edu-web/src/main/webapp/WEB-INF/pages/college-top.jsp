<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="college-header-line">
  <div class="college-center">
    <span class="wellcomeword"></span>
            <span class="college-hl-link">
                <a href="#">网站首页</a> |
                <a href="#">加入收藏</a> |
                <a href="#">设为主页</a> |
            </span>
  </div>
</div>
<div class="college-l-t">
  <div class="college-center">
    <a href="#">
      <img src="${ctx}/resources/images/tianyilogo.jpg" />
    </a>
    <p>
      <i>
        <span class="c-t-title">24小时服务热线：</span><br />
        <span class="c-t-content">028-12345678</span>
      </i>
    </p>
  </div>
</div>
<div class="college-center c-nav">
  <input type="hidden" value="${schId}">
  <ul>
    <li><a href="${ctx}/school/home/${schId}.do">学校首页</a></li>
    <li><a href="#">关于学校</a></li>
    <li><a href="${ctx}/school/major/${schId}.do">专业设置</a></li>
    <li><a href="${ctx}/school/news/${schId}.do">校园新闻</a></li>
    <li><a href="${ctx}/school/scenery/${schId}.do">校园风光</a></li>
    <li><a href="#">就业中心</a></li>
    <li><a href="#">收费标准</a></li>
    <li><a href="#">在线报名</a></li>
    <li><a href="#">联系方式</a></li>
  </ul>
</div>
<div class="c-main-img college-center">
  <img src="${ctx}/resources/images/tianyiimg.jpg" />
</div>


