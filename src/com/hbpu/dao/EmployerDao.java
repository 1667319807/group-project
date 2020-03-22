package com.hbpu.dao;

import com.hbpu.pojo.Employer;
import com.hbpu.util.PageBean;
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

    public List<Employer> selectAllEmployers(PageBean<Employer> page) {
        List<Employer> list = new ArrayList<>();
        String sql = "SELECT e.employer_id,employer_sex,employer_name,employer_age,trade_hiretype,employer_lowsalary,employer_highsalary,\n" +
                "trade_state,trade_recordtime from employer e inner join trade t WHERE e.employer_id=t.employer_id limit ?,?";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst,(page.getPageNum()-1)*page.getPageSize(),page.getPageSize());
            while (res!=null&&res.next()) {
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

    public Employer selectEmployerDetail(Integer employer_id) {
        Employer employer = null;
        Trade trade = null;
        String sql = "SELECT employer_name,employer_sex,employer_age,employer_minzu,employer_jiguan,employer_education,\n" +
                "employer_idcard,employer_hukouaddr,employer_shouji,employer_zhuzhai,employer_zhiye,employer_workplace,employer_hetonghao,\n" +
                "employer_serveraddr,employer_jiatingaddr,employer_jiatingrenshu,employer_jiatingserver,employer_jiatingfangwumianji,employer_jiatingyinshi,employer_jiatingqita,employer_jingbanren,\n" +
                "trade_recordtime,employer_hetongqixian from employer e inner join trade t where e.employer_id=t.employer_id and  e.employer_id= ? ";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst, employer_id);
            while (res != null && res.next()) {
                employer = new Employer();
                employer.setEmployer_name(res.getString(1));
                employer.setEmployer_sex(res.getString(2));
                employer.setEmployer_age(Integer.valueOf(res.getString(3)));
                employer.setEmployer_minzu(res.getString(4));
                employer.setEmployer_jiguan(res.getString(5));
                employer.setEmployer_education(res.getString(6));
                employer.setEmployer_idcard(res.getString(7));
                employer.setEmployer_hukouaddr(res.getString(8));
                employer.setEmployer_shouji(res.getString(9));
                employer.setEmployer_zhuzhai(res.getString(10));
                employer.setEmployer_zhiye(res.getString(11));
                employer.setEmployer_workplace(res.getString(12));
                employer.setEmployer_hetonghao(res.getString(13));
                trade = new Trade();
                employer.setEmployer_serveraddr(res.getString(14));
                employer.setEmployer_jiatingaddr(res.getString(15));
                employer.setEmployer_jiatingrenshu(res.getString(16));
                employer.setEmployer_jiatingserver(res.getString(17));
                employer.setEmployer_jiatingfangwumianji(res.getString(18));
                employer.setEmployer_jiatingyinshi(res.getString(19));
                employer.setEmployer_jiatingqita(res.getString(20));
                employer.setEmployer_jingbanren(Integer.valueOf(res.getString(21)));
                trade.setTrade_recordtime(Timestamp.valueOf(res.getString(22)));
                employer.setEmployer_hetongqixian(Timestamp.valueOf(res.getString(23)));
                employer.setTrade(trade);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.close(res, pst, con);
        }
        return employer;
    }

    public int addEmployer(Employer employer) {
        int i = 0;
        String sql = "insert into employer(employer_name,employer_sex,employer_age,employer_minzu,employer_jiguan,employer_education," +
                " employer_idcard,employer_workplace,employer_zhiye,employer_hetonghao,employer_hetongqixian,employer_shouji,employer_zhuzhai,employer_hukouaddr," +
                " employer_serveraddr,employer_jiatingaddr,employer_jiatingrenshu,employer_jiatingserver,employer_jiatingfangwumianji,employer_jiatingyinshi,employer_jiatingqita,employer_highsalary,employer_lowsalary," +
                " employer_hirerequire,employer_jingbanren,employer_recordtime )" +
                "  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
        Connection con = null;
        PreparedStatement pst = null;
        try {
            con = Util.getConnection();
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            i = dao.exeUpdate(con, pst, employer.getEmployer_name(), employer.getEmployer_sex(), employer.getEmployer_age(), employer.getEmployer_minzu()
                    , employer.getEmployer_jiguan(), employer.getEmployer_education(), employer.getEmployer_idcard(),employer.getEmployer_workplace(), employer.getEmployer_zhiye(),
                    employer.getEmployer_hetonghao(),employer.getEmployer_hetongqixian(),employer.getEmployer_shouji(),employer.getEmployer_zhuzhai(), employer.getEmployer_hukouaddr()
                    ,   employer.getEmployer_serveraddr()
                    , employer.getEmployer_jiatingaddr(), employer.getEmployer_jiatingrenshu(), employer.getEmployer_jiatingserver(), employer.getEmployer_jiatingfangwumianji(), employer.getEmployer_jiatingyinshi()
                    , employer.getEmployer_jiatingqita(),employer.getEmployer_highsalary(),employer.getEmployer_lowsalary(),employer.getEmployer_hirerequire(), employer.getEmployer_jingbanren(), employer.getEmployer_recordtime());
            System.out.println("i = " + i);
            System.out.println(sql);
            con.commit();
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        }finally {
            dao.close(pst,con);
        }
        return i;
    }
    public int queryCount() {
        int i = 0;
        String sql = "select count(*) from employer";
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
