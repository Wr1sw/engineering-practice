<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/mall.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="${ctx}/static/css/user/css/style.css">
    <script src="${ctx}/static/css/user/js/jquery-1.8.3.min.js"></script>
    <script src="${ctx}/static/css/user/js/jquery.luara.0.0.1.min.js"></script>
</head>
<body>

<%@include file="../Head.jsp"%>

<div class="width1200 center_yh hidden_yh font14" style="height: 40px;line-height: 40px;">
    <span>当前位置：</span><a href="${ctx}/login/uIndex" class="c_66">首页</a>
    ><a href="#" class="c_66">个人中心</a>
    ><a href="#" class="c_66">我的订单</a>
</div>
<div class="width100 hidden_yh" style="background: #f0f0f0;padding-top: 34px;padding-bottom: 34px;">
    <div class="width1200 hidden_yh center_yh">
        <div id="vipNav">
            <a href="${ctx}/user/view">个人信息</a>
            <a href="${ctx}/itemOrder/my" class="on">我的订单</a>
            <a href="${ctx}/login/pass">修改密码</a>
        </div>
        <div id="vipRight">
            <div style="width: 938px;border:1px solid #ddd;background: #fff;">
                <div class="width100 hidden_yh" style="height: 74px;line-height: 74px;background: #f5f8fa;border-bottom: 1px solid #ddd;" id="navLt">
                    <span class="left_yh font24 width20 tcenter cursor onHover onorange slect">全部订单</span>
                    <span class="left_yh font24 width20 tcenter cursor onHover onorange">已取消</span>
                    <span class="left_yh font24 width20 tcenter cursor onHover onorange">待发货</span>
                    <span class="left_yh font24 width20 tcenter cursor onHover onorange">待收货</span>
                    <span class="left_yh font24 width20 tcenter cursor onHover onorange">已收货</span>
                </div>
                <!--全部订单-->
                <div class="allGoods width100 hidden_yh hhD" style="display: block;">

                </div>

                <!--已取消-->
                <div class="allGoods width100 hidden_yh hhD" style="display: none;">

                </div>


                <!--待发货-->
                <div class="allGoods width100 hidden_yh hhD" style="display: none;">

                </div>


                <!--待收货-->
                <div class="allGoods width100 hidden_yh hhD" style="display: none;">

                </div>

                <!--已收货-->
                <div class="allGoods width100 hidden_yh hhD" style="display: none;">

                </div>
            </div>
        </div>
    </div>
</div>


<%@include file="../Footer.jsp"%>
</body>
</html>



















