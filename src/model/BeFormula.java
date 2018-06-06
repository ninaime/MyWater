package model;

public class BeFormula {
    private Integer id;

    private Integer orderuserid;

    private String watertypecode;

    private String allottext;

    private Integer allottype;

    private Integer allotvalue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderuserid() {
        return orderuserid;
    }

    public void setOrderuserid(Integer orderuserid) {
        this.orderuserid = orderuserid;
    }

    public String getWatertypecode() {
        return watertypecode;
    }

    public void setWatertypecode(String watertypecode) {
        this.watertypecode = watertypecode == null ? null : watertypecode.trim();
    }

    public String getAllottext() {
        return allottext;
    }

    public void setAllottext(String allottext) {
        this.allottext = allottext == null ? null : allottext.trim();
    }

    public Integer getAllottype() {
        return allottype;
    }

    public void setAllottype(Integer allottype) {
        this.allottype = allottype;
    }

    public Integer getAllotvalue() {
        return allotvalue;
    }

    public void setAllotvalue(Integer allotvalue) {
        this.allotvalue = allotvalue;
    }
}