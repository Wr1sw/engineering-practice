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
     * by wr1sw
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
        Double aDouble = Double.valueOf(price);
        car.setPrice(aDouble);
        if (item.getZk()!=null) {
            aDouble = aDouble * item.getZk()/10;
            car.setPrice(aDouble);
        }
        Integer num = car.getNum();
        Double total = num * aDouble;
        String s = String.valueOf(total);
        car.setTotal(s);
        carService.insert(car);
        jsonObject.put(Consts.RES,1);
        System.out.println(car);
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
