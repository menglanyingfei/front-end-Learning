package com.wtu.servlet;

import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by menglanyingfei on 2018/1/29.
 */
@WebServlet(name = "JsonServlet2", value = "/JsonServlet2")
public class JsonServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        /*
            JSONObject: 实现了Map接口, 本质是一个Map集合
            将JSONObject作为map集合来使用
            fromObject(): 可以将JSONObject对象转换成json串
         */
        JSONObject jb = new JSONObject();
        // 存储键值对
        jb.put("name", "小李");
        jb.put("age", 18);
        jb.put("sex", "男");
        System.out.println(JSONObject.fromObject(jb));
        // 向客户端响应一个json串
        response.getWriter().print(JSONObject.fromObject(jb));
    }
}












