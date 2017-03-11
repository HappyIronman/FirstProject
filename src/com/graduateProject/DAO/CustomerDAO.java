package com.graduateProject.DAO;

import com.graduateProject.entity.Customer;
import com.graduateProject.entity.Model;
import org.springframework.stereotype.Repository;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;



@Repository
public interface CustomerDAO {
    public List<Customer> selectAllCustomer();
    public int addCustomer(Customer customer);
    public int deleteCustomer(int id);
    public int updateCustomer(Customer customer);
    public List<Customer> selectCustomer(Customer customer);
}
