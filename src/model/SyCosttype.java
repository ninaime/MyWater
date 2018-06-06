package model;

public class SyCosttype {
    private Integer id;

    private Integer kind;

    private String code;

    private String costtypename;

    private String fullname;

    private Float price;

    private String surchargetext;

    private String remark;

    private Integer disabled;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getKind() {
        return kind;
    }

    public void setKind(Integer kind) {
        this.kind = kind;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public String getCosttypename() {
        return costtypename;
    }

    public void setCosttypename(String costtypename) {
        this.costtypename = costtypename == null ? null : costtypename.trim();
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname == null ? null : fullname.trim();
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getSurchargetext() {
        return surchargetext;
    }

    public void setSurchargetext(String surchargetext) {
        this.surchargetext = surchargetext == null ? null : surchargetext.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getDisabled() {
        return disabled;
    }

    public void setDisabled(Integer disabled) {
        this.disabled = disabled;
    }
}