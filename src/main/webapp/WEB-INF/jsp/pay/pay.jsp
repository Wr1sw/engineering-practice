<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>在线支付</title>
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/font-awesome.css">
    <link rel="stylesheet" href="../static/css/mall.css">
</head>
<body>
<!--顶部导航栏-->
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
            <li>支付</li>
            <li><a href="${ctx}/login/uIndex">首页</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=手机">手机馆</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=电脑">电脑馆</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=平板">平板馆</a></li>
        </ul>
    </div>
</div>
<div class="pay-box">
    <div class="pay-title">
        <p>请选择支付方式</p>
    </div>
    <div class="pay-qr">
        <div><img src="${ctx}/static/images/pay/qr.svg" alt=""></div>
        <div style="margin-left: 100px"><img src="${ctx}/static/images/pay/qr2.svg" alt=""></div>
    </div>
    <div class="pay-btn">
        <a href="${ctx}/itemOrder/paySuccess?choice=1" class="btn btn-danger btn-lg" style="margin-left: 15px">微信支付</a>
        <a href="${ctx}/itemOrder/paySuccess?choice=2" class="btn btn-danger btn-lg" style="margin-left: 182px">支付宝支付</a>
    </div>
</div>
<!-- 底部 -->
<%@include file="../Footer.jsp"%>
</body>
</html>