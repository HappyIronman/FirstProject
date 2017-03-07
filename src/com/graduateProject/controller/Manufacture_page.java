package com.graduateProject.controller;

import com.graduateProject.entity.Provider;
import com.graduateProject.service_inter.Provider_inter;
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
public class Manufacture_page {

    @Autowired
    private Provider_inter provider_service;

    @RequestMapping(value = "/manufacture",method = RequestMethod.GET)
    public String Manufacture(ModelMap modelMap){
        List<Provider> l_provider=provider_service.getAllProvider();
        modelMap.addAttribute("l_provider",l_provider);
        return "manufacture_page";
    }

    @RequestMapping(value = "/addProvider",method = RequestMethod.POST)
    public String AddProvider(Provider provider){
        System.out.println(provider.getCname());
        Boolean result=false;
        result=provider_service.addProvider(provider);
        if(result==true){
            return "redirect:/manufacture";
        }
        else {
            return "errorPage";
        }
    }
    @RequestMapping(value = "/updateProvider",method = RequestMethod.POST)
    public String updateProvider(Provider provider){
        System.out.println(provider.getId()+provider.getCname());
        if(provider_service.updateProvider(provider)){
            return "redirect:/manufacture";
        }
        return "errorPage";
    }

    @RequestMapping(value = "/searchProvider",method = RequestMethod.POST)
    public String searchProvider(Provider provider,ModelMap modelMap){
        System.out.println(provider.getId()+provider.getCname());
        List<Provider> l_provider=provider_service.searchProvider(provider);
        System.out.println(l_provider.size()+" got!");
        modelMap.addAttribute("l_provider",l_provider);
        return "manufacture_page";
    }

    @RequestMapping(value = "/deleteProvider",method = RequestMethod.POST)
    public String deleteProvider(int id){
        if(provider_service.deleteProvider(id)){
            System.out.println(id+" provider Deleted!");
            return "redirect:/manufacture";
        }
        return "errorPage";
    }
}