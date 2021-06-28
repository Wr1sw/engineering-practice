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

            <table width="936px" style="background: #f5f8fa;">
                <tr>
                    <td class="cursor font24 onorange slect" align="center" width="40%" style="line-height: 74px;">全部订单</td>
                    <td class="font24 tcenter cursor onorange" width="20%">运输中</td>
                    <td class="font24 tcenter cursor onorange" width="20%">待收货</td>
                    <td class="font24 tcenter cursor onorange" width="20%">已收货</td>
                </tr>
                <c:forEach items="${orders}" var="order" varStatus="l">
                    <tr style="line-height: 32px">
                        <td style="font-family: 'Tahoma'; font-size: 18px" >&nbsp;${order.total}&nbsp;${user.realName}&nbsp;${user.phone} </td>
                        <td align="center">
                            <c:if test="${order.status == 1}">
                                <span class="glyphicon glyphicon-road" style="color: #7f7aff;"></span>
                            </c:if>
                        </td>
                        <td align="center">
                            <c:if test="${order.status == 2}">
                                <span class="glyphicon glyphicon-inbox" style="color: #39e7ff;"></span>
                            </c:if>
                        </td>
                        <td align="center">
                            <c:if test="${order.status == 3}">
                                <span class="glyphicon glyphicon-ok" style="color: #1bff2f;"></span>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>


<%@include file="../Footer.jsp"%>
</body>
</html>



















