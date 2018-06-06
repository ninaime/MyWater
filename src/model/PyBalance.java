package model;

import java.util.Date;

public class PyBalance {
    private Integer id;

    private String userno;

    private Date balancedate;

    private Float balancemoney;

    private String billno;

    private Float billrealmoney1;

    private Float billrealmoney2;

    private String payno;

    private Float payusemoney1;

    private Float payusemoney2;

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

    public Date getBalancedate() {
        return balancedate;
    }

    public void setBalancedate(Date balancedate) {
        this.balancedate = balancedate;
    }

    public Float getBalancemoney() {
        return balancemoney;
    }

    public void setBalancemoney(Float balancemoney) {
        this.balancemoney = balancemoney;
    }

    public String getBillno() {
        return billno;
    }

    public void setBillno(String billno) {
        this.billno = billno == null ? null : billno.trim();
    }

    public Float getBillrealmoney1() {
        return billrealmoney1;
    }

    public void setBillrealmoney1(Float billrealmoney1) {
        this.billrealmoney1 = billrealmoney1;
    }

    public Float getBillrealmoney2() {
        return billrealmoney2;
    }

    public void setBillrealmoney2(Float billrealmoney2) {
        this.billrealmoney2 = billrealmoney2;
    }

    public String getPayno() {
        return payno;
    }

    public void setPayno(String payno) {
        this.payno = payno == null ? null : payno.trim();
    }

    public Float getPayusemoney1() {
        return payusemoney1;
    }

    public void setPayusemoney1(Float payusemoney1) {
        this.payusemoney1 = payusemoney1;
    }

    public Float getPayusemoney2() {
        return payusemoney2;
    }

    public void setPayusemoney2(Float payusemoney2) {
        this.payusemoney2 = payusemoney2;
    }
}