package model;

import java.util.Date;

public class UsUser {
    private String userno;

    private String username;

    private String abc;

    private Date createdate;

    private String address;

    private String phone;

    private String smsphone;

    private Integer areaid;

    private String usertype;

    private String paytype;

    private String bankname;

    private String banknum;

    private String formula;

    private Float usermoney;

    private Integer meterid;

    private String docnum;

    private String pwd;

    private String contractnum;

    private Date contractdate;

    private Integer volumeid;

    private Integer volumeorderindex;

    private Integer disabled;

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getAbc() {
        return abc;
    }

    public void setAbc(String abc) {
        this.abc = abc == null ? null : abc.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSmsphone() {
        return smsphone;
    }

    public void setSmsphone(String smsphone) {
        this.smsphone = smsphone == null ? null : smsphone.trim();
    }

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype == null ? null : usertype.trim();
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype == null ? null : paytype.trim();
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname == null ? null : bankname.trim();
    }

    public String getBanknum() {
        return banknum;
    }

    public void setBanknum(String banknum) {
        this.banknum = banknum == null ? null : banknum.trim();
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula == null ? null : formula.trim();
    }

    public Float getUsermoney() {
        return usermoney;
    }

    public void setUsermoney(Float usermoney) {
        this.usermoney = usermoney;
    }

    public Integer getMeterid() {
        return meterid;
    }

    public void setMeterid(Integer meterid) {
        this.meterid = meterid;
    }

    public String getDocnum() {
        return docnum;
    }

    public void setDocnum(String docnum) {
        this.docnum = docnum == null ? null : docnum.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public String getContractnum() {
        return contractnum;
    }

    public void setContractnum(String contractnum) {
        this.contractnum = contractnum == null ? null : contractnum.trim();
    }

    public Date getContractdate() {
        return contractdate;
    }

    public void setContractdate(Date contractdate) {
        this.contractdate = contractdate;
    }

    public Integer getVolumeid() {
        return volumeid;
    }

    public void setVolumeid(Integer volumeid) {
        this.volumeid = volumeid;
    }

    public Integer getVolumeorderindex() {
        return volumeorderindex;
    }

    public void setVolumeorderindex(Integer volumeorderindex) {
        this.volumeorderindex = volumeorderindex;
    }

    public Integer getDisabled() {
        return disabled;
    }

    public void setDisabled(Integer disabled) {
        this.disabled = disabled;
    }
}