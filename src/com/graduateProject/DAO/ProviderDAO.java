package com.graduateProject.DAO;

import com.graduateProject.entity.Provider;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Repository
public interface ProviderDAO {
    public List<Provider> selectAllProvider();
    public int addProvider(Provider provider);
    public int deleteProvider(int id);
    public int updateProvider(Provider provider);
    public List<Provider> selectProvider(Provider provider);
}
