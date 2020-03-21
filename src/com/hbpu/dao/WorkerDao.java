package com.hbpu.dao;


import com.hbpu.pojo.Employer;
import com.hbpu.pojo.Trade;
import com.hbpu.pojo.Worker;
import com.hbpu.util.Util;
import org.omg.CORBA.PUBLIC_MEMBER;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class WorkerDao {
    basicDao dao = new basicDao();

    public List<Worker> selectWithCond(Worker worker) {
        List<Worker> list = new ArrayList<>();
        String sql = "select * from worker ";
        StringBuffer cond = new StringBuffer();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        if (worker.getWorker_name().trim() != null) {
            cond.append(" where worker_name like '%" + worker.getWorker_name() + "%' ");
        } else {
            cond.append(" where worker_name like '%%'");
        }
        if (worker.getWorker_sex().toString() != null) {
            cond.append(" and worker_sex='" + worker.getWorker_sex() + "'");
        } else {
            cond.append(" and worker_sex=''");
        }
        if (worker.getWorker_age().toString() != null) {
            Integer[] string = worker.getWorker_age();
            cond.append(" and worker_age between '" + string[0] + "' and '" + string[1] + "' ");
        } else {
            cond.append(" and worker_age=''");
        }
        if (worker.getWorker_worktime().toString() != null) {
            cond.append(" and worker_worktime ='" + worker.getWorker_worktime() + "'");
        } else {
            cond.append(" and worker_worktime =''");
        }
        if (worker.getWorker_language() != null) {
            cond.append(" and worker_language='" + worker.getWorker_language() + "'");
        } else {
            cond.append(" worker_language=''");
        }
        if (worker.getWorker_state() != null) {
            cond.append(" and worker_state='" + worker.getWorker_state() + "'");
        } else {
            cond.append(" and worker_state=''");
        }
        if (worker.getWorker_marriagestate() != null) {
            cond.append(" and worker_marriagestate ='" + worker.getWorker_marriagestate() + "'");
        } else {
            cond.append(" and worker_marriagestate =''");
        }
        if (worker.getWorker_licensestate() != null) {
            cond.append(" and worker_licensestate ='" + worker.getWorker_licensestate() + "'");
        } else {
            cond.append(" and worker_licensestate =''");
        }
        if (worker.getWorker_personskill() != null) {
            cond.append(" and worker_personskill='" + worker.getWorker_personskill() + "'");
        } else {
            cond.append(" and worker_personskill=''");
        }
        sql += cond;
        System.out.println("sql = " + sql);
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst);
            while (res.next()) {
                Worker w = new Worker();
                w.setWorker_name(res.getString(3));
                w.setWorker_sex(res.getString(4).charAt(0));
                w.setWorker_idcard(res.getString(5));
                w.setBirthday(Timestamp.valueOf(res.getString(6)));
                Integer age[] = {Integer.valueOf(res.getString(7))};
                w.setWorker_age(age);
                w.setWorker_high(Integer.valueOf(res.getString(8)));
                w.setWorker_shouji(res.getString(9));
                w.setWorker_phone(res.getString(10));
                w.setWorker_gongzhong(res.getString(11));
                w.setWorker_worktime(Timestamp.valueOf(res.getString(12)));
                w.setWorker_quedian(res.getString(13));
                w.setWorker_photo(res.getString(14));
                w.setWorker_hujiaddr(res.getString(15));
                w.setWorker_xianaddr(res.getString(16));
                w.setWorker_banknumber(res.getString(17));
                w.setWorker_baoxiannumber(res.getString(18));
                w.setWorker_language(res.getString(19));
                w.setWorker_state(res.getString(20));
                w.setWorker_marriagestate(res.getString(21));
                w.setWorker_licensestate(res.getString(22));
                w.setWorker_healthcond(res.getString(23));
                w.setWorker_healthtime(Timestamp.valueOf(res.getString(24)));
                w.setWorker_personskill(res.getString(25));
                w.setWorker_introduce(res.getString(26));
                w.setWorker_timerequire(res.getString(27));
                w.setWorker_salaryrequire(res.getString(28));
                w.setWorker_zhusu(res.getString(29));
                w.setWorker_canyin(res.getString(30));
                w.setWorker_recordtime(Timestamp.valueOf(res.getString(31)));
                w.setWorker_company(Integer.valueOf(res.getString(32)));
                list.add(w);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dao.close(res, pst, con);
        }
        return list;
    }

    public List<Trade> manageWorkerWithCond(Object... para) {
        List<Trade> list = new ArrayList<>();
        String sql = "select  trade_id,employer_name,employer_shouji,employer_phone,worker_name,worker_shouji,worker_phone,worker_salaryrequire,worker_gongzhong,trade_state from worker w,trade t  inner join employer e where e.company_id=w.company_id and t.worker_id=w.worker_id and t.employer_id=e.employer_id";
        StringBuffer cond = new StringBuffer();
        if (para.length == 0) {
            list=common(sql,list);
            return list;
        } else {
            System.out.println(para[0]);
            if (para[0] != null) {
                cond.append(" and employer_name like '%" + para[0] + "%'");
            } else {
                cond.append(" and employer_name  like '%%'");
            }
            if (para[1] != "" && para[2] != "") {
                cond.append(" and trade_recordtime in (" + para[1] + "," + para[2] + ")");
            } else {
                cond.append(" ");
            }
            if (para[3] != null) {
                cond.append(" and worker_name  like '%" + para[3] + "%'");
            } else {
                cond.append(" and worker_name  like '%%'");
            }
            if (para[4] != null) {
                cond.append(" and trade_state ='" + para[4] + "'");
            } else {
                cond.append(" ");
            }
        }
        sql += cond;
        //System.out.println( sql);
        list=common(sql, list);
        return list;
    }
    public List<Trade> common(String sql,List<Trade> list){
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = dao.exeQuery(con, pst);
            //System.out.println("res = " + res);
            while (res!=null&&res.next()) {
                Trade trade = new Trade();
                Employer employer = new Employer();
                trade.setTrade_id(Integer.valueOf(res.getString(1)));
                employer.setEmployer_name(res.getString(2));
                employer.setEmployer_shouji(res.getString(3));
                employer.setEmployer_phone(res.getString(4));
                Worker worker = new Worker();
                worker.setWorker_name(res.getString(5));
                worker.setWorker_shouji(res.getString(6));
                worker.setWorker_phone(res.getString(7));
                worker.setWorker_salaryrequire(res.getString(8));
                worker.setWorker_gongzhong(res.getString(9));
                trade.setEmployer(employer);
                trade.setWorker(worker);
                trade.setTrade_state(res.getString(10));
                list.add(trade);
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
        String sql = "select count(*) from trade";
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
