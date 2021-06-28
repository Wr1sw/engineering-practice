<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/6/8
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.cuit.utils.StringUtils" %>
<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<%@ page import="com.cuit.utils.Consts" %>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mall.css">
        <script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Justified Nav Template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.10/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.10/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.10/examples/justified-nav/justified-nav.css" rel="stylesheet">

        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.10/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.10/assets/js/ie-emulation-modes-warning.js"></script>
</head>
<body>
<!--主体-->
<div class="row" style="padding: 35px"align="center">
        <img src="${ctx}/static/images/500error.png" width="1700px" height="750px" align="center">
</div>
<div class="jumbotron" style="padding: 0px">
        <p><a class="btn btn-lg btn-success" href="#" role="button">回到首页</a></p>
</div>
</body>
<script src="${ctx}/static/js/mall.js"></script>
</html>