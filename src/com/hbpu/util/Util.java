package com.hbpu.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * @author qiaolu
 * @time 2020/2/28 20:51
 */
public class Util {
    /*private static String driveName = "com.mysql.jdbc.Driver";//rewriteBatchedStatements=true/serverTimeZone=UTC
    private static String url = "jdbc:mysql://localhost:3306/ydgk06_tysc?serverTimeZone=UTC";
    private static String userName = "root";
    private static String password = "12345";*/
    private static ComboPooledDataSource dataSource = new ComboPooledDataSource();

    static {
        Properties properties = new Properties();
        try {
            properties.load(Util.class.getClassLoader().getResourceAsStream("db.properties"));
           // properties.load(Util.class.getResourceAsStream("db.properties"));
            dataSource.setDriverClass(properties.getProperty("driveName"));
            dataSource.setJdbcUrl(properties.getProperty("url"));
            dataSource.setUser(properties.getProperty("userName"));
            dataSource.setPassword(properties.getProperty("password"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        Connection con = null;
        try {
            con = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    /*public static PreparedStatement getPreparedStatment(Connection con, String sql, Object... parm) {
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql);
            for (int i = 0; i < parm.length; i++) {
                //给SQL语句中的？赋值
                ps.setObject(i + 1, parm[i]);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ps;
    }*/

    /*public static ResultSet exeQuery(String sql, Object... para) {
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = getConnection();
            pre = getPreparedStatment(con, sql, para);
            res = pre.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
    }
        return res;
    }

    public static int exceUpdate(String sql, Object... prar) {
        Connection con = null;
        PreparedStatement ps = null;
        int i = 0;
        try {
            con = getConnection();
            ps = getPreparedStatment(con, sql, prar);
            i = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close( ps, con);
        }
        return i;
    }*/

    public static void close() {
/*        try {
            if(res != null){
                res.close();
            }
            if(pre != null){
                pre.close();
            }
            if(con != null){
                con.close();
                con = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }*/
        /*for (int i = 0; i < auto.length; i++) {
            try {
                auto[i].close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }*/
    }
}
