<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/edu/admin.js"></script>
<title>欢迎登录后台管理</title>
</head>
<body>
    <div>
        <input type="text" id="username" name="username" placeholder="用户名">
        <input type="password" id="password" name="password" placeholder="密码">
    </div>
    <div>
        <br>
        <button id="login_sbm">登录</button>
    </div>
</body>
</html>