package com.offcn.servlet;

import com.offcn.bean.Country;
import com.offcn.service.CountryService;
import com.offcn.service.CountryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CountryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    CountryService cs = new CountryServiceImpl();// 创建对象
        List<Country> list = cs.selectAllCountry();// 通过查询取到集合
        //取到结果（id，name）要响应回去

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
