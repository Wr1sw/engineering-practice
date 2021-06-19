<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="../static/js/jquery.js"></script>
    <title>登录框</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
        }
        body{
            background-image:url(${pageContext.request.contextPath}/static/images/login.jpg);
            background-size:100% 150%;
            background-color: #eee;
        }
        .container{
            width: 380px;
            height: 300px;
            margin: 0px auto;
            margin-right:300px;
            margin-top: 200px;
            border-radius: 8px;
            background-color: #fff;
        }
        .header{
            width: 100%;
            height: 50px;
            background-color: #ff4500;
            font-size: 26px;
            color: #fff;
            line-height: 50px;
            text-align: center;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }
        .form-body{
            margin-top: 48px;
        }
        label{
            width: 82px;
            margin-left: 18px;
        }
        .form-group{
            margin-top: 18px;
        }
        .form-input{
            height: 33px;
            width: 260px;
            padding-left: 8px;
            background-color: #F0FFFF;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn{
            margin-top: 30px;
        }
        .btn a{
            text-decoration: none;
            cursor: pointer;
        }
        .form-btn{
            height: 38px;
            width: 150px;
            color:#fff;
            border: 1px solid #eee;
            border-radius: 5px;
            box-shadow: 0px 2px 3px #ccc;
        }
        .form-btn-primary{
            margin-left: 28px;
            background-color: #f4a460;
        }
        .form-btn-warning{
            margin-left: 15px;
            background-color: #f4a460;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <p>登陆</p>
    </div>
    <div class="form-body">
        <form action=${ctx}/login/uLoginTo method="post">
            <div class="form-group">
                <label >用户名:</label>
                <input type="text" class="form-input" name="userName">
            </div>

            <div class="form-group">
                <label >密&nbsp;&nbsp;&nbsp;码:</label>
                <input type="password" class="form-input" name="passWord">
            </div>

            <div class="btn">
                <a href="../Trail.jsp"><button class="form-btn form-btn-primary " type="submit">登录</button></a>
                <a href="../signup.jsp"><button class="form-btn form-btn-warning " type="submit">注册</button></a>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    $('form').submit(function () {
        var userName = $('input[name=userName]').val();
        var passWord = $('input[name=passWord]').val();
        if (userName.length == 0) {
            alert("用户名不能为空");
            return false;
        }
        if (passWord.length == 0) {
            alert("密码为空");
            return false;
        }
    });
</script>
</html>