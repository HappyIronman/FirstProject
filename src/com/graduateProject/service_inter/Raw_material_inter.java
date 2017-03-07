package com.graduateProject.service_inter;

import com.graduateProject.entity.Raw_material;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
public interface Raw_material_inter {
    public List<Raw_material> getAllRaw();
    public List<Raw_material> searchRaw(Raw_material raw_material);

}
