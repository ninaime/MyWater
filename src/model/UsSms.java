package model;

import java.util.Date;

public class UsSms {
    private Integer id;

    private Date sendtime;

    private Integer empid;

    private String message;

    private Integer typee;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getSendtime() {
        return sendtime;
    }

    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public Integer getEmpid() {
        return empid;
    }

    public void setEmpid(Integer empid) {
        this.empid = empid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public Integer getTypee() {
        return typee;
    }

    public void setTypee(Integer typee) {
        this.typee = typee;
    }
}