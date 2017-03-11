package com.graduateProject.controller;

import com.graduateProject.entity.Finance;
import com.graduateProject.service_inter.Finance_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by dell on 3/7/2017.
 */
@Controller
public class Output_page {
    @Autowired
    private Finance_inter finance_service;

    //报表输出页面
    @RequestMapping(value = "/output")
    String OutputFinance(ModelMap modelMap){
        List<Finance> l_finance=finance_service.getAllFinance();
        modelMap.addAttribute("l_finance",l_finance);
        return "finance_page";
    }
}
