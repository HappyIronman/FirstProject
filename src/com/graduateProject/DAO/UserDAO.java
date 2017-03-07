package com.graduateProject.DAO;

import com.graduateProject.entity.User;
import org.springframework.stereotype.Repository;


/**
 * Created by dell on 3/6/2017.
 */
@Repository
public interface UserDAO {
    public User selectUserByID(int id);
    public int addUser(User user);
    public int select_user_num(String username);
    public String get_password(String username);
    public int get_user_id_by_name(String username);
}
