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
@WebServlet(name = "AjaxDemo2", value = "/AjaxDemo2")
public class AjaxDemo2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 编码问题, 由于向客户端响应的xml, 所有下面的代码改成text/xml
        response.setContentType("text/xml;charset=utf-8");
        // 向客户端响应xml片段, 细心, 这里是id='001'
        String xmlStr = "<students>" +
                            "<student id='001'>" +
                                "<name>小李</name>" +
                                "<sex>男</sex>" +
                            "</student>" +
                        "</students>";

        response.getWriter().print(xmlStr);
    }
}
