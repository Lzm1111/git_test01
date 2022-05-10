package com.offcn.dao;

import com.offcn.bean.Country;
import com.offcn.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;
import java.util.List;

public class CountryDaoImpl implements CountryDao{

    private Object List;

    @Override
    public List<Country> selectAllCountry() {
        List<Country> list = null;
        QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from contry";
        try {
            List = qr.query(sql,new BeanHandler<>(Country.class));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
}
