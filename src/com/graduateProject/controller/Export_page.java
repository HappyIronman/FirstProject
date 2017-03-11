package com.graduateProject.controller;

import com.graduateProject.entity.Customer;
import com.graduateProject.service_inter.Customer_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Controller
public class Export_page {

    @Autowired
    private Customer_inter customer_service;

    //出口信息页面
    @RequestMapping(value = "/export",method = RequestMethod.GET)
    public String Export(ModelMap modelMap){
        List<Customer> l_customer=customer_service.getAllCustomer();
        modelMap.addAttribute("l_customer",l_customer);
        return "export_page";
    }

    //增加
    @RequestMapping(value = "/addCustomer",method = RequestMethod.POST)
    public String AddCustomer(Customer customer){
        System.out.println(customer.getCname());
        Boolean result=false;
        result=customer_service.addCustomer(customer);
        if(result==true){
            return "redirect:/export";
        }
        else {
            return "errorPage";
        }
    }
    //更新
    @RequestMapping(value = "/updateCustomer",method = RequestMethod.POST)
    public String updateCustomer(Customer customer){
        System.out.println(customer.getId()+customer.getCname());
        if(customer_service.updateCustomer(customer)){
            return "redirect:/export";
        }
        return "errorPage";
    }

    //查找
    @RequestMapping(value = "/searchCustomer",method = RequestMethod.POST)
    public String searchCustomer(Customer customer,ModelMap modelMap){
        System.out.println(customer.getId()+customer.getCname());
        List<Customer> l_customer=customer_service.searchCustomer(customer);
        System.out.println(l_customer.size()+" got!");
        modelMap.addAttribute("l_customer",l_customer);
        return "export_page";
    }

    //删除
    @RequestMapping(value = "/deleteCustomer",method = RequestMethod.POST)
    public String deleteCustomer(int id){
        if(customer_service.deleteCustomer(id)){
            System.out.println(id+" customer Deleted!");
            return "redirect:/export";
        }
        return "errorPage";
    }
}
