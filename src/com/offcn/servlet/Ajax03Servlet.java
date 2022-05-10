package com.offcn.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Ajax03Servlet", value = "/Ajax03Servlet")
public class Ajax03Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username =request.getParameter("username");
    // {username":"zhangsan}
        String user = "{\"username\":\"zhangsan\",\"age\":\"20\"}";
        response.getWriter().print(user);//打印
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    this.doGet(request,response);
    }
}
