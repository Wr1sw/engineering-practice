package com.cuit.controller;

import com.alibaba.fastjson.JSONObject;
import com.cuit.base.BaseController;
import com.cuit.pojo.User;
import com.cuit.service.UserService;
import com.cuit.utils.Consts;
import com.cuit.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 用户c层
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    /**
     * 查看用户信息
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/view")
    public String view(Model model, HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if(attribute==null){
            return "redirect:/login/uLogin";
        }
        Integer userId = Integer.valueOf(attribute.toString());
        User obj = userService.load(userId);
        model.addAttribute("obj",obj);
        return "user/view";
    }
    /**
     * 执行修改用户信息的操作
     */
    @RequestMapping("/exUpdate")
    public String exUpdate(User user,HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if(attribute==null){
            return "redirect:/login/uLogin";
        }
        user.setId(Integer.valueOf(attribute.toString()));
        userService.updateById(user);
        return "redirect:/user/view";
    }

    @RequestMapping("/doVerify")
    @ResponseBody
    public String doVerify(HttpServletRequest request){
        JSONObject json = new JSONObject();
        String password = request.getParameter("oldPwd");
        User user = userService.getById(Integer.parseInt(request.getSession().getAttribute(Consts.USERID).toString()));
        if(user.getPassWord().equals(password)){
            json.put("result",1);
            user.setPassWord(request.getParameter("newPwd"));
            userService.updateById(user);
        }else {
            json.put("result",0);
        }
        return json.toJSONString();
    }
}
