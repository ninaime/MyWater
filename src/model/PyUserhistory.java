package model;

import java.util.Date;

public class PyUserhistory {
    private Integer id;

    private String userno;

    private Integer typee;

    private String orderno;

    private Date datee;

    private Integer prevalue;

    private Integer curvalue;

    private Integer amount;

    private Float billmoney;

    private Float paymoney;

    private Float usermoney;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
    }

    public Integer getTypee() {
        return typee;
    }

    public void setTypee(Integer typee) {
        this.typee = typee;
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

    public Integer getPrevalue() {
        return prevalue;
    }

    public void setPrevalue(Integer prevalue) {
        this.prevalue = prevalue;
    }

    public Integer getCurvalue() {
        return curvalue;
    }

    public void setCurvalue(Integer curvalue) {
        this.curvalue = curvalue;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Float getBillmoney() {
        return billmoney;
    }

    public void setBillmoney(Float billmoney) {
        this.billmoney = billmoney;
    }

    public Float getPaymoney() {
        return paymoney;
    }

    public void setPaymoney(Float paymoney) {
        this.paymoney = paymoney;
    }

    public Float getUsermoney() {
        return usermoney;
    }

    public void setUsermoney(Float usermoney) {
        this.usermoney = usermoney;
    }
}