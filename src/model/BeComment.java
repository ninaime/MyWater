package model;

import java.util.Date;

public class BeComment {
    private Integer id;

    private String orderno;

    private Date datee;

    private Integer empid;

    private String commentt;

    private String dateetime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno == null ? null : orderno.trim();
    }

    public Date getDatee() {
        return datee;
    }

    public void setDatee(Date datee) {
        this.datee = datee;
    }

    public Integer getEmpid() {
        return empid;
    }

    public void setEmpid(Integer empid) {
        this.empid = empid;
    }

    public String getCommentt() {
        return commentt;
    }

    public void setCommentt(String commentt) {
        this.commentt = commentt == null ? null : commentt.trim();
    }

    public String getDateetime() {
        return dateetime;
    }

    public void setDateetime(String dateetime) {
        this.dateetime = dateetime == null ? null : dateetime.trim();
    }
}