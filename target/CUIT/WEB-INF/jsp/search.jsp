<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%@include file="Head.jsp"%>
<!-- 搜索框 -->
<div class="search">
    <div class="search-body">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="输入你想要的商品">
            <span class="input-group-btn">
			        <a href="search.jsp"><button class="btn btn-danger btn-search" type="button"><i class="fa fa-search" aria-hidden="true"></i>搜索</button></a>
			      </span>
        </div>
        <div class="search-keyword">
            <p>&nbsp;&nbsp;小满节气 &nbsp;&nbsp;  满199减100&nbsp;&nbsp; 时尚服装&nbsp;&nbsp;国际大牌 &nbsp;&nbsp; 墅质家居&nbsp;&nbsp; 品质生活&nbsp;&nbsp;</p>
        </div>
    </div>
</div>
<!-- 导航栏 -->
<div class="search-nav">
    <div class="search-nav-container">
        <ul>
            <li>搜索发现</li>
            <li><a href="Trail.jsp">首页</a></li>
            <li><a href="Trail.jsp">服装城</a></li>
            <li><a href="Trail.jsp">美妆馆</a></li>
            <li><a href="Trail.jsp">生鲜</a></li>
        </ul>
    </div>
</div>
<div class="container-full">
    <div class="host-location">
        全部结果 >
        <span class="host-location-text">手机壳</span>
    </div>
    <div class="item-class-show">
        <div class="item-class-group item-class-group-top">
            <div class="item-class-name">
                <span>品牌</span>
            </div>
            <div class="item-class-select">
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
            <div class="item-as"><!--商品开始-->
                <div class="item-as-img"><!--商品的图片-->
                    <img src="../static/images/row-9.jpg" alt="">
                </div>
                <div class="item-as-price"><!--商品的价格-->
                    <span>
                            <i class="fa fa-rmb text-danger"></i><!--bootstrap的钱图标-->
                            <span class="seckill-price text-danger">79.9</span><!--text-danger（红色）-->
                        </span>
                </div>
                <div class="item-as-intro"><!--商品简介-->
                    <span>
                            苹果12promax手机壳iPhone12保护套 全包碳纤维
                        </span>
                </div>
                <div class="item-as-selled"><!--评价-->
                    已有<span>5w+</span>人评价
                </div>
            </div>
            <div class="item-as">
                <div class="item-as-img">
                    <img src="../static/images/row-10.jpg" alt="">
                </div>
                <div class="item-as-price">
                        <span>
                            <i class="fa fa-rmb text-danger"></i>
                            <span class="seckill-price text-danger">59.9</span>
                        </span>
                </div>
                <div class="item-as-intro">
                        <span>
                             英悦苹果12手机壳iPhone12Pro Max液态硅胶
                        </span>
                </div>
                <div class="item-as-selled">
                    已有<span>5953</span>人评价
                </div>
            </div>
            <div class="item-as"><!--商品开始-->
                <div class="item-as-img"><!--商品的图片-->
                    <img src="../static/images/row-9.jpg" alt="">
                </div>
                <div class="item-as-price"><!--商品的价格-->
                    <span>
                            <i class="fa fa-rmb text-danger"></i><!--bootstrap的钱图标-->
                            <span class="seckill-price text-danger">79.9</span><!--text-danger（红色）-->
                        </span>
                </div>
                <div class="item-as-intro"><!--商品简介-->
                    <span>
                            苹果12promax手机壳iPhone12保护套 全包碳纤维
                        </span>
                </div>
                <div class="item-as-selled"><!--评价-->
                    已有<span>5w+</span>人评价
                </div>
            </div>
            <div class="item-as">
                <div class="item-as-img">
                    <img src="../static/images/row-10.jpg" alt="">
                </div>
                <div class="item-as-price">
                        <span>
                            <i class="fa fa-rmb text-danger"></i>
                            <span class="seckill-price text-danger">59.9</span>
                        </span>
                </div>
                <div class="item-as-intro">
                        <span>
                             英悦苹果12手机壳iPhone12Pro Max液态硅胶
                        </span>
                </div>
                <div class="item-as-selled">
                    已有<span>5953</span>人评价
                </div>
            </div>
            <div class="item-as"><!--商品开始-->
                <div class="item-as-img"><!--商品的图片-->
                    <img src="../static/images/row-9.jpg" alt="">
                </div>
                <div class="item-as-price"><!--商品的价格-->
                    <span>
                            <i class="fa fa-rmb text-danger"></i><!--bootstrap的钱图标-->
                            <span class="seckill-price text-danger">79.9</span><!--text-danger（红色）-->
                        </span>
                </div>
                <div class="item-as-intro"><!--商品简介-->
                    <span>
                            苹果12promax手机壳iPhone12保护套 全包碳纤维
                        </span>
                </div>
                <div class="item-as-selled"><!--评价-->
                    已有<span>5w+</span>人评价
                </div>
            </div>
            <div class="item-as">
                <div class="item-as-img">
                    <img src="../static/images/row-10.jpg" alt="">
                </div>
                <div class="item-as-price">
                        <span>
                            <i class="fa fa-rmb text-danger"></i>
                            <span class="seckill-price text-danger">59.9</span>
                        </span>
                </div>
                <div class="item-as-intro">
                        <span>
                             英悦苹果12手机壳iPhone12Pro Max液态硅胶
                        </span>
                </div>
                <div class="item-as-selled">
                    已有<span>5953</span>人评价
                </div>
            </div>
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
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-1.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">178.00</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>RICHMOND & FINCH苹果手机壳<br>iphone11Pro明星同款ins手机保护套硅胶</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>5000+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>RICHMOND & FINCH旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-2.jpg">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">49.9</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>亿色(ESR)苹果12手机壳iPhone 12全包防摔透明超薄玻璃壳硅胶软边保护</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>2.5万+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>亿色(ESR)旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-3.jpg">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">58.8</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>图拉斯 苹果12手机壳iPhone 12全包防摔透明超薄硅胶保</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>4.7万+</span>人购买
                        </div>
                        <div class="item-show-seller">
                            <span>图拉斯旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-4.jpg">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">98.5</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>品胜 苹果12手机壳6.1英寸防摔电镀保护壳iphone12保护套防摔全包镜</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>12w+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>品胜旗舰店</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item-container"><!--右侧商品开始-->
                <div class="item-row">
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-5.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">78.4</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>京造 苹果12手机壳 iPhone12保护套透明防摔玻璃壳</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>10万+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>京造官方自营旗</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-6.jpg"alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">79.8</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>图拉斯 苹果12promax 手机壳iPhone 12 pro max保护套超薄全透明防摔硅胶壳</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>5万+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>图拉斯旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-7.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">69.8</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>酷盟 苹果12promax 手机壳镜头全包iphone12 Pro max保护套微磨砂</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>4.7万+</span>人购买
                        </div>
                        <div class="item-show-seller">
                            <span>酷盟旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-8.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">98.5</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>YOUMAKER美国 苹果11手机壳iPhone11Pro Max透明全包防摔硅胶保护</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>5w+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>YOUMAKER旗舰店</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item-container"><!--右侧商品开始-->
                <div class="item-row">
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-1.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">178.00</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>RICHMOND & FINCH苹果手机壳<br>iphone11Pro明星同款ins手机保护套硅胶</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>5000+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>RICHMOND & FINCH旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-2.jpg">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">49.9</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>亿色(ESR)苹果12手机壳iPhone 12全包防摔透明超薄玻璃壳硅胶软边保护</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>2.5万+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>亿色(ESR)旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-3.jpg">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">58.8</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>图拉斯 苹果12手机壳iPhone 12全包防摔透明超薄硅胶保</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>4.7万+</span>人购买
                        </div>
                        <div class="item-show-seller">
                            <span>图拉斯旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-4.jpg">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">98.5</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>品胜 苹果12手机壳6.1英寸防摔电镀保护壳iphone12保护套防摔全包镜</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>12w+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>品胜旗舰店</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item-container"><!--右侧商品开始-->
                <div class="item-row">
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-5.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">78.4</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>京造 苹果12手机壳 iPhone12保护套透明防摔玻璃壳</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>10万+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>京造官方自营旗</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-6.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">79.8</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>图拉斯 苹果12promax 手机壳iPhone 12 pro max保护套超薄全透明防摔硅胶壳</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>5万+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>图拉斯旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-7.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">69.8</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>酷盟 苹果12promax 手机壳镜头全包iphone12 Pro max保护套微磨砂</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>4.7万+</span>人购买
                        </div>
                        <div class="item-show-seller">
                            <span>酷盟旗舰店</span>
                        </div>
                    </div>
                    <div class="item-show-info">
                        <div>
                            <img src="../static/images/row-8.jpg" alt="">
                        </div>
                        <div class="item-show-price">
                                <span>
                                    <i class="fa fa-rmb text-danger"></i>
                                    <span class="seckill-price text-danger">98.5</span>
                                </span>
                        </div>
                        <div class="item-show-detail">
                            <span>YOUMAKER美国 苹果11手机壳iPhone11Pro Max透明全包防摔硅胶保护</span>
                        </div>
                        <div class="item-show-num">
                            已有 <span>5w+</span>人评价
                        </div>
                        <div class="item-show-seller">
                            <span>YOUMAKER旗舰店</span>
                        </div>
                    </div>
                </div>
            </div>
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
<%@include file="Footer.jsp"%>
</body>
</html>