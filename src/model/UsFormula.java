package model;

public class UsFormula {
    private Integer id;

    private String userno;

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

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
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