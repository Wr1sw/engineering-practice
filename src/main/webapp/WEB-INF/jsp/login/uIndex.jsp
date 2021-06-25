<%@ page import="com.cuit.utils.Consts" %>
<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
 <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<%
    String path = request.getContextPath();
%>
<head>
    <meta charset="UTF-8">
    <title>Trial</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mall.css">
    <script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<body>

    <!--主体内容-->
    <%@include file="../Head.jsp"%>
    <div class="container">
        <!--搜索框-->
        <div class="search">
            <div class="search-body">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="输入你想要的商品">
                    <span class="input-group-btn">
			        <a href="search.jsp"><button class="btn btn-danger btn-search" type="button"><i class="fa fa-search" aria-hidden="true"></i>搜索</button></a>
			      </span>
                </div>
                <div class="search-keyword">
                    <p>&nbsp;&nbsp;夏至节气 &nbsp;&nbsp;  满199减100&nbsp;&nbsp; 性能猛兽&nbsp;&nbsp;国际大牌 &nbsp;&nbsp; 颜值手机&nbsp;&nbsp; 品质生活&nbsp;&nbsp;</p>
                </div>
            </div>
        </div>

        <!-- 横向导航 -->
        <div class="nav-item">
            <ul>
                <li><a href="#">秒杀</a></li>
                <li><a href="#">优惠券</a></li>
                <li><a href="#">拍卖</a></li>
                <li><a href="#">服装城</a></li>
                <li><a href="#">超市</a></li>
                <li><a href="#">生鲜</a></li>
                <li><a href="#">全球购</a></li>
            </ul>
        </div>
        <div class="nav-body">
            <!-- 侧边导航 -->
            <div class="nav-side">
                <ul>
                    <c:forEach items="${lbs}" var="data" varStatus="l">
                        <li><span class="nav-side-item">${data.father.name}</span> / <span class="nav-side-item">${data.father.name} / </span><span class="nav-side-item">${data.father.name}</span></li>
                            <div class="detail-item-panel" >
                                <ul>
                                <c:forEach items="${lbs}" var="data" varStatus="l">
                                    <li>
                                        <span class="detail-item-title">${data.father.name}</span>
                                    <c:forEach items="${data.childrens}" var="child" varStatus="ll">
<%--                                        <div class="detail-item-panel panel-1">--%>
                                            <span class="detail-item"><a href="${ctx}/Item/shoplist?categoryIdTwo=${child.id}">${child.name}</a></span>
<%--                                        </div>--%>
                                    </c:forEach>
                                    </li>
                                </c:forEach>
                                </ul>
                             </div>
                    </c:forEach>
                </ul>
            </div>
            <div class="nav-content">
                <!-- 幻灯片 -->
                <div class="slide">
                    <a href="#"><img src="${ctx}/static/images/GoodsPicture/4.jpg"></a>
                </div>
                <div class="nav-show">
                    <div class="nav-show-img"><a href="#"><img src="${ctx}/static/images/GoodsPicture/nav_showimg1.jpg"></a></div>
                    <div class="nav-show-img"><a href="#"><img src="${ctx}/static/images/GoodsPicture/nav_showimg2.jpg"></a></div>
                </div>
            </div>
            <div>
                <span><a href="#"><img src="${ctx}/static/images/GoodsPicture/fam.png"></a></span>
            </div>
        </div>
        <!--商品显示区-->
        <div class="content">
            <!--秒杀-->
            <div class="seckill">
                <!-- 头部 -->
                <div class="seckill-head">
                    <div class="seckill-text">
                        <span class="seckill-title">&nbsp;限时秒杀</span>
                        <span class="seckill-remarks">总有你想不到的低价</span>
                    </div>
                </div>
                <!-- 内容 -->
                <div class="seckill-content">
                    <c:forEach items="${ms}" var="data" varStatus="l">
                        <div class="seckill-item">
                            <div class="seckill-item-img">
                                <a href="${ctx}/Item/view?id=${data.id}"><img src="${ctx}${data.url1}"></a>
                            </div>
                            <div class="seckill-item-info">
                                    <%--此处需要后期修改为${data.ms}--%>
                                <p>${data.ms}</p>
                            </div>
                            <div class="seckill-item-info1">
                                <p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">${data.price}</span></p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <!-- 电脑专场 -->
            <div class="item-class">
                <div class="item-class-head">
                    <span class="item-class-title">电脑数码</span>
                    <ul>
                        <li><a href="${ctx}/Item/shoplist?condition=电脑">电脑馆</a></li>
                    </ul>
                </div>
                <div class="item-class-content">
                    <div class="item-content-top">
                        <div class="item-big-img">
                            <a href="${ctx}/Item/view?id=${rxItem1.id}"><img src="${ctx}${rxItem1.url1}"></a>
                        </div>
                        <div class="item-four-img">
                            <c:forEach items="${rxItemsLeft}" var="item" varStatus="l">
                                <div class="item-four-detail">
                                    <div class="item-four-detail-text">
                                        <p class="pt_bi_tit">${Consts.CATEGORY.get(item.categoryIdOne)}</p>
                                        <p class="pt_bi_promo">${Consts.CATEGORY.get(item.categoryIdTwo)}</p>
                                    </div>
                                    <div class="item-four-detail-img">
                                        <a href="${ctx}/Item/view?id=${item.id}"><img src="${ctx}${item.url1}"></a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                       </div>
                </div>
                <div class="item-class-content">
                    <div class="item-content-top">
                        <div class="item-big-img">
                            <a href="${ctx}/Item/view?id=${rxItem2.id}"><img src="${ctx}${rxItem2.url1}"></a>
                        </div>
                        <div class="item-four-img">
                            <c:forEach items="${rxItemsRight}" var="item" varStatus="l">
                                <div class="item-four-detail">
                                    <div class="item-four-detail-text">
                                        <p class="pt_bi_tit">${Consts.CATEGORY.get(item.categoryIdOne)}</p>
                                        <p class="pt_bi_promo">${Consts.CATEGORY.get(item.categoryIdTwo)}</p>
                                    </div>
                                    <div class="item-four-detail-img">
                                        <a href="${ctx}/Item/view?id=${item.id}"><img src="${ctx}${item.url1}"></a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
               </div>
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <%@include file="../Footer.jsp"%>
    <!-- 页面上的各种浮窗 -->
</body>
<script src="${ctx}/static/js/mall.js"></script>
</html>
