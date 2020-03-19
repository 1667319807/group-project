package com.hbpu.pojo;

import java.sql.Timestamp;

/**
 * @author qiaolu
 * @time 2020/3/19 20:32
 */
public class Message {
    private Integer message_id;
    private String message_topical;
    private String message_content;
    private Timestamp message_time;

    public Message() {
    }

    public Integer getMessage_id() {
        return message_id;
    }

    public void setMessage_id(Integer message_id) {
        this.message_id = message_id;
    }

    public String getMessage_topical() {
        return message_topical;
    }

    public void setMessage_topical(String message_topical) {
        this.message_topical = message_topical;
    }

    public String getMessage_content() {
        return message_content;
    }

    public void setMessage_content(String message_content) {
        this.message_content = message_content;
    }

    public Timestamp getMessage_time() {
        return message_time;
    }

    public void setMessage_time(Timestamp message_time) {
        this.message_time = message_time;
    }

    public Message(Integer message_id, String message_topical, String message_content, Timestamp message_time) {
        this.message_id = message_id;
        this.message_topical = message_topical;
        this.message_content = message_content;
        this.message_time = message_time;
    }
}
