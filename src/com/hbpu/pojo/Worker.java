package com.hbpu.pojo;

import org.omg.CORBA.INITIALIZE;
import org.omg.CORBA.TIMEOUT;

import java.sql.Timestamp;

/**
 * @author qiaolu
 * @time 2020/3/14 15:19
 */
public class Worker {
    private Integer worker_id;
    private Integer company_id;
    private String worker_name;
    private Character worker_sex;
    private String worker_idcard;
    private Timestamp birthday;
    private Integer [] worker_age;
    private Integer worker_high;
    private String worker_shouji;
    private String worker_phone;
    private String worker_gongzhong;
    private Timestamp worker_worktime;
    private String worker_quedian;
    private String worker_photo;
    private String worker_hujiaddr;
    private String worker_xianaddr;
    private String worker_banknumber;
    private String worker_baoxiannumber;
    private String worker_language;
    private String worker_state;
    private String worker_marriagestate;
    private String worker_licensestate;
    private String worker_healthcond;
    private Timestamp worker_healthtime;
    private String worker_personskill;
    private String worker_introduce;
    private String worker_salaryrequire;
    private String worker_timerequire;
    private String worker_zhusu;
    private String worker_canyin;
    private Timestamp worker_recordtime;
    private Integer worker_company;

    public Worker() {
    }

    public Worker(Integer worker_id, Integer company_id, String worker_name, Character worker_sex, String worker_idcard, Timestamp birthday, Integer[] worker_age, Integer worker_high, String worker_shouji, String worker_phone, String worker_gongzhong, Timestamp worker_worktime, String worker_quedian, String worker_photo, String worker_hujiaddr, String worker_xianaddr, String worker_banknumber, String worker_baoxiannumber, String worker_language, String worker_state, String worker_marriagestate, String worker_licensestate, String worker_healthcond, Timestamp worker_healthtime, String worker_personskill, String worker_introduce, String worker_salaryrequire, String worker_timerequire, String worker_zhusu, String worker_canyin, Timestamp worker_recordtime, Integer worker_company) {
        this.worker_id = worker_id;
        this.company_id = company_id;
        this.worker_name = worker_name;
        this.worker_sex = worker_sex;
        this.worker_idcard = worker_idcard;
        this.birthday = birthday;
        this.worker_age = worker_age;
        this.worker_high = worker_high;
        this.worker_shouji = worker_shouji;
        this.worker_phone = worker_phone;
        this.worker_gongzhong = worker_gongzhong;
        this.worker_worktime = worker_worktime;
        this.worker_quedian = worker_quedian;
        this.worker_photo = worker_photo;
        this.worker_hujiaddr = worker_hujiaddr;
        this.worker_xianaddr = worker_xianaddr;
        this.worker_banknumber = worker_banknumber;
        this.worker_baoxiannumber = worker_baoxiannumber;
        this.worker_language = worker_language;
        this.worker_state = worker_state;
        this.worker_marriagestate = worker_marriagestate;
        this.worker_licensestate = worker_licensestate;
        this.worker_healthcond = worker_healthcond;
        this.worker_healthtime = worker_healthtime;
        this.worker_personskill = worker_personskill;
        this.worker_introduce = worker_introduce;
        this.worker_salaryrequire = worker_salaryrequire;
        this.worker_timerequire = worker_timerequire;
        this.worker_zhusu = worker_zhusu;
        this.worker_canyin = worker_canyin;
        this.worker_recordtime = worker_recordtime;
        this.worker_company = worker_company;
    }

    public Integer getWorker_id() {
        return worker_id;
    }

    public void setWorker_id(Integer worker_id) {
        this.worker_id = worker_id;
    }

