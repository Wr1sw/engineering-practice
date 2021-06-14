package com.cuit.controller;


import com.cuit.pojo.User;
import com.cuit.service.UserService;
import com.cuit.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Trail")
public class TrailController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("")
    public String ShowTrailPage() {
        return "Trail";
    }

    @RequestMapping("/search")
    public String ShowSearchPage() {
        return "search";
    }
    @RequestMapping("/item_detail")
    public String ShowdetailPage() {
        return "item_detail";
    }
}
