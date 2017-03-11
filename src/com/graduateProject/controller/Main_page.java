package com.graduateProject.controller;

import com.graduateProject.entity.Model;
import com.graduateProject.entity.User;
import com.graduateProject.service_inter.Model_inter;
import com.graduateProject.service_inter.User_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Controller
public class Main_page {
    @Autowired
    private User_inter user_service;


    //主页面
    @RequestMapping(value = "/main_page/{id}",method = RequestMethod.GET)
    public String MainPage(@PathVariable("id")int user_id, ModelMap modelMap){
        User user=user_service.getUserByID(user_id);
        if(user!=null){
            modelMap.addAttribute("user",user);
        }
        return "main_page";
    }
}
