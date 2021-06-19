package com.cuit.service;

import com.cuit.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ="classpath:applicationContext.xml")
public class MyTest {

    @Autowired
    private UserService userService;
    @Test
    public void test1 () {
      /*  List<User> users = userService.deleteBySql("select * from ");
        for (User user : users) {
            System.out.println(user);
        }*/
    }
}
