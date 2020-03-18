package com.hbpu.pojo;

import java.sql.Timestamp;

/**
 * @author qiaolu
 * @time 2020/3/16 11:34
 */
public class Employer {
    private Integer employer_id;
    private Company company;
    private String employer_name;
    private String employer_sex;
    private Integer employer_age;
    private String employer_minzu;
    private String employer_jiguan;
    private String employer_education;
    private String employer_idcard;
    private String employer_zhiye;
    private String employer_workplace;
    private String employer_hetonghao;
    private Timestamp employer_hetongqixian;
    private String employer_shouji;
    private String employer_phone;
    private String employer_zhuzhai;
    private String employer_hukouaddr;
    private String employer_serveraddr;
    private String employer_jiatingaddr;
    private String employer_jiatingrenshu;
    private String employer_hirerequire;
    private String employer_jiatingserver;
    private String employer_jiatingfangwumianji;
    private String employer_jiatingyinshi;
    private String employer_jiatingqita;
    private Integer employer_jingbanren;
    private Timestamp employer_recordtime;
    private Float employer_highsalary;
    private Float employer_lowsalary;
    private Timestamp employer_birthdate;
    private Trade trade;

    public Employer() {
    }

    public Employer(Integer employer_id, Company company, String employer_name, String employer_sex, Integer employer_age, String employer_minzu, String employer_jiguan, String employer_education, String employer_idcard, String employer_zhiye, String employer_workplace, String employer_hetonghao, Timestamp employer_hetongqixian, String employer_shouji, String employer_phone, String employer_zhuzhai, String employer_hukouaddr, String employer_serveraddr, String employer_jiatingaddr, String employer_jiatingrenshu, String employer_hirerequire, String employer_jiatingserver, String employer_jiatingfangwumianji, String employer_jiatingyinshi, String employer_jiatingqita, Integer employer_jingbanren, Timestamp employer_recordtime, Float employer_highsalary, Float employer_lowsalary, Timestamp employer_birthdate, Trade trade) {
        this.employer_id = employer_id;
        this.company = company;
        this.employer_name = employer_name;
        this.employer_sex = employer_sex;
        this.employer_age = employer_age;
        this.employer_minzu = employer_minzu;
        this.employer_jiguan = employer_jiguan;
        this.employer_education = employer_education;
        this.employer_idcard = employer_idcard;
        this.employer_zhiye = employer_zhiye;
        this.employer_workplace = employer_workplace;
        this.employer_hetonghao = employer_hetonghao;
        this.employer_hetongqixian = employer_hetongqixian;
        this.employer_shouji = employer_shouji;
        this.employer_phone = employer_phone;
        this.employer_zhuzhai = employer_zhuzhai;
        this.employer_hukouaddr = employer_hukouaddr;
        this.employer_serveraddr = employer_serveraddr;
        this.employer_jiatingaddr = employer_jiatingaddr;
        this.employer_jiatingrenshu = employer_jiatingrenshu;
        this.employer_hirerequire = employer_hirerequire;
        this.employer_jiatingserver = employer_jiatingserver;
        this.employer_jiatingfangwumianji = employer_jiatingfangwumianji;
        this.employer_jiatingyinshi = employer_jiatingyinshi;
        this.employer_jiatingqita = employer_jiatingqita;
        this.employer_jingbanren = employer_jingbanren;
        this.employer_recordtime = employer_recordtime;
        this.employer_highsalary = employer_highsalary;
        this.employer_lowsalary = employer_lowsalary;
        this.employer_birthdate = employer_birthdate;
        this.trade = trade;
    }

    public String getEmployer_zhuzhai() {
        return employer_zhuzhai;
    }

    public void setEmployer_zhuzhai(String employer_zhuzhai) {
        this.employer_zhuzhai = employer_zhuzhai;
    }

    public Trade getTrade() {
        return trade;
    }

    public void setTrade(Trade trade) {
        this.trade = trade;
    }

    public Integer getEmployer_id() {
        return employer_id;
    }

