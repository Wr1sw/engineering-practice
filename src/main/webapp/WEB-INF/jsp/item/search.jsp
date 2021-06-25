<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>搜索商品页面</title>
    <link rel="stylesheet" type="text/css" href="../static/css/mall.css">
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../static/css/font-awesome.css">
    <script src="../static/js/jquery.js"></script>
    <script src="../static/js/bootstrap.js"></script>
</head>
<body>
<!--顶部导航栏-->
<%@include file="../Head.jsp"%>
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
<!-- 导航栏 -->
<div class="search-nav">
    <div class="search-nav-container search-nav-container-90">
        <ul>
            <li>搜索发现</li>
            <li><a href="${ctx}/login/uIndex">首页</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=手机">手机馆</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=电脑">电脑馆</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=平板">平板馆</a></li>
        </ul>
    </div>
</div>
<div class="container-full">
    <div class="host-location">
        全部结果 >
        <span class="host-location-text">${condition}</span>
    </div>
    <div class="item-class-show">
        <div class="item-class-group item-class-group-top">
            <div class="item-class-name">
                <span>品牌</span>
            </div>
            <div class="item-class-select">
                <%--<c:forEach items="${pagers.datas}" var="data" varStatus="l">
                    <span>${data.categoryIdTwo}</span>
                </c:forEach>--%>
                <span>OPPO</span>
                <span>莫凡（Mofi）</span>
                <span>华为（HUAWEI）</span>
                <span>三星（SAMSUNG）</span>
                <span>MATE</span>
                <span>摩斯维（msvii）</span>
                <span>耐尔金（NILLKIN）</span>
                <span>洛克（ROCK）</span>
                <span>亿色（ESR）</span>
                <span>Apple</span>
                <span>优加</span>
            </div>
        </div>
    </div>
    <div class="item-class-group">
        <div class="item-class-name">
            <span>手机配件：</span>
        </div>
        <div class="item-class-select">
            <span>手机保护套</span>
            <span>苹果周边</span>
            <span>手机贴膜</span>
            <span>移动电源</span>
            <span>创意配件</span>
            <span>手机耳架</span>
            <span>手机支架</span>
        </div>
    </div>
    <div class="item-class-group">
        <div class="item-class-name">
            <span>款式:</span>
        </div>
        <div class="item-class-select">
            <span>软壳</span>
            <span>硬壳</span>
            <span>翻盖式</span>
            <span>边框</span>
            <span>运动臂包</span>
            <span>钱包式</span>
            <span>定制</span>
            <span>防水袋</span>
            <span>布袋</span>
            <span>其他</span>
        </div>
    </div>
    <div class="item-class-group">
        <div class="item-class-name">
            <span>材质</span>
        </div>
        <div class="item-class-select">
            <span>金属</span>
            <span>电镀</span>
            <span>真皮</span>
            <span>树脂</span>
            <span>木质</span>
            <span>镶钻</span>
            <span>液态硅胶</span>
            <span>TPU</span>
        </div>

    </div>
    <div class="item-list">
        <div class="item-list-left">
            <div class="item-as-title">
                <span>广告精选</span>
                <span>广告</span>
            </div>
            <c:forEach items="${ads}" var="ad">
                <div class="item-as"><!--商品开始-->
                    <div class="item-as-img"><!--商品的图片-->
                        <img src="${ctx}${ad.url1}" alt="">
                    </div>
                    <div class="item-as-price"><!--商品的价格-->
                        <span>
                            <i class="fa fa-rmb text-danger"></i><!--bootstrap的钱图标-->
                            <span class="seckill-price text-danger">${ad.price}</span><!--text-danger（红色）-->
                        </span>
                    </div>
                    <div class="item-as-intro"><!--商品简介-->
                        <span>
                        <%-- 后期需要修改 --%>
                            ${ad.name}
                        </span>
                    </div>
                    <div class="item-as-selled"><!--评价-->
                        已有<span>${ad.gmNum}</span>人评价
                    </div>
                </div>
            </c:forEach>
            <editor-fold desc="Description">
