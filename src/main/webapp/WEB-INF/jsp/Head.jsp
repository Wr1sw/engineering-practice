<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<html>
<head>
    <title>head</title>
    <script src="${ctx}/static/js/jquery.js"></script>
</head>
<body>
<div class="nav">
    <ul>
        <li class="nav-pull-down location"><img src="${ctx}/static/images/GoodsPicture/icon_location.png" alt="">
            <span id="0">成都</span>
        </li>
        <li><a href="#">客服服务</a></li>
        <li><a href="#">商城会员</a></li>
        <c:if test="${userId!=null}">
            <li class="nav-pull-down my-shop"><a href="${ctx}/Trail/viewUser">个人中心</a></li>
            <li class="login-signup"><a href="${ctx}/car/findBySql">我的购物车</a>
                <span class="text-color-red"><a href="${ctx}/signup">我的收藏</a></span>
            </li>
            <li><a href="${ctx}/login/uTuiChu">退出</a></li><li><a href="#">欢迎您：${userName}</a></li> <b></b>
        </c:if>
        <c:if test="${userId==null}">
            <li class="login-signup">你好，请<a href="${ctx}/login/uLogin">登录
            </a><span class="text-color-red"><a href="${ctx}/login/res">免费注册</a></span>
            </li>
        </c:if>
    </ul>
</div>
<div class="city">
    <p>
        <span class="city-item" id="1">北京 </span>
        <span class="city-item" id="2">上海 </span>
        <span class="city-item" id="3">天津 </span>
        <span class="city-item" id="4">重庆 </span>
        <span class="city-item" id="5">河北 </span>
    </p>
    <p>
        <span class="city-item" id="6">山西 </span>
        <span class="city-item" id="7">河南 </span>
        <span class="city-item" id="8">辽宁 </span>
        <span class="city-item" id="9">吉林 </span>
        <span class="city-item" id="10">江苏 </span>
    </p>
    <p>
        <span class="city-item" id="11">福建 </span>
        <span class="city-item" id="12">湖北 </span>
        <span class="city-item" id="13">湖南 </span>
        <span class="city-item" id="14">广东 </span>
        <span class="city-item" id="15">广西 </span>
    </p>
    <p>
        <span class="city-item" id="16">江西 </span>
        <span class="city-item" id="17">成都 </span>
        <span class="city-item" id="18">海南 </span>
        <span class="city-item" id="19">贵州</span>
        <span class="city-item" id="20">云南</span>
    </p>
    <p>
        <span class="city-item" id="21">西藏</span>
        <span class="city-item" id="22">陕西</span>
        <span class="city-item" id="23">甘肃</span>
        <span class="city-item" id="24">青海</span>
        <span class="city-item" id="25">宁夏</span>
    </p>
</div>
<script>
    $(document).ready(function(){
        $("#1").click(function(){
            $("#0").html($("#1").text());
        });

        $("#2").click(function(){
            $("#0").html($("#2").text());
        });

        $("#3").click(function(){
            $("#0").html($("#3").text());
        });

        $("#4").click(function(){
            $("#0").html($("#4").text());
        });

        $("#5").click(function(){
            $("#0").html($("#5").text());
        });

        $("#6").click(function(){
            $("#0").html($("#6").text());
        });

        $("#7").click(function(){
            $("#0").html($("#7").text());
        });

        $("#8").click(function(){
            $("#0").html($("#8").text());
        });

        $("#9").click(function(){
            $("#0").html($("#9").text());
        });

        $("#10").click(function(){
            $("#0").html($("#10").text());
        });

        $("#11").click(function(){
            $("#0").html($("#11").text());
        });

        $("#12").click(function(){
            $("#0").html($("#12").text());
        });

        $("#13").click(function(){
            $("#0").html($("#13").text());
        });

        $("#14").click(function(){
            $("#0").html($("#14").text());
        });

        $("#15").click(function(){
            $("#0").html($("#15").text());
        });

        $("#16").click(function(){
            $("#0").html($("#16").text());
        });

        $("#17").click(function(){
            $("#0").html($("#17").text());
        });

        $("#18").click(function(){
            $("#0").html($("#18").text());
        });

        $("#19").click(function(){
            $("#0").html($("#19").text());
        });

        $("#20").click(function(){
            $("#0").html($("#20").text());
        });

        $("#21").click(function(){
            $("#0").html($("#21").text());
        });

        $("#22").click(function(){
            $("#0").html($("#22").text());
        });

        $("#23").click(function(){
            $("#0").html($("#23").text());
        });

        $("#24").click(function(){
            $("#0").html($("#24").text());
        });

        $("#25").click(function(){
            $("#0").html($("#25").text());
        });
    });
</script>
</body>
</html>
