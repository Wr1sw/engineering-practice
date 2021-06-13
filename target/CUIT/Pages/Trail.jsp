 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%
    String path = request.getContextPath();
%>
<head>
    <meta charset="UTF-8">
    <title>Trial</title>
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/font-awesome.css">
    <link rel="stylesheet" href="../static/css/mall.css">
</head>
<body>

    <!--主体内容-->
    <%@include file="Head.jsp"%>
    <div class="container">
        <!--搜索框-->
        <div class="search">
            <div class="search-body">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="手机壳">
                    <span class="input-group-btn">
			        <a href="search.jsp"><button class="btn btn-danger btn-search" type="button"><i class="fa fa-search" aria-hidden="true"></i>搜索</button></a>
			      </span>
                </div>
                <div class="search-keyword">
                    <p>&nbsp;&nbsp;小满节气 &nbsp;&nbsp;  满199减100&nbsp;&nbsp; 时尚服装&nbsp;&nbsp;国际大牌 &nbsp;&nbsp; 墅质家居&nbsp;&nbsp; 品质生活&nbsp;&nbsp;</p>
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
                    <li><span class="nav-side-item">家用电器</span></li>
                    <li><span class="nav-side-item">手机</span> / <span class="nav-side-item">数码</span></li>
                    <li><span class="nav-side-item">电脑</span> / <span class="nav-side-item">办公</span></li>
                    <li><span class="nav-side-item">家居</span> / <span class="nav-side-item">家具</span> / <span class="nav-side-item">厨具</span></li>
                    <li><span class="nav-side-item">男装</span> / <span class="nav-side-item">女装</span> / <span class="nav-side-item">童装</span></li>
                    <li><span class="nav-side-item">美妆个护</span> / <span class="nav-side-item">宠物</span></li>
                    <li><span class="nav-side-item">箱包</span> / <span class="nav-side-item">钟表</span> / <span class="nav-side-item">珠宝</span></li>
                    <li><span class="nav-side-item">男鞋</span> / <span class="nav-side-item">运动</span> / <span class="nav-side-item">户外</span></li>
                    <li><span class="nav-side-item">汽车</span> / <span class="nav-side-item">汽车用品</span></li>
                    <li><span class="nav-side-item">母婴</span> / <span class="nav-side-item">玩具乐器</span></li>
                    <li><span class="nav-side-item">酒类</span> / <span class="nav-side-item">生鲜</span> / <span class="nav-side-item">特产</span></li>
                    <li><span class="nav-side-item">礼品鲜花</span> / <span class="nav-side-item">农资绿植</span></li>
                    <li><span class="nav-side-item">图书</span> / <span class="nav-side-item">音像</span> / <span class="nav-side-item">电子书</span></li>
                </ul>
            </div>
            <div class="nav-content">
                <!-- 幻灯片 -->
                <div class="slide">
                    <a href=""><img src="../static/images/4.jpg"></a>
                </div>
                <div class="nav-show">
                    <div class="nav-show-img"><a href="#"><img src="../static/images/nav_showimg1.jpg"></a></div>
                    <div class="nav-show-img"><a href=""><img src="../static/images/nav_showimg2.jpg"></a></div>
                </div>
            </div>
            <div>
                <span><a href="#"><img src="../static/images/fam.png"></a></span>
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
                    <div class="seckill-item">
                        <div class="seckill-item-img">
                            <a href="item_detail.jsp"><img src="../static/images/seckill-item1.jpg"></a>
                        </div>
                        <div class="seckill-item-info">
                            <p>华为Mate40pro手机壳游戏人生mate40pro+保护套可定制</p>
                            <p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">45.0</span></p>
                        </div>
                    </div>
                    <div class="seckill-item">
                        <div class="seckill-item-img">
                            <a href="#"><img src="../static/images/seckill-item2.jpg"></a>
                        </div>
                        <div class="seckill-item-info">
                            <p>ipad mini 全新升级版6英寸护眼非反光电子墨水</p>
                            <p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">2989.0</span></p>
                        </div>
                    </div>
                    <div class="seckill-item">
                        <div class="seckill-item-img">
                            <a href="#"><img src="../static/images/seckill-item3.jpg"></a>
                        </div>
                        <div class="seckill-item-info">
                            <p>粮悦 大吃兄糯米锅巴 安徽特产锅巴糯米原味400g*2盒</p>
                            <p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">21.8</span></p>
                        </div>
                    </div>
                    <div class="seckill-item">
                        <div class="seckill-item-img">
                            <a href="#"><img src="../static/images/seckill-item4.jpg"></a>
                        </div>
                        <div class="seckill-item-info">
                            <p>[京东超市] 清风（APP）抽纸 原木纯品金装系列 3层</p>
                            <p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">49.9</span></p>
                        </div>
                    </div>
                    <div class="seckill-item">
                        <div class="seckill-item-img">
                            <a href="#"><img src="../static/images/seckill-item5.jpg"></a>
                        </div>
                        <div class="seckill-item-info">
                            <p>NIKE耐克 男子休闲鞋 AIR MAX 90 ESSENTIAL 气垫</p>
                            <p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">559</span></p>
                        </div>
                    </div>
                    <div class="seckill-item">
                        <div class="seckill-item-img">
                            <a href="#"><img src="../static/images/seckill-item6.png"></a>
                        </div>
                        <div class="seckill-item-info">
                            <p>徐福记 小叭叭 米格玛糙米卷 能量棒 粗粮谷物夹心米果卷</p>
                            <p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">18.9</span></p>
                        </div>
                    </div>
                    <div class="seckill-item">
                        <div class="seckill-item-img">
                            <a href="#"><img src="../static/images/seckill-item8.png"></a>
                        </div>
                        <div class="seckill-item-info">
                            <p>金龙鱼 东北大米 5kg 乳玉皇妃稻香贡米 大米十斤</p>
                            <p><i class="fa fa-rmb text-danger"></i><span class="seckill-price text-danger">99.8</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 电脑专场 -->
            <div class="item-class">
                <div class="item-class-head">
                    <span class="item-class-title">电脑数码</span>
                    <ul>
                        <li><a href="#">电脑馆</a></li>
                    </ul>
                </div>
                <div class="item-class-content">
                    <div class="item-content-top">
                        <div class="item-big-img">
                            <a href="#"><img src="../static/images/item-computer-1.jpg"></a>
                        </div>
                        <div class="item-four-img">
                            <div class="item-four-detail">
                                <div class="item-four-detail-text">
                                    <p class="pt_bi_tit">电脑馆</p>
                                    <p class="pt_bi_promo">笔记本9999元限量秒！</p>
                                </div>
                                <div class="item-four-detail-img">
                                    <a href="#"><img src="../static/images/item-computer-2.jpg"></a>
                                </div>
                            </div>
                            <div class="item-four-detail">
                                <div class="item-four-detail-text">
                                    <p class="pt_bi_tit">外设装备</p>
                                    <p class="pt_bi_promo">1000减618</p>
                                </div>
                                <div class="item-four-detail-img">
                                    <a href="#"><img src="../static/images/item-computer-1-3.jpg"></a>
                                </div>
                            </div>
                            <div class="item-four-detail">
                                <div class="item-four-detail-text">
                                    <p class="pt_bi_tit">电脑配件</p>
                                    <p class="pt_bi_promo">联合满减<br>最高省618</p>
                                </div>
                                <div class="item-four-detail-img">
                                    <a href="#"><img src="../static/images/item-computer-1-4%20.jpg"></a>
                                </div>
                            </div>
                            <div class="item-four-detail">
                                <div class="item-four-detail-text">
                                    <p class="pt_bi_tit">办公生活</p>
                                    <p class="pt_bi_promo">5折神券 精品文具</p>
                                </div>
                                <div class="item-four-detail-img">
                                    <a href="#"><img src="../static/images/item-computer-1-5.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item-class-content">
                    <div class="item-content-top">
                        <div class="item-big-img">
                            <img src="../static/images/item-computer-2-1.jpg" alt="">
                        </div>
                        <div class="item-four-img">
                            <div class="item-four-detail">
                                <div class="item-four-detail-text">
                                    <p class="pt_bi_tit">笔记本电脑</p>
                                    <p class="pt_bi_promo">爆款12期免息</p>
                                </div>
                                <div class="item-four-detail-img">
                                    <a href="#"><img src="../static/images/item-computer-2-2.jpg" alt=""></a>
                                </div>
                            </div>
                            <div class="item-four-detail">
                                <div class="item-four-detail-text">
                                    <p class="pt_bi_tit">智能酷玩</p>
                                    <p class="pt_bi_promo">抢999减666神券</p>
                                </div>
                                <div class="item-four-detail-img">
                                    <a href="#"><img src="../static/images/item-computer-2-3.jpg" alt=""></a>
                                </div>
                            </div>
                            <div class="item-four-detail">
                                <div class="item-four-detail-text">
                                    <p class="pt_bi_tit">娱乐影音</p>
                                    <p class="pt_bi_promo">大牌耳机低至5折</p>
                                </div>
                                <div class="item-four-detail-img">
                                    <a href="#"><img src="../static/images/item-computer-2-4.jpg" alt=""></a>
                                </div>
                            </div>
                            <div class="item-four-detail">
                                <div class="item-four-detail-text">
                                    <p class="pt_bi_tit">摄影摄像</p>
                                    <p class="pt_bi_promo">大牌相机5折抢</p>
                                </div>
                                <div class="item-four-detail-img">
                                    <a href="#"><img src="../static/images/item-computer-2-5.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <%@include file="Footer.jsp"%>
    <!-- 页面上的各种浮窗 -->
</body>
</html>