<%--                <div class="item-as">--%>
<%--                    <div class="item-as-img">--%>
<%--                        <img src="../static/images/row-10.jpg" alt="">--%>
<%--                    </div>--%>
<%--                    <div class="item-as-price">--%>
<%--                        <span>--%>
<%--                            <i class="fa fa-rmb text-danger"></i>--%>
<%--                            <span class="seckill-price text-danger">59.9</span>--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-intro">--%>
<%--                        <span>--%>
<%--                             英悦苹果12手机壳iPhone12Pro Max液态硅胶--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-selled">--%>
<%--                        已有<span>5953</span>人评价--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="item-as"><!--商品开始-->--%>
<%--                    <div class="item-as-img"><!--商品的图片-->--%>
<%--                        <img src="../static/images/row-9.jpg" alt="">--%>
<%--                    </div>--%>
<%--                    <div class="item-as-price"><!--商品的价格-->--%>
<%--                        <span>--%>
<%--                            <i class="fa fa-rmb text-danger"></i><!--bootstrap的钱图标-->--%>
<%--                            <span class="seckill-price text-danger">79.9</span><!--text-danger（红色）-->--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-intro"><!--商品简介-->--%>
<%--                        <span>--%>
<%--                            苹果12promax手机壳iPhone12保护套 全包碳纤维--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-selled"><!--评价-->--%>
<%--                        已有<span>5w+</span>人评价--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="item-as">--%>
<%--                    <div class="item-as-img">--%>
<%--                        <img src="../static/images/row-10.jpg" alt="">--%>
<%--                    </div>--%>
<%--                    <div class="item-as-price">--%>
<%--                        <span>--%>
<%--                            <i class="fa fa-rmb text-danger"></i>--%>
<%--                            <span class="seckill-price text-danger">59.9</span>--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-intro">--%>
<%--                        <span>--%>
<%--                             英悦苹果12手机壳iPhone12Pro Max液态硅胶--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-selled">--%>
<%--                        已有<span>5953</span>人评价--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="item-as"><!--商品开始-->--%>
<%--                    <div class="item-as-img"><!--商品的图片-->--%>
<%--                        <img src="../static/images/row-9.jpg" alt="">--%>
<%--                    </div>--%>
<%--                    <div class="item-as-price"><!--商品的价格-->--%>
<%--                        <span>--%>
<%--                            <i class="fa fa-rmb text-danger"></i><!--bootstrap的钱图标-->--%>
<%--                            <span class="seckill-price text-danger">79.9</span><!--text-danger（红色）-->--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-intro"><!--商品简介-->--%>
<%--                        <span>--%>
<%--                            苹果12promax手机壳iPhone12保护套 全包碳纤维--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-selled"><!--评价-->--%>
<%--                        已有<span>5w+</span>人评价--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="item-as">--%>
<%--                    <div class="item-as-img">--%>
<%--                        <img src="../static/images/row-10.jpg" alt="">--%>
<%--                    </div>--%>
<%--                    <div class="item-as-price">--%>
<%--                        <span>--%>
<%--                            <i class="fa fa-rmb text-danger"></i>--%>
<%--                            <span class="seckill-price text-danger">59.9</span>--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-intro">--%>
<%--                        <span>--%>
<%--                             英悦苹果12手机壳iPhone12Pro Max液态硅胶--%>
<%--                        </span>--%>
<%--                    </div>--%>
<%--                    <div class="item-as-selled">--%>
<%--                        已有<span>5953</span>人评价--%>
<%--                    </div>--%>
<%--                </div>--%>
            </editor-fold>
        </div>
        <div class="item-list-right">
            <div class="item-list-tool">
                <ul>
                    <li>
                            <span>
                                综合
                                <strong><i class="fa fa-long-arrow-down"></i><!--向下的箭头--></strong>
                            </span>
                    </li>
                    <li>
                            <span>
                                销量
                                <strong><i class="fa fa-long-arrow-down"></i><!--向下的箭头--></strong>
                            </span>
                    </li>
                    <li>
                            <span>
                                评论数
                                <strong><i class="fa fa-long-arrow-down"></i><!--向下的箭头--></strong>
                            </span>
                    </li>
                    <li>
                            <span>
                                新品
                                <strong><i class="fa fa-long-arrow-down"></i><!--向下的箭头--></strong>
                            </span>
                    </li>
                    <li>
                            <span>
                                价格
                                <strong><i class="fa fa-long-arrow-down"></i><!--向下的箭头--></strong>
                            </span>
                    </li>
                </ul>
            </div>
            <div class="item-container"><!--右侧商品开始-->
                <div class="item-row">
                    <c:forEach items="${pagers.datas}" var="data" varStatus="l">
                        <a href="${ctx}/Item/view?id=${data.id}">
                            <div class="item-show-info">
                                <div>
                                    <img src="${ctx}${data.url1}" alt="" height="220" width="220">
                                </div>
                                <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">${data.price}</span>
                                </span>
                                </div>
                                <div class="item-show-detail">
                                    <span>${data.ms}</span>
                                </div>
                                <div class="item-show-num">
                                    已有 <span>${data.gmNum}</span>人评价
                                </div>
                                <div class="item-show-seller">
                                    <span>测试旗舰店</span>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
        </div>
    </div>
</div>

<div class="page-num">
    <nav>
        <ul class="pagination">
            <li>
                <a>
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li class="active">
                <a href="#">1</a>
            </li>
            <li>
                <a href="#">2</a>
            </li>
            <li>
                <a href="#">3</a>
            </li>
            <li>
                <a href="#">4</a>
            </li>
            <li>
                <a href="#">5</a>
            </li>
            <li>
                <a href="#">6</a>
            </li>
            <li>
                <a href="#">7</a>
            </li>
            <li>
                <a href="#">8</a>
            </li>
            <li>
                <a href="#">
                    <span>&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
</div>
<div class="clearfix"></div>
<%@include file="../Footer.jsp"%>
</body>
</html>