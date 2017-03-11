package com.graduateProject.controller;

        import com.graduateProject.entity.Model;
        import com.graduateProject.entity.Raw_material;
        import com.graduateProject.service_inter.Model_inter;
        import com.graduateProject.service_inter.Raw_material_inter;
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
public class Stockpile_page {
    @Autowired
    private Model_inter model_service;
    @Autowired
    private Raw_material_inter raw_service;

    //成品模具库存页面
    @RequestMapping(value = "/stockpile_model",method = RequestMethod.GET)
    public String Stockpile_model(ModelMap modelMap){
        List<Model> l_model=model_service.getAllModel();
        modelMap.addAttribute("l_model",l_model);
        return "stockpile_model_page";
    }

    //原材料信息页面
    @RequestMapping(value = "/stockpile_raw",method = RequestMethod.GET)
    public String Stockpile_raw(ModelMap modelMap){
        List<Raw_material>  l_raw=raw_service.getAllRaw();
        modelMap.addAttribute("l_raw",l_raw);
        return "stockpile_raw_page";
    }





    //搜索原材料
    @RequestMapping(value = "/searchRaw",method = RequestMethod.POST)
    public String searchRaw(Raw_material raw,ModelMap modelMap){
        System.out.println(raw.getId()+raw.getName());
        List<Raw_material> l_raw=raw_service.searchRaw(raw);
        System.out.println(l_raw.size()+" got!");
        modelMap.addAttribute("l_raw",l_raw);
        return "stockpile_raw_page";
    }

    //搜索成品磨具
    @RequestMapping(value = "/searchModel",method = RequestMethod.POST)
    public String searchModel(Model model,ModelMap modelMap){
        System.out.println(model.getId()+model.getName());
        List<Model> l_model=model_service.searchModel(model);
        System.out.println(l_model.size()+" got!");
        modelMap.addAttribute("l_model",l_model);
        return "stockpile_model_page";
    }

}

