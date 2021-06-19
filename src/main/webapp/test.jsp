<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
    <title>管理员登录</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/back/style.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/back/pintuer.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/back/admin.css.css">
    <script src="${ctx}/static/js/jquery.js"></script>
    <script src="${ctx}/static/js/pintuer.js"></script>
</head>
<body>
<div class="bg">
    <div class="container">
        <div class="line bouncein">
            <div class="xs6 xm4 xs3-move xm4-move">
                <form action="${ctx}/login/toLogin" method="post">
                    <div class="panel loginbox">
                        <div class="text-center margin-big padding-big-top"><h1>管理员登录</h1></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
