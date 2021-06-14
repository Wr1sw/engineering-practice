<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/26
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>head</title>
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/font-awesome.css">
    <link rel="stylesheet" href="../static/css/mall.css">
</head>
<body>
    <div class="nav">
    <ul>
        <li class="nav-pull-down location"><img src="../static/images/icon_location.png" alt="">成都</li>
        <li><a href="#">客服服务</a></li>
        <li><a href="#">商城会员</a></li>
        <li class="nav-pull-down my-shop"><a href="${pageContext.request.contextPath}/UserInfo/User.html">个人中心</a></li>
        <li class="login-signup">你好，请<a href="${pageContext.request.contextPath}/login">登录</a><span class="text-color-red"><a href="${pageContext.request.contextPath}/signup">免费注册</a></span></li>
    </ul>
</div>
</body>
</html>
