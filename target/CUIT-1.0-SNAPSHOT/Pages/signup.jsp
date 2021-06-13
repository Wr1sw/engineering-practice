<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <script src="../static/js/jquery.js"></script>
    <style>
        body{
            background-image:url(../static/images/buy.jpg);
            background-size:100% 150%;
        }
        *{
            padding: 0px;
            margin: 0px;
        }
        .container{
            width: 380px;
            height: 360px;
            margin: 0px auto;
            margin-top: 160px;
            color: #fff;
            border-radius: 8px;
            box-shadow: 5px 5px 6px #ccc;
            background-color: #fff;
            opacity:0.7;
        }
        .info{
            width: 100%;
            height: 80px;
            font-size: 28px;
            text-align: center;
            line-height: 80px;
        }
        label{
            margin-left: 18px;
        }
        .form-group{
            margin-top: 18px;
        }
        .form-input{
            height: 33px;
            width: 220px;
            padding-left: 8px;
            background-color: #F0FFFF;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .radio span{
            margin-left: 18px;
        }
        .radio input{
            margin-left: 26px;
        }
        .btn{
            margin-top: 30px;
            margin-left:20px;
        }
        .form-btn{
            height: 38px;
            width: 300px;
            color:#fff;
            margin-left: 15px;
            background-color: #9955ff;
            border-radius: 5px;
            box-shadow: 2px 2px 3px #ccc;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="info" >
        <span style="color: #9999ff">用户注册</span>
    </div>
    <form action="#">
        <div class="form-group">
            <p>
                <label style="color: #9999ff">*&nbsp;用户名:</label>
                <input type="text" class="form-input" name="username">
            </p>
        </div>
        <div class="form-group">
            <label style="color: #9999ff">*&nbsp;密&nbsp;&nbsp;&nbsp;码:</label>
            <input type="password" class="form-input" name="password">
        </div>
        <div class="form-group">
            <label style="color: #9999ff">*&nbsp;邮&nbsp;&nbsp;&nbsp;箱:</label>
            <input type="password" class="form-input" name="Email">
        </div>
        <div class="btn">
            <button type="submit"  class="form-btn">注册</button>
        </div>
    </form>
</div>
</body>
<script>
    $('form').submit(function () {
        var username = $('input[name=username]').val();
        var password = $('input[name=password]').val();
        var Email = $('input[name=Email]').val();
        if (username.length == 0) {
            alert("用户名不能为空");
            return false;
        }
        if (password.length == 0) {
            alert("密码为空");
            return false;
        }
        if (password.length < 4) {
            alert("密码小于4位");
            return false;
        }
        if (Email.indexOf('@') == -1){
            alert("邮箱格式有误");
            return false;
        }
    });
</script>
</html>