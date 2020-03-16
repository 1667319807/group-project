package com.hbpu.pojo;

import java.sql.Timestamp;

/**
 * @author qiaolu
 * @time 2020/3/16 12:40
 */
public class Trade {
    private Integer trade_id;
    private Company company;
    private Employer employer;
    private Worker worker;
    private Integer trade_jingbanrenid;
    private Timestamp trade_recordtime;
    private Timestamp trade_jiaoyiyouxiaoqi;
    private String trade_state;
    private Integer trade_salary;
    private String trade_hiretype;
    private Integer trade_jieshaofei;
    private Timestamp trade_chengjiaoriqi;

    public Trade() {
    }

    public Trade(Integer trade_id, Company company, Employer employer, Worker worker, Integer trade_jingbanrenid, Timestamp trade_recordtime, Timestamp trade_jiaoyiyouxiaoqi, String trade_state, Integer trade_salary, String trade_hiretype, Integer trade_jieshaofei, Timestamp trade_chengjiaoriqi) {
        this.trade_id = trade_id;
        this.company = company;
        this.employer = employer;
        this.worker = worker;
        this.trade_jingbanrenid = trade_jingbanrenid;
        this.trade_recordtime = trade_recordtime;
        this.trade_jiaoyiyouxiaoqi = trade_jiaoyiyouxiaoqi;
        this.trade_state = trade_state;
        this.trade_salary = trade_salary;
        this.trade_hiretype = trade_hiretype;
        this.trade_jieshaofei = trade_jieshaofei;
        this.trade_chengjiaoriqi = trade_chengjiaoriqi;
    }

    public Integer getTrade_id() {
        return trade_id;
    }

    public void setTrade_id(Integer trade_id) {
        this.trade_id = trade_id;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Employer getEmployer() {
        return employer;
    }

    public void setEmployer(Employer employer) {
        this.employer = employer;
    }

    public Worker getWorker() {
        return worker;
    }

    public void setWorker(Worker worker) {
        this.worker = worker;
    }

    public Integer getTrade_jingbanrenid() {
        return trade_jingbanrenid;
    }

    public void setTrade_jingbanrenid(Integer trade_jingbanrenid) {
        this.trade_jingbanrenid = trade_jingbanrenid;
    }

    public Timestamp getTrade_recordtime() {
        return trade_recordtime;
    }

    public void setTrade_recordtime(Timestamp trade_recordtime) {
        this.trade_recordtime = trade_recordtime;
    }

    public Timestamp getTrade_jiaoyiyouxiaoqi() {
        return trade_jiaoyiyouxiaoqi;
    }

    public void setTrade_jiaoyiyouxiaoqi(Timestamp trade_jiaoyiyouxiaoqi) {
        this.trade_jiaoyiyouxiaoqi = trade_jiaoyiyouxiaoqi;
    }

    public String getTrade_state() {
        return trade_state;
    }

    public void setTrade_state(String trade_state) {
        this.trade_state = trade_state;
    }

    public Integer getTrade_salary() {
        return trade_salary;
    }

    public void setTrade_salary(Integer trade_salary) {
        this.trade_salary = trade_salary;
    }

    public String getTrade_hiretype() {
        return trade_hiretype;
    }

    public void setTrade_hiretype(String trade_hiretype) {
        this.trade_hiretype = trade_hiretype;
    }

    public Integer getTrade_jieshaofei() {
        return trade_jieshaofei;
    }

    public void setTrade_jieshaofei(Integer trade_jieshaofei) {
        this.trade_jieshaofei = trade_jieshaofei;
    }

    public Timestamp getTrade_chengjiaoriqi() {
        return trade_chengjiaoriqi;
    }

    public void setTrade_chengjiaoriqi(Timestamp trade_chengjiaoriqi) {
        this.trade_chengjiaoriqi = trade_chengjiaoriqi;
    }
}
