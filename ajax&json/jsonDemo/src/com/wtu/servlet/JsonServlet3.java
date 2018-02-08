package com.wtu.servlet;

import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by menglanyingfei on 2018/1/29.
 */
@WebServlet(name = "JsonServlet3", value = "/JsonServlet3")
public class JsonServlet3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");

        /*
             JSONArray的使用: 它是一个List集合
         */
        JSONArray ja = new JSONArray();

        Person person1 = new Person("小李", 19, "男");
        Person person2 = new Person("小阳", 15, "男");
        ja.add(person1);
        ja.add(person2);

        /*
            已知有JavaBean对象, 将JavaBean对象转换成json串
         */
        // 将ja转换成JSON串
        System.out.println(JSONArray.fromObject(ja));
        response.getWriter().print(JSONArray.fromObject(ja));
    }
}












