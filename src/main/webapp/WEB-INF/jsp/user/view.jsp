<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/user/css/style.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/mall.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${ctx}/static/js/jquery.js"></script>
    <script src="${ctx}/static/css/user/js/jquery.luara.0.0.1.min.js"></script>
</head>
<body>
    <%@include file="../Head.jsp"%>
<div class="width1200 center_yh hidden_yh font14" style="height: 40px;line-height: 40px;">
    <span>当前位置：</span><a href="${ctx}/login/uIndex" class="c_66">首页</a>
    ><a href="#" class="c_66">个人中心</a>
    ><a href="#" class="c_66">个人信息</a>
</div>
<div class="width100 hidden_yh" style="background: #f0f0f0;padding-top: 34px;padding-bottom: 34px;">
    <div class="width1200 hidden_yh center_yh">
        <div id="vipNav">
            <a href="${ctx}/user/view" class="on">个人信息</a>
            <a href="${ctx}/itemOrder/my">我的订单</a>
            <a href="${ctx}/login/pass">修改密码</a>
        </div>
        <div id="vipRight">
            <form action="${ctx}/user/exUpdate" method="post" id="myf">
                <div class="hidden_yh bj_fff" style="width: 938px;border: 1px solid #ddd;">
                    <div class="width100 font24" style="height: 60px;line-height: 60px;text-indent: 50px; background: #f5f8fa;border-bottom: 1px solid #ddd;">基本信息</div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>真实姓名：
                        </div>
                            <input type="text" name="realName" value="111" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>性别：
                        </div>
                        <select style="outline: none;border: 1px solid #ddd;height: 30px;" name="sex">
                            <option value="男">男</option>
                            <option value="女"selected>女</option>
                        </select>
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>邮箱：
                        </div>
                        <input type="text" name="email" value="123456@XX.com" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>手机号：
                        </div>
                        <input type="text" name="phone" value="123123123123" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>地址：
                        </div>
                        <input type="text" name="address" value="成都信息工程大学" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 70px;">
                        <a href="javascript:void(0)" class="left_yh block_yh font16 tcenter ff5802 sub" style="width: 244px;height: 33px;line-height: 33px;margin-left: 120px;">保存</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
       $(".sub").click(function () {
           alert("修改成功");
         $("#myf").submit();
       });
    });
</script>



    <%@include file="../Footer.jsp"%>
</body>
</html>



















