<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
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
<!-- Jumbotron -->
<!--头部-->
<%@include file="../Head.jsp"%>
<!--主体-->
<div class="jumbotron" style="margin-bottom: 0px">
        <h1>公告!</h1>
        <p class="lead">有大事，我来报，欢迎浏览数码新闻公告！</p>
</div>

<!-- Example row of columns -->
<div class="row" style="padding: 45px">
        <div class="col-lg-4">
                <h2>黑科技来袭，你见过能充电的手机壳吗？充电手机壳二合为一！</h2>
                <p>现代社会已经有越来越多的人离不开手机了，最头疼的事儿莫过于手机电量告警，相信很多人为了避免这种担忧都会随身携带大容量移动电源、数据线、充电头，而且常常是一个零件忘带就把我们搞的头大。下面就给大家介绍一款充电神器—背夹移动电源，充电手机壳二合一，随时充电，摆脱线控，个性便携！</p>
                <p><a class="btn btn-primary" href="https://kuaibao.jd.com/article?id=374756" role="button">浏览详情 &raquo;</a></p>
        </div>
        <div class="col-lg-4">
                <h2>当你还在纠结全面屏，我已经用双面屏手机边看电影边聊天了！</h2>
                <p>2017年可谓全面屏手机的大爆发年，各个手机品牌都推出了全面屏旗舰。但随着审美疲劳，很多用户都说这些都不是真正意义上的全面屏，只是屏占比大了而已，使用体验也压根没有变化，跟以往的传统手机并没有什么本质上的区别，更何况现在全面屏已经下放到了千元机领域，所以全面屏手机更加不能像最开始那样带给消费者什么新鲜感了。</p>
                <p><a class="btn btn-primary" href="https://kuaibao.jd.com/article?id=596876" role="button">浏览详情 &raquo;</a></p>
        </div>
        <div class="col-lg-4">
                <h2>小米、华为栽跟头，千元全面屏被法国品牌夺走，899元！</h2>
                <p>国内手机厂商无不布局自家的全面屏产品，vivo、金立、华为等都将陆续推出全面屏产品，但遗憾的是目前各大手机厂商都将全面屏定位在旗舰级别，国产全面屏一定会来到千元机身上，只是一个时间问题，但目测这个时间不会很短。也正是国产手机厂商的这种思想和产品路线，让一个新起的法国手机品牌捷足先登，在国内率先发布899元的全面屏产品。</p>
                <p><a class="btn btn-primary" href="https://kuaibao.jd.com/article?id=364238" role="button">浏览详情 &raquo;</a></p>
        </div>
</div>
<div class="jumbotron" style="padding-top: 100px">
        <p><a class="btn btn-lg btn-success" href="${ctx}/login/uIndex" role="button">返回首页</a></p>
</div>
<!-- 底部 -->
<%@include file="../Footer.jsp"%>
</body>
<script src="${ctx}/static/js/mall.js"></script>
</html>