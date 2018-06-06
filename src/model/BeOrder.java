package model;

import java.util.Date;

public class BeOrder {
    private String orderno;

    private Integer ordertype;

    private Integer stepid;

    private Integer createemp;

    private Date createdate;

    private Integer completeemp;

    private Date completedate;

    private Integer lasteditemp;

    private Date lasteditdate;

    private String username;

    private String usertype;

    private String address;

    private String linkman;

    private String phone;

    private String usetarget;

    private Integer househeight;

    private Integer maxamount;

    private Integer metertypeid;

    private Integer metercount;

    private String userremark;

    private String paytype;

    private String bankcompany;

    private String banknum;

    private String olduserno;

    private String oldusername;

    private String olduserphone;

    private String olduseraddr;

    private String oldmeter;

    private Integer auditempid;

    private String auditmessage;

    private Float projectmoney;

    private Float realmoney;

    private Date paydate;

    private Date projectdate1;

    private Date projectdate2;

    private Integer areaid;

    private String abortcause;

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno == null ? null : orderno.trim();
    }

    public Integer getOrdertype() {
        return ordertype;
    }

    public void setOrdertype(Integer ordertype) {
        this.ordertype = ordertype;
    }

    public Integer getStepid() {
        return stepid;
    }

    public void setStepid(Integer stepid) {
        this.stepid = stepid;
    }

    public Integer getCreateemp() {
        return createemp;
    }

    public void setCreateemp(Integer createemp) {
        this.createemp = createemp;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Integer getCompleteemp() {
        return completeemp;
    }

    public void setCompleteemp(Integer completeemp) {
        this.completeemp = completeemp;
    }

    public Date getCompletedate() {
        return completedate;
    }

    public void setCompletedate(Date completedate) {
        this.completedate = completedate;
    }

    public Integer getLasteditemp() {
        return lasteditemp;
    }

    public void setLasteditemp(Integer lasteditemp) {
        this.lasteditemp = lasteditemp;
    }

    public Date getLasteditdate() {
        return lasteditdate;
    }

    public void setLasteditdate(Date lasteditdate) {
        this.lasteditdate = lasteditdate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype == null ? null : usertype.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman == null ? null : linkman.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getUsetarget() {
        return usetarget;
    }

    public void setUsetarget(String usetarget) {
        this.usetarget = usetarget == null ? null : usetarget.trim();
    }

    public Integer getHouseheight() {
        return househeight;
    }

    public void setHouseheight(Integer househeight) {
        this.househeight = househeight;
    }

    public Integer getMaxamount() {
        return maxamount;
    }

    public void setMaxamount(Integer maxamount) {
        this.maxamount = maxamount;
    }

    public Integer getMetertypeid() {
        return metertypeid;
    }

    public void setMetertypeid(Integer metertypeid) {
        this.metertypeid = metertypeid;
    }

    public Integer getMetercount() {
        return metercount;
    }

    public void setMetercount(Integer metercount) {
        this.metercount = metercount;
    }

    public String getUserremark() {
        return userremark;
    }

    public void setUserremark(String userremark) {
        this.userremark = userremark == null ? null : userremark.trim();
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype == null ? null : paytype.trim();
    }

    public String getBankcompany() {
        return bankcompany;
    }

    public void setBankcompany(String bankcompany) {
        this.bankcompany = bankcompany == null ? null : bankcompany.trim();
    }

    public String getBanknum() {
        return banknum;
    }

    public void setBanknum(String banknum) {
        this.banknum = banknum == null ? null : banknum.trim();
    }

    public String getOlduserno() {
        return olduserno;
    }

    public void setOlduserno(String olduserno) {
        this.olduserno = olduserno == null ? null : olduserno.trim();
    }

    public String getOldusername() {
        return oldusername;
    }

    public void setOldusername(String oldusername) {
        this.oldusername = oldusername == null ? null : oldusername.trim();
    }

    public String getOlduserphone() {
        return olduserphone;
    }

    public void setOlduserphone(String olduserphone) {
        this.olduserphone = olduserphone == null ? null : olduserphone.trim();
    }

    public String getOlduseraddr() {
        return olduseraddr;
    }

    public void setOlduseraddr(String olduseraddr) {
        this.olduseraddr = olduseraddr == null ? null : olduseraddr.trim();
    }

    public String getOldmeter() {
        return oldmeter;
    }

    public void setOldmeter(String oldmeter) {
        this.oldmeter = oldmeter == null ? null : oldmeter.trim();
    }

    public Integer getAuditempid() {
        return auditempid;
    }

    public void setAuditempid(Integer auditempid) {
        this.auditempid = auditempid;
    }

    public String getAuditmessage() {
        return auditmessage;
    }

    public void setAuditmessage(String auditmessage) {
        this.auditmessage = auditmessage == null ? null : auditmessage.trim();
    }

    public Float getProjectmoney() {
        return projectmoney;
    }

    public void setProjectmoney(Float projectmoney) {
        this.projectmoney = projectmoney;
    }

    public Float getRealmoney() {
        return realmoney;
    }

    public void setRealmoney(Float realmoney) {
        this.realmoney = realmoney;
    }

    public Date getPaydate() {
        return paydate;
    }

    public void setPaydate(Date paydate) {
        this.paydate = paydate;
    }

    public Date getProjectdate1() {
        return projectdate1;
    }

    public void setProjectdate1(Date projectdate1) {
        this.projectdate1 = projectdate1;
    }

    public Date getProjectdate2() {
        return projectdate2;
    }

    public void setProjectdate2(Date projectdate2) {
        this.projectdate2 = projectdate2;
    }

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public String getAbortcause() {
        return abortcause;
    }

    public void setAbortcause(String abortcause) {
        this.abortcause = abortcause == null ? null : abortcause.trim();
    }
}