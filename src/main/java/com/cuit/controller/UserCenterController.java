package com.cuit.controller;


import com.cuit.pojo.User;
import com.cuit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserCenterController {

    @Autowired
    private UserService userService;


    public String show() {
        return "UserInfo/User";
    }

   /* @RequestMapping("/testUsers")*/

   /* @ResponseBody
    public List<User> test() {
        List<User> users = userService.selectAllUsers();
        System.out.println(users);
        return users;
    }*/
}
