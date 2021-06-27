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
                        <a href="${ctx}/login/uLogin" class="card-title">用户名登录</a>&nbsp;&nbsp;&nbsp;
                        <a href="${ctx}/login/pLogin" class="card-title">手机登录</a>
                        <form id="f1" name="form1">
                            <div class="form-group">
                                <label for="phoneNumber"></label>
                                <input id="phoneNumber" type="text" class="form-control" name="Phone" value="" placeholder="手机号码" onblur="CheckPhone();" required autofocus>
                            </div>
                            <div class="form-group">
                                <label for="securityCode"></label>
                                <input id="securityCode" type="text"  class="form-control" name="securityCode" placeholder="验证码" >
                                <div align="right">
                                    <a href="javascript:GetVerifyCode();" class="btn-link" >获取验证码</a>
                                </div>
                            </div>
                            <div class="form-group no-margin">
                                <button class="btn btn-primary btn-block" onclick="Login();">登录</button>
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
<script>
    function CheckPhone(){
        var myreg = /^[1][3,4,5,7,8,9][0-9]{9}$/;
        var phoneNum = $("#phoneNumber").val();
        if(!myreg.test(phoneNum)){
            alert("手机号输入错误");
        }
    }
    var code;
    var falg;
    function GetVerifyCode(){
        $.ajax({
            type:"POST",
            data:$('#f1').serialize(),
            url:"http://47.107.33.121:9090/Sendtest",
            success:function (data){
                if(data.msg != "ok"){
                    alert("系统错误");
                }else{
                    code = data.code;
                    falg=$("#phoneNumber").val();
                }
            }
        });
    }
    function Login(){
        if(code == $("#securityCode").val()){
            form1.action = "${ctx}/login/telPhone";
            form1.submit();
        }else{
          alert("验证码错误");
        }
    }
</script>
</html>
