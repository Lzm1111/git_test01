package com.offcn.dao;

import com.offcn.bean.Country;

import java.util.List;

public interface CountryDao {
    // 查询所有的国家
    List<Country> selectAllCountry();
}
