package com.hbpu.service;

import com.hbpu.pojo.Mestate;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/19 20:46
 */
public interface MestateService{
    List<Mestate> getAllMessages();
    List<Mestate> getAllMessagesWithCond(String sender,String state);
}
