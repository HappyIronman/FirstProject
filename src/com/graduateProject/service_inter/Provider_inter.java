package com.graduateProject.service_inter;

import com.graduateProject.entity.Provider;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
public interface Provider_inter {
    public List<Provider> getAllProvider();
    public Boolean addProvider(Provider provider);
    public Boolean deleteProvider(int id);
    public Boolean updateProvider(Provider provider);
    public List<Provider> searchProvider(Provider provider);
}
