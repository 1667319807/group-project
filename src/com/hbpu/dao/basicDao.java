package com.hbpu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author qiaolu
 * @time 2020/3/6 13:40
 */
public class basicDao {
    public ResultSet exeQuery(Connection con, PreparedStatement pre, Object... para) {
        ResultSet res = null;
        try {
            for (int i = 0; i < para.length; i++) {
                pre.setObject(i + 1, para[i]);
            }
            res = pre.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;
    }

    public int exeUpdate(Connection con, PreparedStatement pre, Object... para) {
        int m=0;
        try {
            for (int i = 0; i < para.length; i++) {
                pre.setObject(i + 1, para[i]);
            }
            m = pre.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return m;
    }

    public void close(AutoCloseable... auto) {
        for (AutoCloseable o : auto) {
            try {
                o.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
