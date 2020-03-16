package com.hbpu.pojo;

import java.io.PipedReader;

/**
 * @author qiaolu
 * @time 2020/3/16 11:35
 */
public class Company {
    private Integer company_id;
    private String company_account;
    private String company_name;
    private String company_info;

    public Company() {
    }

    public Company(Integer company_id, String company_account, String company_name, String company_info) {
        this.company_id = company_id;
        this.company_account = company_account;
        this.company_name = company_name;
        this.company_info = company_info;
    }

    public Integer getCompany_id() {
        return company_id;
    }

    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }

    public String getCompany_account() {
        return company_account;
    }

    public void setCompany_account(String company_account) {
        this.company_account = company_account;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getCompany_info() {
        return company_info;
    }

    public void setCompany_info(String company_info) {
        this.company_info = company_info;
    }
}
