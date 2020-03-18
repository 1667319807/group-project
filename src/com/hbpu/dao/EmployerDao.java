package com.hbpu.dao;

import com.hbpu.pojo.Employer;
import com.hbpu.pojo.Trade;
import com.hbpu.util.Util;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/16 12:24
 */
public class EmployerDao {
    private basicDao dao = new basicDao();

    public List<Employer> selectAllEmployers() {
        List<Employer> list = new ArrayList<>();
        String sql = "SELECT e.employer_id,employer_sex,employer_name,employer_age,trade_hiretype,employer_lowsalary,employer_highsalary,\n" +
                "trade_state,trade_recordtime from employer e inner join trade t WHERE e.employer_id=t.employer_id";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst);
            if (res.next()) {
                Employer employer = new Employer();
                employer.setEmployer_id(Integer.valueOf(res.getString(1)));
                employer.setEmployer_sex(res.getString(2));
                employer.setEmployer_name(res.getString(3));
                employer.setEmployer_age(Integer.valueOf(res.getString(4)));
                employer.setEmployer_lowsalary(Float.valueOf(res.getString(6)));
                employer.setEmployer_highsalary(Float.valueOf(res.getString(7)));
                Trade trade = new Trade();
                trade.setTrade_hiretype(res.getString(5));
                trade.setTrade_state(res.getString(8));
                trade.setTrade_recordtime(Timestamp.valueOf(res.getString(9)));
                employer.setTrade(trade);
                list.add(employer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        }
        return list;
    }

    public List<Employer> selectEmployersWithCond(Object... para) {
        List<Employer> list = new ArrayList<>();
        String sql = "SELECT e.employer_id,employer_sex,employer_name,employer_age,trade_hiretype,employer_lowsalary,employer_highsalary,\n" +
                "trade_state,trade_recordtime from employer e inner join trade t WHERE e.employer_id=t.employer_id";
        StringBuffer cond = new StringBuffer();
        if (para[0] != null) {
            //para[0]="";
            cond.append(" and employer_name  like '%" + para[0] + "%'");
        } else {
            cond.append(" and employer_name  like '%%'");
        }
        if (para[1] != null) {
            cond.append(" and employer_sex ='" + para[1] + "'");
        } else {
            cond.append(" and employer_sex =''");
        }
        if (para[2] != null) {
            cond.append(" and employer_phone= " + para[2]);
        } else {
            //cond.append(" and employer_phone='' "+"''");
        }
        if (para[3] != null) {
            cond.append(" and t.trade_state= '" + para[3] + "'");
        } else {
            cond.append(" and t.trade_state='' ");
        }
        if (para[4] != null) {
            cond.append(" and trade_hiretype = '" + para[4] + "'");
        } else {
            cond.append(" and trade_hiretype =''");
        }
        sql += cond;
        //System.out.println( sql);
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst);
            while (res != null && res.next()) {
                Employer employer = new Employer();
                employer.setEmployer_id(Integer.valueOf(res.getString(1)));
                employer.setEmployer_sex(res.getString(2));
                employer.setEmployer_name(res.getString(3));
                employer.setEmployer_age(Integer.valueOf(res.getString(4)));
                employer.setEmployer_lowsalary(Float.valueOf(res.getString(6)));
                employer.setEmployer_highsalary(Float.valueOf(res.getString(7)));
                Trade trade = new Trade();
                trade.setTrade_hiretype(res.getString(5));
                trade.setTrade_state(res.getString(8));
                trade.setTrade_recordtime(Timestamp.valueOf(res.getString(9)));
                employer.setTrade(trade);
                list.add(employer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.close(res, pst, con);
        }
        return list;
    }
}
