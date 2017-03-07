package com.graduateProject.service;

import com.graduateProject.DAO.ProviderDAO;
import com.graduateProject.entity.Provider;
import com.graduateProject.service_inter.Provider_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Service
public class Provider_service implements Provider_inter {
    @Autowired
    ProviderDAO providerDAO;

    @Override
    public List<Provider> getAllProvider() {
        List<Provider> l_pro=providerDAO.selectAllProvider();
        if(l_pro==null){
            return new ArrayList<>();
        }
        return l_pro;
    }

    @Override
    public Boolean addProvider(Provider provider) {
        return providerDAO.addProvider(provider)==1;
    }

    @Override
    public Boolean deleteProvider(int id) {
        return providerDAO.deleteProvider(id)==1;
    }

    @Override
    public Boolean updateProvider(Provider provider) {
        return providerDAO.updateProvider(provider)==1;
    }

    @Override
    public List<Provider> searchProvider(Provider provider) {
        List<Provider> l_pro=providerDAO.selectProvider(provider);
        if(l_pro!=null){
            return l_pro;
        }
        return new ArrayList<>();
    }
}
