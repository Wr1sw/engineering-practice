<%--
  Created by IntelliJ IDEA.
  User: Seventeen's love
  Date: 2021/6/26
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="${ctx}/static/js/jquery.js"></script>
    <meta name="author" content="Kodinger">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/my-login.css">
    <title>登录框</title>
</head>
<body class="my-login-page">
<section class="h-100">
    <div class="container h-100" >
        <div class="row justify-content-md-center h-100">
            <div class="card-wrapper" >
                <div class="brand">
                    <img src="${ctx}/static/images/user.jpg">
                </div>
                <div class="card fat" >
                    <div class="card-body">
                        <%--<h4 class="card-title" align="center">UserLogin</h4>--%>
                        <a href="${ctx}/login/uLogin" class="card-title">用户名登录</a>&nbsp;&nbsp;&nbsp;
                        <a href="${ctx}/login/pLogin" class="card-title">手机登录</a>
                        <form method="POST">

                            <div class="form-group">
                                <label for="phonenumber"></label>

                                <input id="phonenumber" type="text" class="form-control" name="phonenumber" value="" placeholder="手机号码" required autofocus>
                            </div>

                            <div class="form-group">
                                <label for="securitycode"></label>
                                <input id="securitycode" type="text" class="form-control" name="securitycode" placeholder="验证码" >
                                <div align="right">
                                    <a href="javascript:void(0);" class="btn-link" >获取验证码</a>
                                </div>
                            </div>

                            <div class="form-group no-margin">
                                <button type="submit" class="btn btn-primary btn-block">登录</button>
                            </div>
                            <div class="margin-top20 text-center">
                                没有账号？ <a href="../signup.jsp">创建</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="${ctx}/static/js/jquery.min.js"></script>
<script src="${ctx}/static/js/bootstrap.min.js"></script>
<script src="${ctx}/static/js/my-login.js"></script>
</body>
<%--<script>
    $('form').submit(function () {
        var userName = $('input[name=username]').val();
        var passWord = $('input[name=password]').val();
        if (userName.length == 0) {
            alert("用户名不能为空");
            return false;
        }
        if (passWord.length == 0) {
            alert("密码为空");
            return false;
        }
    });
</script>--%>
</html>
