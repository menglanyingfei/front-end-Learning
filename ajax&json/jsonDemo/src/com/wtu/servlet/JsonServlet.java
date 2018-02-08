package com.wtu.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by menglanyingfei on 2018/1/29.
 */
@WebServlet(name = "JsonServlet", value = "/JsonServlet")
public class JsonServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // ajax如果传递的是json对象, 那么会自动将该对象
        // 转换成key=value&key=value...形式
        request.setCharacterEncoding("utf-8");
        System.out.println(request.getCharacterEncoding());

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username + "---" + password);

        // 向客户端响应一个json串
        String jsonStr = "{\"username\":\"learning\", \"password\": \"123\"}";

        response.getWriter().print(jsonStr);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
