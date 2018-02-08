package com.wtu.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by menglanyingfei on 2018/1/28.
 */
@WebServlet(name = "AjaxDemo1", value = "/AjaxDemo1")
public class AjaxDemo1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 编码问题
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");

        // 获取请求参数
        String username = request.getParameter("name");

        // 输出请求参数
        System.out.println(username);

        // 响应内容
        response.getWriter().print("ajax入门小程序");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*
		 * 服务器向客户端响应ajax请求的时候, 可以响应text,html,xml,json数据格式
		 */
        doPost(request, response);
    }
}
