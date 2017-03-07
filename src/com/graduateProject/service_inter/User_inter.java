package com.graduateProject.service_inter;

import com.graduateProject.entity.User;

/**
 * Created by dell on 3/6/2017.
 */
public interface User_inter {
    public Boolean verify_password(String username,String password);
    public int get_user_id_by_name(String username);
    public Boolean username_exist(String username);
    public Boolean save_user(User u);
    public User getUserByID(int id);
}
