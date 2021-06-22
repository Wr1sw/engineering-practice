package com.cuit.controller;


import com.cuit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Trail")
public class TrailController {

    @Autowired
    private UserService userService;

    @RequestMapping("")
    public String ShowTrailPage() {
        return "Trail";
    }

    @RequestMapping("/search")
    public String ShowSearchPage() {
        return "item/search";
    }
    @RequestMapping("/item_detail")
    public String ShowdetailPage() {
        return "item/item_detail";
    }
    @RequestMapping("/shopCar")
    public String shopCar() {
        return "car/shopCar";
    }
}
