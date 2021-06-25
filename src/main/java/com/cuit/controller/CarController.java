package com.cuit.controller;

import com.alibaba.fastjson.JSONObject;
import com.cuit.pojo.Car;
import com.cuit.pojo.Item;
import com.cuit.service.CarService;
import com.cuit.service.ItemService;
import com.cuit.utils.Consts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/car")
public class CarController {

    @Autowired
    private CarService carService;

    @Autowired
    private ItemService itemService;


    /**
     * @param car
     * @param request
     * @return json
     * create by wr1sw
     * Modified by Miracle
     * function: 加入购物车，有同款只做更新操作，没有同款做插入操作
     */
    @RequestMapping("/Add")
    @ResponseBody
    public String Add(Car car, HttpServletRequest request) {
        JSONObject jsonObject = new JSONObject();
        Object att = request.getSession().getAttribute(Consts.USERID);
        if(att == null){
            System.out.println("111");
            jsonObject.put(Consts.RES,0);

            return jsonObject.toJSONString();
        }
        Integer userId = Integer.valueOf(att.toString());
        car.setUserId(userId);
        Item item = itemService.load(car.getItemId());
        String price = item.getPrice();
        float aDouble = Float.parseFloat(price);
        car.setPrice(aDouble);
        if (item.getZk()!=null) {
            aDouble = aDouble * item.getZk()/10;
            car.setPrice(aDouble);
        }
        Integer num = car.getNum();
        float total = num * aDouble;
        car.setTotal(String.valueOf(total));

        String sql = "select * from car where item_id = "+car.getItemId();
        Car car1 = carService.getBySqlReturnEntity(sql);
        if(car1 == null){
            carService.insert(car);
        }else {
            Integer integer = car1.getNum();
            car1.setNum(++integer);
            car1.setPrice(aDouble);
            float temp = Float.parseFloat(car1.getTotal())+total;
            car1.setTotal(String.valueOf(temp));
            carService.updateById(car1);
        }
        jsonObject.put(Consts.RES,1);
        System.out.println(car);
        return jsonObject.toJSONString();
    }

    /**
     * create by Miracle
     * @param request
     * @return
     * function: 购物车列表页面，点击+给该商品数量加1
     */
    @RequestMapping("/addNum")
    @ResponseBody
    public String AddNum(HttpServletRequest request){
        JSONObject object = new JSONObject();
        int id = Integer.parseInt(request.getParameter("id"));
        int condition = Integer.parseInt(request.getParameter("condition"));
        Car car = carService.load(id);
        Integer integer = car.getNum();
        float total = Float.parseFloat(car.getTotal());
        if(condition == 1){
            car.setNum(++integer);
            total += car.getPrice();
        }else{
            car.setNum(--integer);
            total -= car.getPrice();
        }
        car.setTotal(String.valueOf(total));
        carService.updateById(car);
        object.put("num",integer);
        object.put("total",total);
        return object.toJSONString();
    }

    /**
     * create by Miracle
     * @param request
     * @return
     * function delete a goods
     */
    @RequestMapping("/delete")
    @ResponseBody
    public String Delete(HttpServletRequest request){
        JSONObject jsonObject = new JSONObject();
        int id = Integer.parseInt(request.getParameter("id"));
        carService.deleteById(id);
        jsonObject.put("result",true);
        return jsonObject.toJSONString();
    }

    /**
     *
     * @return
     */
    @RequestMapping("/findBySql")
    public String findBySql(Model model, HttpServletRequest req) {
        Object att = req.getSession().getAttribute(Consts.USERID);
        if (att == null) {
            return "redirect:/login/toLogin";
        }
        Integer userId = Integer.valueOf(att.toString());
        String sql = "select * from car where user_id="+userId+" order by id desc";
        List<Car> list = carService.listBySqlReturnEntity(sql);
        model.addAttribute("list",list);
        return "car/shopCar";
    }
}
