package com.wtu.servlet;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by menglanyingfei on 2018/1/29.
 */
@WebServlet(name = "ProvinceCityServlet", value = "/ProvinceCityServlet")
public class ProvinceCityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 请求编码
        request.setCharacterEncoding("utf-8");
        // 响应格式
        response.setContentType("text/xml;charset=utf-8");
        // 获取请求参数
        String proName = request.getParameter("proName");
        // 创建解析器
        SAXReader reader = new SAXReader();

        try {
            // 解析china.xml得到Document对象
            Document doc = reader.read(this.getClass().getResourceAsStream("/china.xml"));
            // 查询name为proName的province片段
            Element proEle = (Element) doc.selectSingleNode("//province[@name='" +proName +"']");
            // 将proEle转换成xml格式的字符串
            String strEle = proEle.asXML();
            // 响应
            response.getWriter().print(strEle);
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 设置响应编码
        response.setContentType("text/html;charset=utf-8");
        // 创建解析器
        SAXReader reader = new SAXReader();
        // 得到xml文件对应的Document对象
        try {
            Document doc = reader.read(this.getClass().getResourceAsStream("/china.xml"));
            // 获取province元素的属性节点(XPath)
            List<Attribute> attrList =
                    doc.selectNodes("//province/@name");
            // 采用StringBuilder来拼接所有的省份名称
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < attrList.size(); i++) {
                // 获取每一个属性节点的属性值
                String proName = attrList.get(i).getValue();
                sb.append(proName);
                // 北京,天津...台湾
                if (i < attrList.size() - 1) {
                    sb.append("|");
                }

            }
            // 响应
            response.getWriter().print(sb.toString());

        } catch (DocumentException e) {
            e.printStackTrace();
        }


    }
}





















