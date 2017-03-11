package com.graduateProject.controller;

import com.graduateProject.entity.User;
import com.graduateProject.service_inter.User_inter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by dell on 3/6/2017.
 */
@Controller
public class Login_register {
    @Autowired
    private User_inter user_service;

    //访问登录页
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        return "login_page";
    }


    //验证用户名密码，正确后重定向至个人主页
    @RequestMapping(value = "/verify", method = RequestMethod.POST)
    public void verify_result(String login_username, String login_password, HttpSession session, HttpServletResponse response) throws IOException {

        System.out.println(login_username);
        PrintWriter out=response.getWriter();
        if (user_service.verify_password(login_username,login_password)) {
            int user_id = user_service.get_user_id_by_name(login_username);
            System.out.println(user_id + "\n" + login_username);

            session.setAttribute("USERID", user_id);
            session.setAttribute("USERNAME", login_username);
            out.print(user_id);
        }
        else {
            out.print("error");
        }
        out.flush();
        out.close();
    }


    //点击注册按钮后跳转至注册页面
    @RequestMapping(value = "/register")
    public String register(){
        return "register_page";
    }



    //接收提交的注册信息，重定向至个人主页
    @RequestMapping(value = "submit",method = RequestMethod.POST)
    public void submit_inf(User u, HttpSession session, HttpServletResponse response) throws IOException {
        Boolean save_result=user_service.save_user(u);
        PrintWriter out=response.getWriter();
        if(save_result){
            int user_id = user_service.get_user_id_by_name(u.getUsername());
            System.out.println(user_id + "\n" + u.getUsername());

            session.setAttribute("USERID", user_id);
            session.setAttribute("USERNAME", u.getUsername());
            out.println(user_id);
            out.flush();
        }
        else {
            out.print("error");
            out.flush();
        }
        out.close();
    }



    //判断用户名是否重复
    @RequestMapping(value = "is_exist",method = RequestMethod.POST)
    public void is_exist(String username, HttpServletResponse response){
        System.out.println(username +"got!");
        PrintWriter out= null;
        try {
            out = response.getWriter();

            if(user_service.username_exist(username)){
                out.print("true");
                out.flush();
                System.out.println("exist!");
            }
            else {
                System.out.println("Not exist!");
                out.print("false");
                out.print("true");
            }

            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
