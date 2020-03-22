package com.hbpu.pojo;

/**
 * @author qiaolu
 * @time 2020/3/22 9:58
 */
public class Card {
    private Integer card_id;
    private Integer card_count;
    private Integer card_standard;
    private Integer card_money;
    private Integer card_balance;
    private Company company;

    public Card() {
    }

    public Integer getCard_count() {
        return card_count;
    }

    public void setCard_count(Integer card_count) {
        this.card_count = card_count;
    }

    public Integer getCard_id() {
        return card_id;
    }

    public void setCard_id(Integer card_id) {
        this.card_id = card_id;
    }

    public Integer getCard_standard() {
        return card_standard;
    }

    public void setCard_standard(Integer card_standard) {
        this.card_standard = card_standard;
    }

    public Integer getCard_money() {
        return card_money;
    }

    public void setCard_money(Integer card_money) {
        this.card_money = card_money;
    }

    public Integer getCard_balance() {
        return card_balance;
    }

    public void setCard_balance(Integer card_balance) {
        this.card_balance = card_balance;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Card(Integer card_id, Integer card_count, Integer card_standard, Integer card_money, Integer card_balance, Company company) {
        this.card_id = card_id;
        this.card_count = card_count;
        this.card_standard = card_standard;
        this.card_money = card_money;
        this.card_balance = card_balance;
        this.company = company;
    }
}