    public void setEmployer_id(Integer employer_id) {
        this.employer_id = employer_id;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public String getEmployer_name() {
        return employer_name;
    }

    public void setEmployer_name(String employer_name) {
        this.employer_name = employer_name;
    }

    public String getEmployer_sex() {
        return employer_sex;
    }

    public void setEmployer_sex(String employer_sex) {
        this.employer_sex = employer_sex;
    }

    public Integer getEmployer_age() {
        return employer_age;
    }

    public void setEmployer_age(Integer employer_age) {
        this.employer_age = employer_age;
    }

    public String getEmployer_minzu() {
        return employer_minzu;
    }

    public void setEmployer_minzu(String employer_minzu) {
        this.employer_minzu = employer_minzu;
    }

    public String getEmployer_jiguan() {
        return employer_jiguan;
    }

    public void setEmployer_jiguan(String employer_jiguan) {
        this.employer_jiguan = employer_jiguan;
    }

    public String getEmployer_education() {
        return employer_education;
    }

    public void setEmployer_education(String employer_education) {
        this.employer_education = employer_education;
    }

    public String getEmployer_idcard() {
        return employer_idcard;
    }

    public void setEmployer_idcard(String employer_idcard) {
        this.employer_idcard = employer_idcard;
    }

    public String getEmployer_zhiye() {
        return employer_zhiye;
    }

    public void setEmployer_zhiye(String employer_zhiye) {
        this.employer_zhiye = employer_zhiye;
    }

    public String getEmployer_workplace() {
        return employer_workplace;
    }

    public void setEmployer_workplace(String employer_workplace) {
        this.employer_workplace = employer_workplace;
    }

    public String getEmployer_hetonghao() {
        return employer_hetonghao;
    }

    public void setEmployer_hetonghao(String employer_hetonghao) {
        this.employer_hetonghao = employer_hetonghao;
    }

    public Timestamp getEmployer_hetongqixian() {
        return employer_hetongqixian;
    }

    public void setEmployer_hetongqixian(Timestamp employer_hetongqixian) {
        this.employer_hetongqixian = employer_hetongqixian;
    }

    public String getEmployer_shouji() {
        return employer_shouji;
    }

    public void setEmployer_shouji(String employer_shouji) {
        this.employer_shouji = employer_shouji;
    }

    public String getEmployer_phone() {
        return employer_phone;
    }

    public void setEmployer_phone(String employer_phone) {
        this.employer_phone = employer_phone;
    }

    public String getEmployer_hukouaddr() {
        return employer_hukouaddr;
    }

    public void setEmployer_hukouaddr(String employer_hukouaddr) {
        this.employer_hukouaddr = employer_hukouaddr;
    }

    public String getEmployer_serveraddr() {
        return employer_serveraddr;
    }

    public void setEmployer_serveraddr(String employer_serveraddr) {
        this.employer_serveraddr = employer_serveraddr;
    }

    public String getEmployer_jiatingaddr() {
        return employer_jiatingaddr;
    }

    public void setEmployer_jiatingaddr(String employer_jiatingaddr) {
        this.employer_jiatingaddr = employer_jiatingaddr;
    }

    public String getEmployer_jiatingrenshu() {
        return employer_jiatingrenshu;
    }

    public void setEmployer_jiatingrenshu(String employer_jiatingrenshu) {
        this.employer_jiatingrenshu = employer_jiatingrenshu;
    }

    public String getEmployer_hirerequire() {
        return employer_hirerequire;
    }

    public void setEmployer_hirerequire(String employer_hirerequire) {
        this.employer_hirerequire = employer_hirerequire;
    }

    public String getEmployer_jiatingserver() {
        return employer_jiatingserver;
    }

    public void setEmployer_jiatingserver(String employer_jiatingserver) {
        this.employer_jiatingserver = employer_jiatingserver;
    }

    public String getEmployer_jiatingfangwumianji() {
        return employer_jiatingfangwumianji;
    }

    public void setEmployer_jiatingfangwumianji(String employer_jiatingfangwumianji) {
        this.employer_jiatingfangwumianji = employer_jiatingfangwumianji;
    }

    public String getEmployer_jiatingyinshi() {
        return employer_jiatingyinshi;
    }

    public void setEmployer_jiatingyinshi(String employer_jiatingyinshi) {
        this.employer_jiatingyinshi = employer_jiatingyinshi;
    }

    public String getEmployer_jiatingqita() {
        return employer_jiatingqita;
    }

    public void setEmployer_jiatingqita(String employer_jiatingqita) {
        this.employer_jiatingqita = employer_jiatingqita;
    }

    public Integer getEmployer_jingbanren() {
        return employer_jingbanren;
    }

    public void setEmployer_jingbanren(Integer employer_jingbanren) {
        this.employer_jingbanren = employer_jingbanren;
    }

    public Timestamp getEmployer_recordtime() {
        return employer_recordtime;
    }

    public void setEmployer_recordtime(Timestamp employer_recordtime) {
        this.employer_recordtime = employer_recordtime;
    }

    public Float getEmployer_highsalary() {
        return employer_highsalary;
    }

    public void setEmployer_highsalary(Float employer_highsalary) {
        this.employer_highsalary = employer_highsalary;
    }

    public Float getEmployer_lowsalary() {
        return employer_lowsalary;
    }

    public void setEmployer_lowsalary(Float employer_lowsalary) {
        this.employer_lowsalary = employer_lowsalary;
    }

    public Timestamp getEmployer_birthdate() {
        return employer_birthdate;
    }

    public void setEmployer_birthdate(Timestamp employer_birthdate) {
        this.employer_birthdate = employer_birthdate;
    }
}
