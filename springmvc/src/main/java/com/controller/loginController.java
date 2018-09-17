package com.controller;

import com.entity.Test;
import com.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/user")
public class loginController {

    @Resource
    private TestService testService;

    @RequestMapping(value = "/login")
    public ModelAndView login(Test user)
    {
        System.out.println("login"+user.getUsername());
        ModelAndView mv=new ModelAndView();
        //Test  test
        Test s=testService.findId(user.getId());
        Test t=testService.login(user);
        System.out.println("id:"+t.getId());
        if (t!=null)
        {
            mv.addObject("username",t.getUsername());
            mv.addObject("user",t);
            mv.setViewName("view/success.jsp");
        }else {
            return new ModelAndView("redirect:/login.jsp");
        }
        return mv;
    }

    @RequestMapping(value = "test")
    public void test(){
        System.out.println("test test test");
    }


    @RequestMapping(value = {"/login.html"},method = RequestMethod.GET)
    public ModelAndView login(){
        return new ModelAndView("login");
    }
}
