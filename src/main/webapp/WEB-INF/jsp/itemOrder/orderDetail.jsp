<%@ page import="com.cuit.utils.Consts" %>
<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>订单详情</title>
    <link type="text/css" href="${ctx}/static/css/main.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/bootstrap.css">
    <link rel="stylesheet" href="${ctx}/static/css/font-awesome.css">
    <link rel="stylesheet" href="${ctx}/static/css/mall.css">
    <script src="${ctx}/static/js/jquery.js"></script>
</head>
<body>
    <!--  顶部导航  -->
    <%@include file="../Head.jsp"%>
    <!--搜索框-->
    <div class="search">
        <form action="${ctx}/Item/shoplist" method="post">
            <div class="search-body">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="关键词查询" name="condition" value="${condition}">
                    <span class="input-group-btn">
                        <a href="${ctx}/Item/shoplist"><button class="btn btn-danger btn-search" type="submit">
                            <i class="fa fa-search" aria-hidden="true"></i>搜索</button></a>
                      </span>
                </div>
                <div class="search-keyword">
                    <p>&nbsp;&nbsp;夏至节气 &nbsp;&nbsp;  满199减100&nbsp;&nbsp; 时尚服装&nbsp;&nbsp;国际大牌 &nbsp;&nbsp; 墅质家居&nbsp;&nbsp; 品质生活&nbsp;&nbsp;</p>
                </div>
            </div>
        </form>
    </div>
    <!-- 导航栏 -->
    <div class="search-nav">
        <div class="search-nav-container search-nav-container-90">
            <ul>
                <li>订单详情</li>
                <li><a href="${ctx}/login/uIndex">首页</a></li>
                <li><a href="${ctx}/Item/shoplist?condition=手机">手机馆</a></li>
                <li><a href="${ctx}/Item/shoplist?condition=电脑">电脑馆</a></li>
                <li><a href="${ctx}/Item/shoplist?condition=平板">平板馆</a></li>
            </ul>
        </div>
    </div>
    <%-- 订单详情显示 --%>
    <div class="Order_Detail OrderWidth" align="center">
        <div class="OrderDetail_sum">
            <ul class="OrderLeft">
                <li>商品信息</li>
            </ul>
            <ul class="OrderRight">
                <li class="OrderTotal">总价</li>
                <li class="OrderAddress">收获地址</li>
                <li>收货人</li>
                <li>电话</li>
            </ul>
        </div>
        <c:forEach items="${cars}" var="car" varStatus="l">
            <div class="Order_box comWidth" >
                <div class="Order_box comWidth">
                    <div class="Order_product">
                        <div class="Order_des OrderLeft">
                            <input type="hidden" name="car" id="${car.id}" value="${car.id},${car.itemId},${car.total},${user.id}">
                            <img src="${ctx}${car.item.url1}" alt="" class="fl" width="90" height="90"/>
                            <span class="bh">${car.item.name}</span>
                        </div>
                        <div class="OrderRight1 bh">
                            <input type="text" class="OrderPhone" placeholder="${user.phone}">
                        </div>
                        <div class="OrderRight1">
                            <input class="OrderPerson" placeholder="${user.realName}">
                        </div>
                        <div class="OrderRight1">
                            <div class="OrderLeft" >
                                <select class="Order_input">
                                    <option>${user.address}</option>
                                    <option>四川省成都市双流区成都信息工程大学航空港校区</option>
                                </select>
                            </div>
                        </div>
                        <div class="Order_price OrderRight1">
                            <div class="OrderNum" >￥<fmt:formatNumber value="${car.total}" type="currency" pattern="0.00"/></div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <div><button type="button" style="text-decoration: none; color: red; font-family: 'Tahoma'; font-size: 25px" onclick="Account();">结算</button></div>
    </div>
    <!--底部-->
    <%@include file="../Footer.jsp"%>
</body>
<script type="text/javascript" src="${ctx}/static/js/carorder.js"></script>
</html>
