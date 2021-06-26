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
<script language="JavaScript">
    var info;
    info = {"sex":"${obj.sex}"};
    function showData(Info){
        $("#choice").val(Info["sex"]);
    }
</script>
<body onload="showData(info);">
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
            <form action="${ctx}/user/exUpdate" method="post" id="myf" name="frm">
                <div class="hidden_yh bj_fff" style="width: 938px;border: 1px solid #ddd;">
                    <div class="width100 font24" style="height: 60px;line-height: 60px;text-indent: 50px; background: #f5f8fa;border-bottom: 1px solid #ddd;">基本信息</div>
                    <div class="width100" style="height: 120px;line-height: 120px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>当前头像：
                        </div>
                        <img src="${ctx}/static/images/login/head.jpg" alt="" width="90" height="90"/>
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>昵称：
                        </div>
                        <input type="text" name="nickName" value="${obj.userName}" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;" readonly="readonly">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>真实姓名：
                        </div>
                            <input type="text" name="realName" value="${obj.realName}" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>性别：
                        </div>
                        <select style="outline: none;border: 1px solid #ddd;height: 30px;" name="sex" id="choice">
                            <option value="男" > 男</option>
                            <option value="女" >女</option>
                        </select>
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>邮箱：
                        </div>
                        <input type="text" name="email" value="${obj.email}" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>手机号：
                        </div>
                        <input type="text" name="phone" value="${obj.phone}" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            <font class="red">*</font>收货地址一：
                        </div>
                        <input type="text" name="address" value="${obj.address}" style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            收货地址二：
                        </div>
                        <input type="text" name="address2" value="" placeholder="省份/城市/所属区..." style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            收货地址三：
                        </div>
                        <input type="text" name="address3" value="" placeholder="省份/城市/所属区..." style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            收货地址四：
                        </div>
                        <input type="text" name="address4" value="" placeholder="省份/城市/所属区..." style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-top: 25px;">
                        <div class="left_yh font16 tright" style="width: 120px;">
                            收货地址五：
                        </div>
                        <input type="text" name="address5" value="" placeholder="省份/城市/所属区..." style="width: 243px;border: 1px solid #ddd;outline: none;height:30px;text-indent: 10px;">
                    </div>
                    <div class="width100" style="height: 100px;line-height: 100px">
                    </div>
                    <div class="width100" style="height: 32px;line-height: 32px;margin-bottom: 70px;">
                        <button type="button" onclick="check();" class="left_yh block_yh font16 tcenter ff5802 sub" style="width: 244px;height: 33px;line-height: 33px;margin-left: 120px;">保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    function check() {
        var myreg = /^[1][3,4,5,7,8,9][0-9]{9}$/;
        if(frm.nickName.value == "") {
            alert("昵称不能为空！");
            frm.nickName.focus();
            return;
        }
        if(frm.realName.value == "" || frm.realName.value.length < 2) {
            alert("姓名不能少于两个字符！");
            frm.realName.focus();
            return;
        }
        if (frm.email.value.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1) {
            alert("请填写正确的email！");
            frm.email.focus();
            return;
        }
        if (!myreg.test(frm.phone.value)) {
            alert("请输入位数为11位的中国大陆手机号码！");
            frm.phone.focus();
            return;
        }
        if (frm.address.value == "" ) {
            alert("收货地址一为默认地址不能为空！");
            frm.address.focus();
            return;
        }
        frm.submit();
    }
    function judgeM(sex) {
        if(sex == 1){
            return "selected";
            alert("1111111111111111111111");
        }
        return "";
    }
    function judgeW(sex) {
        if(sex == 0){
            return "selected";
        }
        return "";
    }
</script>


    <%@include file="../Footer.jsp"%>
</body>
</html>



















