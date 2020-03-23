package com.hbpu.dao;

import com.hbpu.pojo.Notice;
import com.hbpu.util.PageBean;
import com.hbpu.util.Util;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/19 15:03
 */
public class NoticeDao {
    private basicDao basicDao = new basicDao();

    public List<Notice> selectAllDetails(PageBean<Notice> page) {
        List<Notice> list = new ArrayList<>();
        String sql = "select * from notice limit 0,2";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            if (page != null) {
                sql = "select * from notice limit ?,?";
                pst = con.prepareStatement(sql);
                res = basicDao.exeQuery(con, pst, (page.getPageNum() - 1) * page.getPageSize(), page.getPageSize());
            } else {
                pst = con.prepareStatement(sql);
                res = basicDao.exeQuery(con, pst);
            }
            while (res != null && res.next()) {
                Notice notice = new Notice();
                notice.setNotice_id(Integer.valueOf(res.getString(1)));
                notice.setNotice_detail(res.getString(2));
                notice.setNotice_time(Timestamp.valueOf(res.getString(3)));
                list.add(notice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            basicDao.close(res, pst, con);
        }
        return list;
    }

    public int queryCount() {
        int i = 0;
        String sql = "select count(*) from notice";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = basicDao.exeQuery(con, pst);
            while (res != null && res.next()) {
                i = Integer.parseInt(res.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            basicDao.close(res, pst, con);
        }
        return i;
    }

    public List<Notice> queryWithCond(String time1, String time2) {
        List<Notice> list = new ArrayList<>();
        String sql = "select * from notice where notice_time between ? and ?";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet res = null;
        try {
            con = Util.getConnection();
            pst = con.prepareStatement(sql);
            res = basicDao.exeQuery(con, pst,time1,time2);
            while (res != null && res.next()) {
                Notice notice = new Notice();
                notice.setNotice_id(Integer.valueOf(res.getString(1)));
                notice.setNotice_detail(res.getString(2));
                notice.setNotice_time(Timestamp.valueOf(res.getString(3)));
                list.add(notice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            basicDao.close(res, pst, con);
        }
        return list;
    }
}
