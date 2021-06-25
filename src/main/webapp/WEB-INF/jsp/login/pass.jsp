<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/user/css/style.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/mall.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/bootstrap.css">
    <script src="${ctx}/static/js/jquery.js"></script>
    <script src="${ctx}/static/css/user/js/jquery.luara.0.0.1.min.js"></script>
</head>
<body>
<%@include file="../Head.jsp"%>
<div class="width1200 center_yh hidden_yh font14" style="height: 40px;line-height: 40px;">
    <span>当前位置：</span><a href="${ctx}/login/uIndex" class="c_66">首页</a>
    ><a href="#" class="c_66">个人中心</a>
    ><a href="#" class="c_66">修改密码</a>
</div>
<div class="width100 hidden_yh" style="background: #f0f0f0;padding-top: 34px;padding-bottom: 34px;">
    <div class="width1200 hidden_yh center_yh">
        <div id="vipNav">
            <a href="${ctx}/user/view">个人信息</a>
            <a href="${ctx}/itemOrder/my">我的订单</a>
            <a href="${ctx}/login/pass" class="on">修改密码</a>
        </div>
        <div id="vipRight">
            <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                <div class="left_yh font16 tright" style="width: 120px;">
                    <font class="red">*</font>请输入旧密码：
                </div>
                <input type="password" name="oldpassword" value="" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
            </div>
            <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                <div class="left_yh font16 tright" style="width: 120px;">
                    <font class="red">*</font>请输入新密码：
                </div>
                <input type="password" name="newpassword" value="" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
            </div>
            <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;" >
                <div class="left_yh font16 tright" style="width: 120px;" >
                    <font class="red" >*</font>确认密码：
                </div>
                <input type="password" name="new_password" value="" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
            </div>
                <div class="width100" style="height: 32px;line-height: 32px;margin-top: 70px;">
                    <a href="javascript:void(0)"  class="left_yh block_yh font16 tcenter ff5802 sub" style="width: 244px;height: 33px;line-height: 33px;margin-left: 120px;">修改</a>
                </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $(".sub").click(function () {
            var oldpwd=$('input[name=oldpassword]').val();
            var newpwd=$('input[name=newpassword]').val();
            var new_pwd=$('input[name=new_password]').val();
            var test="123";
            if(oldpwd==""){
                alert("请输入不为空的原密码！");
                oldpwd.focus();
                return ;
            }else if(newpwd==""){
                alert("请输入不为空的新密码！");
                newpwd.focus();
                return ;
            }else if(new_pwd==""){
                alert("请重新输入不为空的新密码！");
                new_pwd.focus();
                return ;
            }else if(newpwd!=new_pwd){
                alert("请重新输入正确的新密码");
                new_pwd.focus();
                return ;
            }else{
                $.ajax({
                    type:"POST",
                    url:"${ctx}/user/doVerify",
                    data: {"newPwd":newpwd,"oldPwd":oldpwd},
                    success:function (data){
                        var code = JSON.parse(data);
                        if(code.result == 1){
                            alert("修改密码成功");
                        }else{
                            alert("密码错误");
                        }
                    }
                });
            }
        });
    });
</script>
<%@include file="../Footer.jsp"%>
</body>
</html>