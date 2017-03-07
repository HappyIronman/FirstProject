package com.graduateProject.service;

import com.graduateProject.DAO.UserDAO;
import com.graduateProject.entity.User;
import com.graduateProject.service_inter.User_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by dell on 3/6/2017.
 */
@Service
public class User_service implements User_inter {
    @Autowired
    private UserDAO user_dao;

    public Boolean username_exist(String username){
        int user_num=user_dao.select_user_num(username);
        return !(user_num==0);
    }

    public Boolean save_user(User u){
        int user_num=user_dao.select_user_num(u.getUsername());
        if(user_num==0){
            int add_result=user_dao.addUser(u);
            if(add_result==1){
                return true;
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }
    public Boolean verify_password(String username,String password){
        String correct_password=user_dao.get_password(username);
        if(password.equals(correct_password)){
            return true;
        }
        else {
            return false;
        }
    }

    public int get_user_id_by_name(String username){
        return user_dao.get_user_id_by_name(username);
    }
    public User getUserByID(int id){return user_dao.selectUserByID(id);}
}
