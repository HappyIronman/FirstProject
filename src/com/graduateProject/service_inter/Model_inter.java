package com.graduateProject.service_inter;

import com.graduateProject.entity.Model;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
public interface Model_inter {
    public List<Model> getAllModel();
    public List<Model> searchModel(Model model);
}
