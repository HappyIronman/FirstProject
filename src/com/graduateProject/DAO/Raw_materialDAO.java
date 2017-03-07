package com.graduateProject.DAO;

import com.graduateProject.entity.Raw_material;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Repository
public interface Raw_materialDAO {
    public List<Raw_material> selectAllRaw();
    public List<Raw_material> selectRaw(Raw_material raw_material);
}
