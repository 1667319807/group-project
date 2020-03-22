package com.hbpu.pojo;

import com.hbpu.pojo.Card;
import com.hbpu.pojo.Company;

import java.sql.Timestamp;

/**
 * @author qiaolu
 * @time 2020/3/21 22:35
 */
public class Recharge {
    private Integer recharge_id;
    private Company company;
    private Card card;
    private Integer charge_money;
    private Integer operator_id;
    private Timestamp charge_date;
    private String remark;

    public Recharge() {
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }

    public Integer getRecharge_id() {
        return recharge_id;
    }

    public void setRecharge_id(Integer recharge_id) {
        this.recharge_id = recharge_id;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Integer getCharge_money() {
        return charge_money;
    }

    public void setCharge_money(Integer charge_money) {
        this.charge_money = charge_money;
    }

    public Integer getOperator_id() {
        return operator_id;
    }

    public void setOperator_id(Integer operator_id) {
        this.operator_id = operator_id;
    }

    public Timestamp getCharge_date() {
        return charge_date;
    }

    public void setCharge_date(Timestamp charge_date) {
        this.charge_date = charge_date;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Recharge(Integer recharge_id, Company company, Card card, Integer charge_money, Integer operator_id, Timestamp charge_date, String remark) {
        this.recharge_id = recharge_id;
        this.company = company;
        this.card = card;
        this.charge_money = charge_money;
        this.operator_id = operator_id;
        this.charge_date = charge_date;
        this.remark = remark;
    }
}
