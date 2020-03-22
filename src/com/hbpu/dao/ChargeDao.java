package com.hbpu.dao;

import com.hbpu.pojo.Card;
import com.hbpu.pojo.Company;
import com.hbpu.pojo.Recharge;
import com.hbpu.util.Util;
import org.omg.CORBA.INITIALIZE;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/21 22:39
 */
public class ChargeDao {
    basicDao dao=new basicDao();
    public List<Recharge> queryAll(){
        List<Recharge> list=new ArrayList<>();
        String sql="SELECT recharge_id,company_account,company_name,card_count,card_standard,card_money,card_balance,operator_id,remark from card c inner join recharge r ,company com where        c.company_id=com.company_id and recharge_company_id=com.company_id";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst);
            while (res != null && res.next()) {
                Recharge recharge=new Recharge();
                recharge.setRecharge_id(Integer.valueOf(res.getString(1)));
                Company company=new Company();
                company.setCompany_account(res.getString(2));
                company.setCompany_name(res.getString(3));
                Card card=new Card();
                card.setCard_count(Integer.valueOf(res.getString(4)));
                card.setCard_standard(Integer.valueOf(res.getString(5)));
                card.setCard_money(Integer.valueOf(res.getString(6)));
                card.setCard_balance(Integer.valueOf(res.getString(7)));

                recharge.setOperator_id(Integer.valueOf(res.getString(8)));
                recharge.setRemark(res.getString(9));
                recharge.setCompany(company);
                recharge.setCard(card);
                list.add(recharge);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.close(res, pst, con);
        }
        return list;
    }
    public int queryCount(){
        int i = 0;
        String sql = "select count(*) from recharge";
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
    public int updateBalance(Integer recharge_id, Integer balance){
        int i=0;
        String sql="update card set card_balance = card_balance+? where card_id=(SELECT card_id from recharge where recharge_id=?)";
        Connection con = null;
        PreparedStatement pst = null;
        try {
            con = Util.getConnection();
            con.setAutoCommit(false);
            pst = con.prepareStatement(sql);
            i = dao.exeUpdate(con, pst, balance, recharge_id);
            con.commit();
        } catch (SQLException e) {
            try {
                con.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            dao.close( pst, con);
        }
        return i;
    }
}
