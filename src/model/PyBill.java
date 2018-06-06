package model;

import java.util.Date;

public class PyBill {
    private String billno;

    private Integer readid;

    private String userno;

    private Date createdate;

    private Float billmoney;

    private Float realmoney;

    private Integer balance;

    private Date balancedate;

    public String getBillno() {
        return billno;
    }

    public void setBillno(String billno) {
        this.billno = billno == null ? null : billno.trim();
    }

    public Integer getReadid() {
        return readid;
    }

    public void setReadid(Integer readid) {
        this.readid = readid;
    }

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Float getBillmoney() {
        return billmoney;
    }

    public void setBillmoney(Float billmoney) {
        this.billmoney = billmoney;
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