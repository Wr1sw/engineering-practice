<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>商品详情</title>
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
        <div class="search-nav-container search-nav-container-90">
            <ul>
                <li>商品详情</li>
                <li><a href="../Trail.jsp">首页</a></li>
                <li><a href="../Trail.jsp">服装城</a></li>
                <li><a href="../Trail.jsp">美妆馆</a></li>
                <li><a href="../Trail.jsp">生鲜</a></li>
            </ul>
        </div>
    </div>
    <div class="shop-item-path">
        <div class="shop-nav-container">
            <p>${item.categoryIdOne} &nbsp > &nbsp ${item.categoryIdTwo} &nbsp > &nbsp ${item.name}</p>
        </div>
    </div>
    <!-- 商品信息展示 -->
    <div class="item-detail-show">
        <div class="item-detail-left">
            <div class="item-detail-big-img">
                <img src="${ctx}${item.url1}" alt="">
            </div>
            <div class="item-detail-img-row">
                <div class="item-detail-img-small">
                    <img src="${ctx}${item.url2}" alt="">
                </div>
                <div class="item-detail-img-small">
                    <img src="${ctx}${item.url3}" alt="">
                </div>
                <div class="item-detail-img-small">
                    <img src="${ctx}${item.url4}" alt="">
                </div>
                <div class="item-detail-img-small">
                    <img src="${ctx}${item.url5}" alt="">
                </div>
            </div>
        </div>
        <div class="item-detail-right">
            <div class="item-detail-title">
                <p><span class="item-detail-express">校园配送</span> ${item.name}</p>
            </div>
            <div class="item-detail-tag">
                <p><span>【满99-20元】</span> <span>【关注产品★送周边】</span> <span>【京配次日达】</span></p>
            </div>
            <div class="item-detail-price-row">
                <div class="item-price-left">
                    <div class="item-price-row">
                        <p><span class="item-price-title">价&nbsp;&nbsp;&nbsp; &nbsp;格</span> <span class="item-price">￥${item.price}</span></p>
                    </div>
                    <div class="item-price-row">
                        <p>
                            <span class="item-price-title">优 惠 价</span>
                            <span class="item-price-full-cut">满148减10</span>
                            <span class="item-price-full-cut">满218减20</span>
                            <span class="item-price-full-cut">满288减30</span>
                        </p>
                    </div>
                    <div class="item-price-row">
                        <p>
                            <span class="item-price-title">促&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</span>
                            <span class="item-price-full-cut">跨店满减</span>
                            <span class="item-price-full-cut">两件九折</span>
                        </p>
                    </div>
                </div>
                <div class="item-price-right">
                    <div class="item-remarks-sum">
                        <p>累计评价</p>
                        <p><span class="item-remarks-num">${item.gmNum}+</span></p>
                    </div>
                </div>
            </div>
            <!-- 选择颜色 -->
            <div class="item-select">
                <div class="item-select-title">
                    <p>选择颜色</p>
                </div>
                <div class="item-select-column">
                    <div class="item-select-row">
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url1}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>&nbsp; 来&nbsp;图&nbsp;&nbsp;定&nbsp;制 &nbsp;</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url3}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>Mate40pro--黄</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url5}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>Mate40pro--绿</p>
                            </div>
                        </div>
                    </div>
                    <div class="item-select-row">
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url5}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>Mate40pro--蓝</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url2}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>Mate40pro--红</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url1}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>Mate40pro+黄</p>
                            </div>
                        </div>
                    </div>
                    <div class="item-select-row">
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url4}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>Mate40pro+绿</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url5}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>Mate40pro+蓝</p>
                            </div>
                        </div>
                        <div class="item-select-box">
                            <div class="item-select-img">
                                <img src="${ctx}${item.url3}" alt="">
                            </div>
                            <div class="item-select-intro">
                                <p>Mate40pro+红</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="add-buy-car-box">
                <button class="btn-add-buy-car btn btn-danger" onclick="addCar(${item.id})">
                    <a href="#" class="">加入购物车</a>
                </button>
            </div>
        </div>
    </div>
    <!--底部-->
    <%@include file="../Footer.jsp"%>
</body>
<script>
    function addCar(id) {
        $.ajax({
           type:"POST",
           url:"${ctx}/car/Add?itemId=${item.id}&num=1",
            success:function (result) {
                var r = JSON.parse(result);
                if(r.res===0){
                    alert("请登录")
                    window.location.href="${ctx}/login/uLogin";
                }else{
                    window.location.href="${ctx}/car/findBySql";
                }
            }
        });
    }
</script>
</html>