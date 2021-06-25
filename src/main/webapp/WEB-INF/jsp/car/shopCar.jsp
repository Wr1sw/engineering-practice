<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>购物车页</title>
    <link type="text/css" href="../static/css/main.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../static/css/font-awesome.css">
    <link rel="stylesheet" href="../static/css/mall.css">
    <script type="text/javascript" src="../static/js/jquery.js"></script>
</head>
<body>
<!-- 顶部导航条 -->
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
            <li>购物车</li>
            <li><a href="${ctx}/login/uIndex">首页</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=手机">手机馆</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=电脑">电脑馆</a></li>
            <li><a href="${ctx}/Item/shoplist?condition=平板">平板馆</a></li>
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

    <c:forEach items="${list}" var="data" varStatus="l">
    <div class="shop_box comWidth" id="${data.id}">
            <div class="shop_product">
                <input type="checkbox" name="checkbox" value="${data.total}" id="c${data.id}" onclick="Cal(1);" class="fl"/>

                <img src="${ctx}${data.item.url1}" alt="" class="fl" width="90" height="90"/>

                <div class="shoppro_des bh fl"> ${data.item.ms}</div>
                <div class="shoppro_price fr"> <span class="bh">已入收藏夹</span><br />
                    <span class="bh"><a href="javascript:Delete(${data.id})">删除</a></span> </div>
                <div class="shoppro_price fr"> <span class="Carnum" id="a${data.id}">￥<fmt:formatNumber value="${data.total}" type="currency" pattern="0.00"/></span> </div>
                <div class="shoppro_price fr">
                    <div class="reduction fl"><input type="button" value="-" onclick="Reduce(${data.id})"></div>
                    <div class="select_input fl" >
                        <input type="text" value="${data.num}" id="b${data.id}">
                    </div>
                    <div class="plus fl"><input type="button" value="+" onclick="Add(${data.id})"></div>
                </div>
                <div class="shoppro_price fr">
                    <div class="Carnum1">￥<fmt:formatNumber value="${data.price+data.price*0.1}" type="currency" pattern="0.00"/></div>
                    <div class="Carnum2" >￥<fmt:formatNumber value="${data.price}" type="currency" pattern="0.00"/></div>
                </div>
            </div>
    </div>
    </c:forEach>

    <div class="shoppingcar_acc">
        <div class="shoppingcar_accright fr">
            <span>已选商品<i class="Carnum3"><span id ="num">0</span></i>件</span>
            <span>合计（不含运费）: <i class="Carnum4"><span id="money">0.0</span></i></span>
            <button type="button" style="text-decoration: none;color: red" onclick="Pay();">结算</button>
        </div>

    </div>
</div>
<!-- 底部 -->
<%@include file="../Footer.jsp"%>
</body>
<script>

    function Add(id){
        $.ajax({
            url:"${ctx}/car/addNum",
            type:"POST",
            data: {"id":id,"condition":1},
            success: function (result){
                var car = JSON.parse(result);
                $("#a"+id).html(car.total.toFixed(2));
                $("#b"+id).val(car.num);
                $("#c"+id).val(car.total.toFixed(2));
                Cal(0);
            }
        });
    }
    function Reduce(id){
        if($("#b"+id).val()<=1){
            alert("商品的购买数量不能小于1");
        }else{
            $.ajax({
                url:"${ctx}/car/addNum",
                type:"POST",
                data: {"id":id,"condition":0},
                async:false,
                success: function (result){
                    var car = JSON.parse(result);
                    $("#a"+id).html(car.total.toFixed(2));
                    $("#b"+id).val(car.num);
                    $("#c"+id).val(car.total.toFixed(2));
                    Cal(0);
                }
            });
        }
    }
    function Delete(id){
        if($("#money").text() != 0){
            alert("正在结算不可删除");
        }else{
            alert("确定要删除?");
            $.get("${ctx}/car/delete?id="+id,
                function (data){
                    var rs = JSON.parse(data);
                    if(rs.result){
                        alert("删除成功");
                        $("#"+id).remove();
                    }
                }

            );
        }

    }
    /*
        Cal()函数用到的全局变量
    */
    var money = 0.0;
    var temp = 0.0;
    var flag = 0;
    var num = 0;

    /**
     * create by Miracle
     * function: 实现点击商品，结算的功能
     * @constructor
     */
    function Cal(condition){
        var Money = document.getElementById("money");
        var Num = document.getElementById("num");
        var count = 0.0;
        var box = document.getElementsByName("checkbox");
        for(var i = 0; i < box.length; i++){
            if(box[i].checked && flag ==0){
                temp += parseFloat(box[i].value);
            }else if(box[i].checked && flag !=0){
                count += parseFloat(box[i].value);
            }
        }
            if(flag == 0 && condition == 0){//第一次点击—+，

            }else if (flag == 0 && condition != 0) {//第一次购物
                money += temp;
                flag =1;
                num += 1;
            }else if(flag == 1 && condition != 0){//第n次结算商品
                num = count > temp ? ++num : --num;
                money += count - temp;
                temp = count;
            }else if(flag == 1 && condition == 0){
                money += count - temp;
                temp = count;
            }
            Money.innerHTML = money.toFixed(2);
            Num.innerHTML = num.toFixed(2);

    }

    function Pay(){
        if($("#money").text() != 0){
            window.location.href = "${ctx}/itemOrder/orderDetail";
        }else {
            alert("请您选择购买的商品");
        }
    }



</script>
</html>
