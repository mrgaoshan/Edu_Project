<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="college-header-line">
    <div class="college-center">
        <span class="wellcomeword"></span>
            <span class="college-hl-link">
                <a href="${ctx}">网站首页</a> | 
                <a href="#">加入收藏</a> |
                <a href="#">设为主页</a> |
            </span>
    </div>
</div>
<div class="college-l-t">
    <div class="college-center">
        <a href="${ctx}/school/index/${sch.id}.do">
            <img src="${ctx}${logo}" style="width:400px;height:95px"/>
        </a>
          <p>
              <i>
                <span class="c-t-title">24小时服务热线：</span><br />
                <span class="c-t-content">${sch.tel}</span>
              </i>
          </p>
    </div>
</div>
<div class="college-center c-nav">
    <input type="hidden" value="${sch.id}">
    <ul>
        <li><a href="${ctx}/school/index/${sch.id}.do">学校首页</a></li>
        <li><a href="${ctx}/school/about/${sch.id}.do">关于学校</a></li>
        <li><a href="${ctx}/school/major/${sch.id}.do">专业设置</a></li>
        <li><a href="${ctx}/school/news/${sch.id}.do">校园新闻</a></li>
        <li><a href="${ctx}/school/scenery/${sch.id}.do">校园风光</a></li>
      <!--   <li><a href="#">就业中心</a></li> -->
        <li><a href="${ctx}/school/fee/${sch.id}.do">收费标准</a></li>
        <!-- <li><a href="#">在线报名</a></li> -->
        <li><a href="${ctx}/school/contact/${sch.id}.do">联系方式</a></li>
    </ul>
</div>
<div class="c-main-img college-center">
    <%--<img src="${ctx}/resources/images/tianyiimg.jpg" />--%>
    <img src="${ctx}/resources/images/${syzs}" />
</div>

<%--浮动联系框--%>
<div style="width:163px; height:auto; position:fixed; right:0px; z-index: 999999; top:50%; margin-top:-80px; padding-bottom:10px; border:1px solid #999; background:#fff" id="qqck">
    <p style=" line-height:33px; background:url(${ctx}/resources/images/qqtitlebg.jpg) repeat-x; color:#fff; padding-left:12px; margin-bottom:15px;">在线客服
        <a href="javascript:void(0)" style="color:#fff; float:right; margin-right:10px; text-decoration:none;" id="qqckclose">×</a>
    </p>
    <c:if test="${sch.id == 1}">
    <p style=" margin:3px 0px; text-align:center;">
        <a href="http://wpa.qq.com/msgrd?v=3&uin=915209431&site=qq&menu=yes" target="_blank" style="color:#333; font-size:12px; font-weight:bold; text-decoration:none;">在线客服：<img src="${ctx}/resources/images/qq_icon.gif"></a>
    </p>
    <p style=" margin:3px 0px; text-align:center;">
        <a href="http://wpa.qq.com/msgrd?v=3&uin=525118464&site=qq&menu=yes" target="_blank" style="color:#333; font-size:12px; font-weight:bold; text-decoration:none;">在线客服：<img src="${ctx}/resources/images/qq_icon.gif"></a>
    </p>
    </c:if>
    <p style=" margin:3px 0px; text-align:center;">
        <a href="http://wpa.qq.com/msgrd?v=3&uin=3787233790&site=qq&menu=yes" target="_blank" style="color:#333; font-size:12px; font-weight:bold; text-decoration:none;">在线客服：<img src="${ctx}/resources/images/qq_icon.gif"></a>
    </p>
    <p style="margin:15px 0px 0px 0px ; padding:5px; border-top:1px solid #ddd;">
        如需帮助，请拨打电话<br><span style="font-size:14px; color:#d90000; font-size:14px; font-weight:bold; line-height:28px;">189-0800-5536</span>
    </p>
</div>

<script>
    $(document).ready(function(e) {
        $("#qqckclose").click(function(e) {
            $("#qqck").hide();
        });
    });
</script>