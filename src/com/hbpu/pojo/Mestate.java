package com.hbpu.pojo;

import org.omg.CORBA.INITIALIZE;

/**
 * @author qiaolu
 * @time 2020/3/19 20:34
 */
public class Mestate {
    private Integer mestate_id;
    private Message message;
    private String mestate_sender;
    private String mestate_receiver;
    private String me_state;

    public Mestate() {
    }

    public Integer getMestate_id() {
        return mestate_id;
    }

    public void setMestate_id(Integer mestate_id) {
        this.mestate_id = mestate_id;
    }

    public Message getMessage() {
        return message;
    }

    public void setMessage(Message message) {
        this.message = message;
    }

    public String getMestate_sender() {
        return mestate_sender;
    }

    public void setMestate_sender(String mestate_sender) {
        this.mestate_sender = mestate_sender;
    }

    public String getMestate_receiver() {
        return mestate_receiver;
    }

    public void setMestate_receiver(String mestate_receiver) {
        this.mestate_receiver = mestate_receiver;
    }

    public String getMe_state() {
        return me_state;
    }

    public void setMe_state(String me_state) {
        this.me_state = me_state;
    }

    public Mestate(Integer mestate_id, Message message, String mestate_sender, String mestate_receiver, String me_state) {
        this.mestate_id = mestate_id;
        this.message = message;
        this.mestate_sender = mestate_sender;
        this.mestate_receiver = mestate_receiver;
        this.me_state = me_state;
    }
}
