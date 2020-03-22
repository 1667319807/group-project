package com.hbpu.pojo;

import java.sql.Timestamp;

/**
 * @author qiaolu
 * @time 2020/3/22 17:20
 */
public class Swipcard {
    private Integer swipcard_id;
    private Company company;
    private Float swip_charge;
    private Timestamp swipcardtime;
    private Integer swip_type;

    public Swipcard() {
    }

    public Integer getSwipcard_id() {
        return swipcard_id;
    }

    public void setSwipcard_id(Integer swipcard_id) {
        this.swipcard_id = swipcard_id;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Float getSwip_charge() {
        return swip_charge;
    }

    public void setSwip_charge(Float swip_charge) {
        this.swip_charge = swip_charge;
    }

    public Timestamp getSwipcardtime() {
        return swipcardtime;
    }

    public void setSwipcardtime(Timestamp swipcardtime) {
        this.swipcardtime = swipcardtime;
    }

    public Integer getSwip_type() {
        return swip_type;
    }

    public void setSwip_type(Integer swip_type) {
        this.swip_type = swip_type;
    }

    public Swipcard(Integer swipcard_id, Company company, Float swip_charge, Timestamp swipcardtime, Integer swip_type) {
        this.swipcard_id = swipcard_id;
        this.company = company;
        this.swip_charge = swip_charge;
        this.swipcardtime = swipcardtime;
        this.swip_type = swip_type;
    }
}
