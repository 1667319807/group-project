package com.hbpu.pojo;

import java.sql.Time;
import java.sql.Timestamp;

/**
 * @author qiaolu
 * @time 2020/3/19 14:54
 */
public class Notice {
    private Integer notice_id;
    private  String notice_detail;
    private Timestamp notice_time;

    public Notice() {
    }

    public Notice(Integer notice_id, String notice_detail, Timestamp notice_time) {
        this.notice_id = notice_id;
        this.notice_detail = notice_detail;
        this.notice_time = notice_time;
    }

    public Integer getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(Integer notice_id) {
        this.notice_id = notice_id;
    }

    public String getNotice_detail() {
        return notice_detail;
    }

    public void setNotice_detail(String notice_detail) {
        this.notice_detail = notice_detail;
    }

    public Timestamp getNotice_time() {
        return notice_time;
    }

    public void setNotice_time(Timestamp notice_time) {
        this.notice_time = notice_time;
    }
}
