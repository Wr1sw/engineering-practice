<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>支付成功</title>
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/font-awesome.css">
    <link rel="stylesheet" href="../static/css/mall.css">
</head>
<body>
<!--顶部导航栏-->
<%@include file="Head.jsp"%>
<!-- 搜索框 -->
<div class="search">
    <div class="search-body">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="输入你想要的商品">
            <span class="input-group-btn">
			        <a href="item/search.jsp"><button class="btn btn-danger btn-search" type="button"><i class="fa fa-search" aria-hidden="true"></i>搜索</button></a>
			      </span>
        </div>
        <div class="search-keyword">
            <p>&nbsp;&nbsp;小满节气 &nbsp;&nbsp;  满199减100&nbsp;&nbsp; 时尚服装&nbsp;&nbsp;国际大牌 &nbsp;&nbsp; 墅质家居&nbsp;&nbsp; 品质生活&nbsp;&nbsp;</p>
        </div>
    </div>
</div>
<!-- 导航栏 -->
<div class="search-nav">
    <div class="search-nav-container search-nav-container-90">
        <ul>
            <li>支付成功</li>
            <li><a href="Trail.jsp">首页</a></li>
            <li><a href="Trail.jsp">服装城</a></li>
            <li><a href="Trail.jsp">美妆馆</a></li>
            <li><a href="Trail.jsp">生鲜</a></li>
        </ul>
    </div>
</div>
<!-- 支付提示 -->
<div class="pay-box">
    <div class="pay-qr-success">
        <img src="../static/images/qr2.svg" alt="" style="margin-left: 1.2em"><br>支付成功!
    </div>
</div>
<!-- 底部 -->
<%@include file="Footer.jsp"%>
</body>
</html>