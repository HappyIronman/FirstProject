package com.graduateProject.service_inter;

import com.graduateProject.entity.Customer;

import java.util.List;

/**
 * Created by dell on 3/6/2017.
 */
public interface Customer_inter {
    public List<Customer> getAllCustomer();
    public Boolean addCustomer(Customer customer);
    public Boolean deleteCustomer(int id);
    public Boolean updateCustomer(Customer customer);
    public List<Customer> searchCustomer(Customer customer);
}
