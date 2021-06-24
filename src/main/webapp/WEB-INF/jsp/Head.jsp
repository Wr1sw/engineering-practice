<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<html>
<head>
    <title>head</title>
</head>
<body>
<div class="nav">
    <ul>
        <li class="nav-pull-down location"><img src="${ctx}/static/images/GoodsPicture/icon_location.png" alt="">成都</li>
        <li><a href="#">客服服务</a></li>
        <li><a href="#">商城会员</a></li>
        <c:if test="${userId!=null}">
            <li class="nav-pull-down my-shop"><a href="${ctx}/Trail/viewUser">个人中心</a></li>
            <li class="login-signup"><a href="${ctx}/car/findBySql">我的购物车</a>
                <span class="text-color-red"><a href="${ctx}/signup">我的收藏</a></span>
            </li>
            <li><a href="${ctx}/login/uTuiChu">退出</a></li><li><a href="#">欢迎您：${userName}</a></li> <b></b>
        </c:if>
        <c:if test="${userId==null}">
            <li class="login-signup">你好，请<a href="${ctx}/login/uLogin">登录
            </a><span class="text-color-red"><a href="${ctx}/login/res">免费注册</a></span>
            </li>
        </c:if>
    </ul>
</div>
</body>
</html>
