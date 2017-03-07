package com.graduateProject.service;

import com.graduateProject.DAO.ModelDAO;
import com.graduateProject.entity.Model;
import com.graduateProject.service_inter.Model_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Service
public class Model_service implements Model_inter {
    @Autowired
    private ModelDAO modelDAO;

    @Override
    public List<Model> getAllModel() {
        List l_model;
        l_model=modelDAO.selectAllModel();
        if(l_model!=null)
            return l_model;
        else
            return new ArrayList();
    }

    @Override
    public List<Model> searchModel(Model model) {
        List<Model> l_model=modelDAO.selectModel(model);
        if(l_model!=null){
            return l_model;
        }
        return new ArrayList<>();
    }
}
