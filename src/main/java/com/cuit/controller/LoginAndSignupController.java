package com.cuit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginAndSignupController {


    @RequestMapping("/signup")
    public String showSignupPage() {
        return "login/res";
    }

//    @RequestMapping("/login")
//    public String showLoginPage () {
//        return "login/Mlogin";
//    }
}