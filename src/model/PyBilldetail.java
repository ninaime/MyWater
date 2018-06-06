package model;

import java.util.Date;

public class PyBilldetail {
    private Integer id;

    private String billno;

    private String userno;

    private String costtypecode;

    private Integer amount;

    private Float price;

    private Float detailmoney;

    private Float realmoney;

    private Integer balance;

    private Date balancedate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBillno() {
        return billno;
    }

    public void setBillno(String billno) {
        this.billno = billno == null ? null : billno.trim();
    }

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
    }

    public String getCosttypecode() {
        return costtypecode;
    }

    public void setCosttypecode(String costtypecode) {
        this.costtypecode = costtypecode == null ? null : costtypecode.trim();
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Float getDetailmoney() {
        return detailmoney;
    }

    public void setDetailmoney(Float detailmoney) {
        this.detailmoney = detailmoney;
    }

    public Float getRealmoney() {
        return realmoney;
    }

    public void setRealmoney(Float realmoney) {
        this.realmoney = realmoney;
    }

    public Integer getBalance() {
        return balance;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }

    public Date getBalancedate() {
        return balancedate;
    }

    public void setBalancedate(Date balancedate) {
        this.balancedate = balancedate;
    }
}