    public Integer getCompany_id() {
        return company_id;
    }

    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }

    public String getWorker_name() {
        return worker_name;
    }

    public void setWorker_name(String worker_name) {
        this.worker_name = worker_name;
    }

    public Character getWorker_sex() {
        return worker_sex;
    }

    public void setWorker_sex(Character worker_sex) {
        this.worker_sex = worker_sex;
    }

    public String getWorker_idcard() {
        return worker_idcard;
    }

    public void setWorker_idcard(String worker_idcard) {
        this.worker_idcard = worker_idcard;
    }

    public Timestamp getBirthday() {
        return birthday;
    }

    public void setBirthday(Timestamp birthday) {
        this.birthday = birthday;
    }

    public Integer[] getWorker_age() {
        return worker_age;
    }

    public void setWorker_age(Integer[] worker_age) {
        this.worker_age = worker_age;
    }

    public Integer getWorker_high() {
        return worker_high;
    }

    public void setWorker_high(Integer worker_high) {
        this.worker_high = worker_high;
    }

    public String getWorker_shouji() {
        return worker_shouji;
    }

    public void setWorker_shouji(String worker_shouji) {
        this.worker_shouji = worker_shouji;
    }

    public String getWorker_phone() {
        return worker_phone;
    }

    public void setWorker_phone(String worker_phone) {
        this.worker_phone = worker_phone;
    }

    public String getWorker_gongzhong() {
        return worker_gongzhong;
    }

    public void setWorker_gongzhong(String worker_gongzhong) {
        this.worker_gongzhong = worker_gongzhong;
    }

    public Timestamp getWorker_worktime() {
        return worker_worktime;
    }

    public void setWorker_worktime(Timestamp worker_worktime) {
        this.worker_worktime = worker_worktime;
    }

    public String getWorker_quedian() {
        return worker_quedian;
    }

    public void setWorker_quedian(String worker_quedian) {
        this.worker_quedian = worker_quedian;
    }


    public String getWorker_photo() {
        return worker_photo;
    }

    public void setWorker_photo(String worker_photo) {
        this.worker_photo = worker_photo;
    }

    public String getWorker_hujiaddr() {
        return worker_hujiaddr;
    }

    public void setWorker_hujiaddr(String worker_hujiaddr) {
        this.worker_hujiaddr = worker_hujiaddr;
    }

    public String getWorker_xianaddr() {
        return worker_xianaddr;
    }

    public void setWorker_xianaddr(String worker_xianaddr) {
        this.worker_xianaddr = worker_xianaddr;
    }

    public String getWorker_banknumber() {
        return worker_banknumber;
    }

    public void setWorker_banknumber(String worker_banknumber) {
        this.worker_banknumber = worker_banknumber;
    }

    public String getWorker_baoxiannumber() {
        return worker_baoxiannumber;
    }

    public void setWorker_baoxiannumber(String worker_baoxiannumber) {
        this.worker_baoxiannumber = worker_baoxiannumber;
    }

    public String getWorker_language() {
        return worker_language;
    }

    public void setWorker_language(String worker_language) {
        this.worker_language = worker_language;
    }

    public String getWorker_state() {
        return worker_state;
    }

    public void setWorker_state(String worker_state) {
        this.worker_state = worker_state;
    }

    public String getWorker_marriagestate() {
        return worker_marriagestate;
    }

    public void setWorker_marriagestate(String worker_marriagestate) {
        this.worker_marriagestate = worker_marriagestate;
    }

    public String getWorker_licensestate() {
        return worker_licensestate;
    }

    public void setWorker_licensestate(String worker_licensestate) {
        this.worker_licensestate = worker_licensestate;
    }

    public String getWorker_healthcond() {
        return worker_healthcond;
    }

    public void setWorker_healthcond(String worker_healthcond) {
        this.worker_healthcond = worker_healthcond;
    }

    public Timestamp getWorker_healthtime() {
        return worker_healthtime;
    }

    public void setWorker_healthtime(Timestamp worker_healthtime) {
        this.worker_healthtime = worker_healthtime;
    }

    public String getWorker_personskill() {
        return worker_personskill;
    }

    public void setWorker_personskill(String worker_personskill) {
        this.worker_personskill = worker_personskill;
    }

    public String getWorker_introduce() {
        return worker_introduce;
    }

    public void setWorker_introduce(String worker_introduce) {
        this.worker_introduce = worker_introduce;
    }

    public String getWorker_salaryrequire() {
        return worker_salaryrequire;
    }

    public void setWorker_salaryrequire(String worker_salaryrequire) {
        this.worker_salaryrequire = worker_salaryrequire;
    }

    public String getWorker_timerequire() {
        return worker_timerequire;
    }

    public void setWorker_timerequire(String worker_timerequire) {
        this.worker_timerequire = worker_timerequire;
    }

    public String getWorker_zhusu() {
        return worker_zhusu;
    }

    public void setWorker_zhusu(String worker_zhusu) {
        this.worker_zhusu = worker_zhusu;
    }

    public String getWorker_canyin() {
        return worker_canyin;
    }

    public void setWorker_canyin(String worker_canyin) {
        this.worker_canyin = worker_canyin;
    }

    public Timestamp getWorker_recordtime() {
        return worker_recordtime;
    }

    public void setWorker_recordtime(Timestamp worker_recordtime) {
        this.worker_recordtime = worker_recordtime;
    }

    public Integer getWorker_company() {
        return worker_company;
    }

    public void setWorker_company(Integer worker_company) {
        this.worker_company = worker_company;
    }

}
