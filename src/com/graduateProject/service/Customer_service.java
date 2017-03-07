package com.graduateProject.service;

import com.graduateProject.DAO.CustomerDAO;
import com.graduateProject.entity.Customer;
import com.graduateProject.service_inter.Customer_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
@Service
public class Customer_service implements Customer_inter {
    @Autowired
    CustomerDAO customerDAO;

    @Override
    public List<Customer> getAllCustomer() {
        List l_customer=customerDAO.selectAllCustomer();
        if(l_customer==null){
            System.out.println("NULL");
            return new ArrayList<>();
        }
        else {
            System.out.println(l_customer.size()+" Customers got!");
            return l_customer;
        }
    }

    @Override
    public Boolean addCustomer(Customer customer) {
        return customerDAO.addCustomer(customer)==1;
    }

    @Override
    public Boolean deleteCustomer(int id) {
        return customerDAO.deleteCustomer(id)==1;
    }

    @Override
    public Boolean updateCustomer(Customer customer) {
        return customerDAO.updateCustomer(customer)==1;
    }

    @Override
    public List<Customer> searchCustomer(Customer customer) {
        List<Customer> l_raw=customerDAO.selectCustomer(customer);
        if(l_raw!=null){
            return l_raw;
        }
        return new ArrayList<>();
    }
}
