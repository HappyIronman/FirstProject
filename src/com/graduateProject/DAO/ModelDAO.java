package com.graduateProject.DAO;

import com.graduateProject.entity.Model;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Repository
public interface ModelDAO {
    public List<Model> selectAllModel();
    public List<Model> selectModel(Model model);

}
