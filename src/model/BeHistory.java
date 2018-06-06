package model;

import java.util.Date;

public class BeHistory {
    private Integer id;

    private String orderno;

    private Integer stepid;

    private Date datee;

    private Integer empid;

    private Integer isback;

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

    public Integer getStepid() {
        return stepid;
    }

    public void setStepid(Integer stepid) {
        this.stepid = stepid;
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

    public Integer getIsback() {
        return isback;
    }

    public void setIsback(Integer isback) {
        this.isback = isback;
    }

    public String getDateetime() {
        return dateetime;
    }

    public void setDateetime(String dateetime) {
        this.dateetime = dateetime == null ? null : dateetime.trim();
    }
}