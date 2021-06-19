<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>购物车页</title>
    <link type="text/css" href="../static/css/main.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../static/css/font-awesome.css">
    <link rel="stylesheet" href="../static/css/mall.css">
</head>
<body>
<!-- 顶部导航条 -->
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
            <li>购物车</li>
            <li><a href="Trail.jsp">首页</a></li>
            <li><a href="Trail.jsp">服装城</a></li>
            <li><a href="Trail.jsp">美妆馆</a></li>
            <li><a href="Trail.jsp">生鲜</a></li>
        </ul>
    </div>
</div>
<!----------------------购物车列表区-------------------------->
<div class="Shopping_Car comWidth">
    <div class="shoppingcar_sum"> <span class="sj">
    <input type="checkbox" name="allcheck" value="allcheck"/>
    全选</span>
        <ul class="fl">
            <li>商品信息</li>
        </ul>
        <ul class="fr">
            <li>单价</li>
            <li>数量</li>
            <li>金额</li>
            <li>操作</li>
        </ul>
    </div>
    <div class="shop_box comWidth">
        <div class="shop_product">
            <input type="checkbox" name="allcheck" value="allcheck" class="fl"/>
            <img src="../static/images/Mate40E.jpg" alt="" class="fl"/>
            <div class="shoppro_des bh fl"> 华为Mate40pro手机壳游戏人生mate40pro+保护套</div>
            <div class="shoppro_size fl">
                <span>颜色:Mate40pro--蓝</span></div>
            <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                <span class="bh">删除</span> </div>
            <div class="shoppro_price fr"> <span class="Carnum">￥45.00</span> </div>
            <div class="shoppro_price fr">
                <div class="reduction fl">-</div>
                <div class="select_input fl" >
                    <input type="text" value="1">
                </div>
                <div class="plus fl">+</div>
            </div>
            <div class="shoppro_price fr">
                <div class="Carnum2">￥45.00</div>
            </div>
        </div>
        <div class="shop_product">
            <input type="checkbox" name="allcheck" value="allcheck" class="fl"/>
            <img src="../static/images/freeBuds.jpg" alt="" class="fl"/>
            <div class="shoppro_des bh fl"> 华为FreeBuds Pro无线充版主动降噪无线蓝牙耳机</div>
            <div class="shoppro_size fl"> <span>套餐类型：官方标配</span> <br />
                <span>颜色分类：陶瓷白</span> </div>
            <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                <span class="bh">删除</span> </div>
            <div class="shoppro_price fr"> <span class="Carnum">￥1199.00</span> </div>
            <div class="shoppro_price fr">
                <div class="reduction fl">-</div>
                <div class="select_input fl" >
                    <input type="text">
                </div>
                <div class="plus fl">+</div>
            </div>
            <div class="shoppro_price fr">
                <div class="Carnum2">￥1199.00</div>
            </div>
        </div>
        <div class="shop_product">
            <input type="checkbox" name="allcheck" value="allcheck" class="fl"/>
            <img src="../static/images/MAte40RS.jpg" alt="" class="fl"/>
            <div class="shoppro_des bh fl">华为/HUAWEI Mate 40 RS保时捷设计徕卡智能手机华为手机mate40rs</div>
            <div class="shoppro_size fl"> <span>套餐类型：官方标配</span> <br />
                <span>机身颜色：陶瓷黑</span> <br />
                <span>储存容量：8+128g</span> </div>
            <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                <span class="bh">删除</span> </div>
            <div class="shoppro_price fr"> <span class="Carnum">￥10999.00</span> </div>
            <div class="shoppro_price fr">
                <div class="reduction fl">-</div>
                <div class="select_input fl" >
                    <input type="text" >
                </div>
                <div class="plus fl">+</div>
            </div>
            <div class="shoppro_price fr">
                <div class="Carnum2">￥10999.00</div>
            </div>
        </div>
    </div>
    <div class="shop_box comWidth">
        <div class="shop_product">
            <input type="checkbox" name="allcheck" value="allcheck" class="fl"/>
            <img src="../static/images/levi'sTX.jpg" alt="" class="fl"/>
            <div class="shoppro_des bh fl"> Levi's® x Pokémon 联名系列男女同款宝可梦T恤59194-0002/0005 </div>
            <div class="shoppro_size fl"> <span>颜色：白色</span> <br />
                <span>尺码：M</span> </div>
            <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                <span class="bh">删除</span> </div>
            <div class="shoppro_price fr"> <span class="Carnum">￥349.00</span> </div>
            <div class="shoppro_price fr">
                <div class="reduction fl">-</div>
                <div class="select_input fl" >
                    <input type="text" >
                </div>
                <div class="plus fl">+</div>
            </div>
            <div class="shoppro_price fr">
                <div class="Carnum2">￥349.00</div>
            </div>
        </div>
        <div class="shop_product">
            <input type="checkbox" name="allcheck" value="allcheck" class="fl"/>
            <img src="../static/images/levi'sYaoBao.jpg" alt="" class="fl"/>
            <div class="shoppro_des bh fl"> Levi's李维斯秋季新款潮流黄色腰包38005-0164 </div>
            <div class="shoppro_size fl"> <span>颜色分类：黄色</span></div>
            <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                <span class="bh">删除</span> </div>
            <div class="shoppro_price fr"> <span class="Carnum">￥209.00</span> </div>
            <div class="shoppro_price fr">
                <div class="reduction fl">-</div>
                <div class="select_input fl" >
                    <input type="text" >
                </div>
                <div class="plus fl">+</div>
            </div>
            <div class="shoppro_price fr">
                <div class="Carnum1">￥299.00</div>
                <div class="Carnum2">￥209.00</div>
            </div>
        </div>
    </div>
    <div class="shop_box comWidth">
        <div class="shop_product">
            <input type="checkbox" name="allcheck" value="allcheck" class="fl"/>
            <img src="../static/images/dickiesTX.jpg" alt="" class="fl"/>
            <div class="shoppro_des bh fl"> DICKIES&ILYA合作款情侣短袖T恤 女士2021夏季新品圆领上衣9052</div>
            <div class="shoppro_size fl"> <span>颜色：天蓝色</span> <br />
                <span>尺码：M</span> </div>
            <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                <span class="bh">删除</span> </div>
            <div class="shoppro_price fr"> <span class="Carnum">￥299.00</span> </div>
            <div class="shoppro_price fr">
                <div class="reduction fl">-</div>
                <div class="select_input fl" >
                    <input type="text" >
                </div>
                <div class="plus fl">+</div>
            </div>
            <div class="shoppro_price fr">
                <div class="Carnum2">￥299.00</div>
            </div>
        </div>
        <div class="shop_product">
            <input type="checkbox" name="allcheck" value="allcheck" class="fl"/>
            <img src="../static/images/dickiesKuaBao.jpg" alt="" class="fl"/>
            <div class="shoppro_des bh fl"> Dickies潮流马蹄撞色LOGO大容量经典款帆布袋休闲单肩包DK005380</div>
            <div class="shoppro_size fl"> <span>颜色分类：白色</span></div>
            <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                <span class="bh">删除</span> </div>
            <div class="shoppro_price fr"> <span class="Carnum">￥199.00</span> </div>
            <div class="shoppro_price fr">
                <div class="reduction fl">-</div>
                <div class="select_input fl" >
                    <input type="text" >
                </div>
                <div class="plus fl">+</div>
            </div>
            <div class="shoppro_price fr">
                <div class="Carnum1">￥199.00</div>
                <div class="Carnum2">￥119.00</div>
            </div>
        </div>
    </div>
    <div class="shop_box comWidth">
        <div class="shop_product">
            <input type="checkbox" name="allcheck" value="allcheck" class="fl"/>
            <img src="../static/images/JavaBingFa.jpg" alt="" class="fl"/>
            <div class="shoppro_des bh fl"> 当当网正版书籍 Java并发编程的艺术</div>
            <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                <span class="bh">删除</span> </div>
            <div class="shoppro_price fr"> <span class="Carnum">￥29.50</span> </div>
            <div class="shoppro_price fr">
                <div class="reduction fl">-</div>
                <div class="select_input fl" >
                    <input type="text" >
                </div>
                <div class="plus fl">+</div>
            </div>
            <div class="shoppro_price fr">
                <div class="Carnum1">￥43.20</div>
                <div class="Carnum2">￥29.50</div>
            </div>
        </div>
    </div>
    <div class="shoppingcar_acc">
        <div class="shoppingcar_accright fr">
            <span>已选商品<i class="Carnum3">1</i>件</span>
            <span>合计（不含运费）: <i class="Carnum4">45.00</i></span>
            <button type="button"><a href="pay.jsp" style="text-decoration: none;color: red">结算</a></button>
        </div>

    </div>
</div>
<!-- 底部 -->
<%@include file="Footer.jsp"%>
</body>
</html>
