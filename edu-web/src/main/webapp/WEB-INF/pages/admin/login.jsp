<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎登录后台管理</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/login.css">
    <style type="text/css">
        .download{margin:20px 33px 10px;*margin-bottom:30px;padding:5px;border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px;background:#e6e6e6;border:1px dashed #df0031;font-size:14px;font-family:Comic Sans MS;font-weight:bolder;color:#555}
        .download a{padding-left:5px;font-size:14px;font-weight:normal;color:#555;text-decoration:none;letter-spacing:1px}
        .download a:hover{text-decoration:underline;color:#36F}
        .download span{float:right}
    </style>
</head>
<body>
<div class="main">
    <div class="header hide" style=" font-size:24px; color:#fff; font-family:微软雅黑; text-align:center;">升学网报名系统</div>
    <div class="content">
        <div class="title hide">  </div>
        <form name="login" action="" method="post">
            <fieldset style="border:none;">
                <div class="input">
                    <input class="input_all name" name="name" id="username" placeholder="用户名" type="text" onfocus="this.className=&#39;input_all name_now&#39;;" onblur="this.className=&#39;input_all name&#39;" maxlength="24">
                </div>
                <div class="input">
                    <input class="input_all password" name="password" id="password" type="password" placeholder="密码" onfocus="this.className=&#39;input_all password_now&#39;;" onblur="this.className=&#39;input_all password&#39;" maxlength="24">
                </div>

                <div class="enter" style="text-align:center;">
                    <input class="button hide" name="buttom" id="login_sbm" type="submit" value="">
                </div>
            </fieldset>
        </form>
    </div>
</div>

<script type="text/javascript" src="${ctx}/resources/js/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/edu/admin.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/placeholder.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/h.js"></script>
</body>
</html>