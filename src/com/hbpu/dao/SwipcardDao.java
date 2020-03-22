package com.hbpu.dao;

import com.hbpu.pojo.Company;
import com.hbpu.pojo.Swipcard;
import com.hbpu.util.PageBean;
import com.hbpu.util.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/22 17:30
 */
public class SwipcardDao {
    basicDao dao = new basicDao();

    public List<Swipcard> queryAll(PageBean page) {
        List<Swipcard> list = new ArrayList<>();
        String sql = "SELECT swipcard_id,company_name,company_account,swipcardtime,swip_charge from swipcard s inner join company c where s.company_id=c.company_id limit ?,?";
        StringBuffer cond = new StringBuffer();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst, (page.getPageNum() - 1) * page.getPageSize(), page.getPageSize());
            while (res != null && res.next()) {
                Swipcard sc = new Swipcard();
                sc.setSwipcard_id(Integer.valueOf(res.getString(1)));
                Company c = new Company();
                c.setCompany_name(res.getString(2));
                c.setCompany_account(res.getString(3));
                sc.setCompany(c);
                sc.setSwipcardtime(res.getTimestamp(4));
                sc.setSwip_charge(Float.valueOf(res.getString(5)));
                list.add(sc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.close(res, pst, con);
        }
        return list;
    }

    public List<Swipcard> queryWithCond(PageBean page, Company company, String str1, String str2) {
        List<Swipcard> list = new ArrayList<>();
        String sql = "SELECT swipcard_id,company_name,company_account,swipcardtime,swip_charge from swipcard s inner join company c where s.company_id=c.company_id ";
        StringBuffer cond = new StringBuffer();
        if (company != null) {
            if (company.getCompany_name() != "") {
                cond.append(" and company_name like'%" + company.getCompany_name() + "%'");
            } else {
                cond.append(" and company_name like'%%'");
            }
            if (company.getCompany_account()!="") {
                cond.append(" and company_account like '%"+company.getCompany_account()+"%'");
            }else{
                cond.append(" and company_account like '%%'");
            }
        }if(str1!=""&&str2!=""){
            cond.append(" and swipcardtime between '"+str1+"' and '"+str2+" '" );
        }else{
            cond.append(" ");
        }
        sql+=cond;
        System.out.println(sql);
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst);
            while (res != null && res.next()) {
                Swipcard sc = new Swipcard();
                sc.setSwipcard_id(Integer.valueOf(res.getString(1)));
                Company c = new Company();
                c.setCompany_name(res.getString(2));
                c.setCompany_account(res.getString(3));
                sc.setCompany(c);
                sc.setSwipcardtime(res.getTimestamp(4));
                sc.setSwip_charge(Float.valueOf(res.getString(5)));
                list.add(sc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.close(res, pst, con);
        }
        return list;
    }

    public int queryCount() {
        int i = 0;
        String sql = "select count(*) from swipcard sc inner join company c where sc.company_id=c.company_id";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst);
            while (res != null && res.next()) {
                i = Integer.parseInt(res.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.close(res, pst, con);
        }
        return i;
    }
}
