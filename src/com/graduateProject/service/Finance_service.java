package com.graduateProject.service;

import com.graduateProject.DAO.FinanceDAO;
import com.graduateProject.entity.Finance;
import com.graduateProject.service_inter.Finance_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Service
public class Finance_service implements Finance_inter {
    @Autowired
    private FinanceDAO financeDAO;

    @Override
    public List<Finance> getAllFinance() {
        List<Finance> l_finance=financeDAO.selectAllFinance();
        if(l_finance==null){
            return new ArrayList<>();
        }
        else {
            return l_finance;
        }
    }
}
