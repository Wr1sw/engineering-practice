
/********************************************shopCar.jsp用的js函数***********************************************/
/*
    Cal()函数用到的全局变量
*/
var money = 0.0;
var temp = 0.0;
var flag = 0;
var num = 0;
/*
    AllCheck()函数用到的全局变量
*/
var AllCheckFlag = 0;

/**
 * create by Miracle
 * function: 点击+号的事件
 * @param id
 * @constructor
 */
function Add(id){
    $.ajax({
        url:"/engineering_practice/car/addNum",
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

/**
 * create by Miracle
 * function: 点击-号的事件
 * @param id
 * @constructor
 */
function Reduce(id){
    if($("#b"+id).val()<=1){
        alert("商品的购买数量不能小于1");
    }else{
        $.ajax({
            url:"/engineering_practice/car/addNum",
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

/**
 * create by Miracle
 * function: 删除商品
 * @param id
 * @constructor
 */
function Delete(id){
    if($("#money").text() != 0){
        alert("正在结算不可删除");
    }else{
        alert("确定要删除?");
        $.get("/engineering_practice/car/delete?id="+id,
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
    Num.innerHTML = num;

}

/**
 * create by Miracle
 * function: 点击结算
 * @constructor
 */
function Pay(){
    if($("#money").text() != 0){
        var s = "";
        $('input:checkbox[name=checkbox]:checked').each(function(){
            var ID =  $(this).attr("ID"); //使用attr属性获取ID 或者其他的属性
            s += ID+",";
        });
        RemovePayed();
        window.location.href = "/engineering_practice/itemOrder/orderDetail?ids="+s;
    }else {
        alert("请您选择购买的商品");
    }
}

/**
 * create by Miracle
 * function: 全选事件
 */
$("#allCheck").click(
    function () {
        if(AllCheckFlag == 0){
            $(":checkbox[name='checkbox']").prop("checked", true);
            Cal(1);
            num = document.getElementsByName("checkbox").length;
            document.getElementById("num").innerHTML = num;
            AllCheckFlag = 1;
        }else{
            $(":checkbox[name='checkbox']").prop("checked", false);
            Cal(1);
            num = 0;
            document.getElementById("num").innerHTML = num;
            AllCheckFlag = 0;
        }
    }
);

/**
 * create by Miracle
 * function: 点击结算后，删除购物车中结算的商品
 * @constructor
 */
function RemovePayed(){
    $('input:checkbox[name=checkbox]:checked').each(function(){
        var id =  $(this).attr("id"); //使用attr属性获取ID 或者其他的属性
        id = id.substr(1);
        $("#"+id).remove();
        // $.ajax({
        //     url:"/engineering_practice/car/delete",
        //     type:"POST",
        //     data:{"id":id},
        //     success:function (data){
        //         var rs = JSON.parse(data);
        //         if(rs.result){
        //             $("#"+id).remove();
        //         }
        //     },
        //     error: function (){
        //         alert("请求错误");
        //     }
        // });
    });
}
/************************************************orderDetail.jsp用的js函数**********************************************************/
function Account(){
    var s = "";
    $('input:hidden[name=car]').each(function(){
        var value =  $(this).attr("value"); //使用attr属性获取ID 或者其他的属性
        s += value+";";
    });
    $.ajax({
        url:"/engineering_practice/itemOrder/addBuyRecord",
        type: "POST",
        data: {"data":s},
        success: function (data){
            var res = JSON.parse(data);
            if(res.result == 1){
                window.location.href = "/engineering_practice/itemOrder/account";
            }else{
                alert("订单保存失败");
            }
        }
    });
}

