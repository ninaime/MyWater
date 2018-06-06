package model;

import java.util.Date;

public class PyBalancedetail {
    private Integer id;

    private Integer parentid;

    private String userno;

    private Date balancedate;

    private Float balancemoney;

    private String billno;

    private Integer billdetailid;

    private String costtypecode;

    private Float detailrealmoney1;

    private Float detailrealmoney2;

    private String payno;

    private Float payusemoney1;

    private Float payusemoney2;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
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

    public Integer getBilldetailid() {
        return billdetailid;
    }

    public void setBilldetailid(Integer billdetailid) {
        this.billdetailid = billdetailid;
    }

    public String getCosttypecode() {
        return costtypecode;
    }

    public void setCosttypecode(String costtypecode) {
        this.costtypecode = costtypecode == null ? null : costtypecode.trim();
    }

    public Float getDetailrealmoney1() {
        return detailrealmoney1;
    }

    public void setDetailrealmoney1(Float detailrealmoney1) {
        this.detailrealmoney1 = detailrealmoney1;
    }

    public Float getDetailrealmoney2() {
        return detailrealmoney2;
    }

    public void setDetailrealmoney2(Float detailrealmoney2) {
        this.detailrealmoney2 = detailrealmoney2;
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