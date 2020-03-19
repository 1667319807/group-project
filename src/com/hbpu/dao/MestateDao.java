package com.hbpu.dao;

import com.hbpu.pojo.Message;
import com.hbpu.pojo.Mestate;
import com.hbpu.util.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/19 20:32
 */
public class MestateDao {
    basicDao basicDao = new basicDao();

    public List<Mestate> queryMestate() {
        List<Mestate> list = new ArrayList<>();
        String sql = "SELECT mestate_id,message_topical,mestate_sender,me_state from mestate ms inner join message m where ms.message_id=m.message_id";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = basicDao.exeQuery(con, pst);
            while (res != null && res.next()) {
                Mestate ms = new Mestate();
                ms.setMestate_id(Integer.valueOf(res.getString(1)));
                Message message = new Message();
                message.setMessage_topical(res.getString(2));
                ms.setMestate_sender(res.getString(3));
                ms.setMe_state(res.getString(4));
                ms.setMessage(message);
                list.add(ms);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            basicDao.close(res, pst, con);
        }
        return list;
    }
    public List<Mestate> queryMestateWithCond(String sender,String state) {
        List<Mestate> list = new ArrayList<>();
        String sql = "SELECT mestate_id,message_topical,mestate_sender,me_state from mestate ms inner join message m where ms.message_id=m.message_id";
        StringBuffer cond=new StringBuffer();
        if(sender!=""||sender!=null){
            cond.append(" and mestate_sender ='"+sender+"' ");
        }else{
            cond.append(" ");
        }if(sender!=null||state!=""){
            cond.append(" and me_state='"+ state+"'");
        }else{
            cond.append(" ");
        }
        sql+=cond;
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = basicDao.exeQuery(con, pst);
            while (res != null && res.next()) {
                Mestate ms = new Mestate();
                ms.setMestate_id(Integer.valueOf(res.getString(1)));
                Message message = new Message();
                message.setMessage_topical(res.getString(2));
                ms.setMestate_sender(res.getString(3));
                ms.setMe_state(res.getString(4));
                ms.setMessage(message);
                list.add(ms);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            basicDao.close(res, pst, con);
        }
        return list;
    }
}
