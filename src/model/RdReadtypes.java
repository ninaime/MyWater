package model;

public class RdReadtypes {
    private Integer id;

    private Integer readid;

    private String userno;

    private String watertypecode;

    private String allottext;

    private Integer amount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}