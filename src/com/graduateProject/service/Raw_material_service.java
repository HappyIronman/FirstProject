package com.graduateProject.service;

import com.graduateProject.DAO.Raw_materialDAO;
import com.graduateProject.entity.Raw_material;
import com.graduateProject.service_inter.Raw_material_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Service
public class Raw_material_service implements Raw_material_inter {
    @Autowired
    Raw_materialDAO raw_materialDAO;

    @Override
    public List<Raw_material> getAllRaw() {
        List<Raw_material> l_raw=raw_materialDAO.selectAllRaw();
        if(l_raw==null){
            return new ArrayList<>();
        }
        else {
            return l_raw;
        }
    }

    @Override
    public List<Raw_material> searchRaw(Raw_material raw_material) {
        List<Raw_material> l_raw=raw_materialDAO.selectRaw(raw_material);
        if(l_raw!=null){
            return l_raw;
        }
        return new ArrayList<>();
    }
}
