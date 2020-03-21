package com.hbpu.dao;

import com.hbpu.pojo.Employer;
import com.hbpu.pojo.Trade;
import com.hbpu.util.Util;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author qiaolu
 * @time 2020/3/18 10:54
 */
public class TradeDao {
    private basicDao dao = new basicDao();

    public Trade selectTrade(Integer trade_id) {
        Trade trade = null;
        String sql = "SELECT employer_name,employer_sex,employer_age,employer_minzu,employer_jiguan,employer_education,\n" +
                "employer_idcard,employer_hukouaddr,employer_shouji,employer_zhuzhai,employer_zhiye,employer_workplace,employer_lowsalary,employer_highsalary,trade_jieshaofei,employer_hirerequire,\n" +
                "employer_serveraddr,employer_jiatingaddr,employer_jiatingrenshu,employer_jiatingserver,employer_jiatingfangwumianji,employer_jiatingyinshi,employer_jiatingqita,employer_jingbanren,\n" +
                "trade_recordtime,trade_jiaoyiyouxiaoqi from employer e inner join trade t where e.employer_id=t.employer_id and t.trade_id=? ";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst, trade_id);
            while (res != null && res.next()) {
                Employer employer = new Employer();
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
                employer.setEmployer_lowsalary(Float.valueOf(res.getString(13)));
                employer.setEmployer_highsalary(Float.valueOf(res.getString(14)));
                trade = new Trade();
                trade.setTrade_jieshaofei(Integer.valueOf(res.getString(15)));
                employer.setEmployer_hirerequire(res.getString(16));
                employer.setEmployer_serveraddr(res.getString(17));
                employer.setEmployer_jiatingaddr(res.getString(18));
                employer.setEmployer_jiatingrenshu(res.getString(19));
                employer.setEmployer_jiatingserver(res.getString(20));
                employer.setEmployer_jiatingfangwumianji(res.getString(21));
                employer.setEmployer_jiatingyinshi(res.getString(22));
                employer.setEmployer_jiatingqita(res.getString(23));
                employer.setEmployer_jingbanren(Integer.valueOf(res.getString(24)));
                trade.setTrade_recordtime(Timestamp.valueOf(res.getString(25)));
                trade.setTrade_jiaoyiyouxiaoqi(Timestamp.valueOf(res.getString(26)));
                trade.setEmployer(employer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.close(res, pst, con);
        }
        return trade;
    }

    public Trade updateOrder(Integer trade_id) {
        Trade trade=new Trade();
        String sql="";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        System.out.println(sql);
        Employer employer=null;
        try {
            //con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            //pst = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pst.setString(1,employer.getEmployer_name());
            pst.setString(2,employer.getEmployer_sex());
            pst.setString(3, String.valueOf(employer.getEmployer_age()));
            pst.setString(4,employer.getEmployer_minzu());
            pst.setString(5,employer.getEmployer_jiguan());
            pst.setString(6,employer.getEmployer_education());
            pst.setString(7,employer.getEmployer_idcard());
            pst.setString(8,employer.getEmployer_hukouaddr());
            pst.setString(9,employer.getEmployer_shouji());
            pst.setString(10,employer.getEmployer_zhuzhai());
            pst.setString(11,employer.getEmployer_zhiye());
            pst.setString(12,employer.getEmployer_workplace());
            pst.setString(13,employer.getEmployer_hetonghao());
            pst.setString(14,employer.getEmployer_serveraddr());
            pst.setString(15,employer.getEmployer_jiatingaddr());
            pst.setString(16,employer.getEmployer_jiatingrenshu());
            pst.setString(17,employer.getEmployer_jiatingserver());
            pst.setString(18,employer.getEmployer_jiatingfangwumianji());
            pst.setString(19,employer.getEmployer_jiatingyinshi());
            pst.setString(20,employer.getEmployer_jiatingqita());
            pst.setString(21, String.valueOf(employer.getEmployer_jingbanren()));
            pst.setString(22, String.valueOf(employer.getEmployer_recordtime()));
            //i = pst.executeUpdate();
            /*res = pst.getGeneratedKeys();
            int employer_id;
            if(res.next()){
                employer_id=res.getInt(1);
                employer.setEmployer_id(employer_id);
            }
            pst.close();
            sql="insert into trade(trade_id,trade_recordtime) values(?,?)";
            pst=con.prepareStatement(sql);
            pst.setInt(1,employer.getEmployer_id());
            pst.setTimestamp(2,employer.getTrade().getTrade_recordtime());
            res = pst.getGeneratedKeys();*/
            con.commit();
            //i=1;
            }catch (Exception e){
            e.printStackTrace();
        }
        return trade;
    }

    ;
}
