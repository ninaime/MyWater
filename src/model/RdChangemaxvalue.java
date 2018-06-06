package model;

import java.util.Date;

public class RdChangemaxvalue {
    private Integer id;

    private Date datee;

    private Integer empid;

    private String userno;

    private String meterno;

    private Integer maxvalue1;

    private Integer maxvalue2;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDatee() {
        return datee;
    }

    public void setDatee(Date datee) {
        this.datee = datee;
    }

    public Integer getEmpid() {
        return empid;
    }

    public void setEmpid(Integer empid) {
        this.empid = empid;
    }

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
    }

    public String getMeterno() {
        return meterno;
    }

    public void setMeterno(String meterno) {
        this.meterno = meterno == null ? null : meterno.trim();
    }

    public Integer getMaxvalue1() {
        return maxvalue1;
    }

    public void setMaxvalue1(Integer maxvalue1) {
        this.maxvalue1 = maxvalue1;
    }

    public Integer getMaxvalue2() {
        return maxvalue2;
    }

    public void setMaxvalue2(Integer maxvalue2) {
        this.maxvalue2 = maxvalue2;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}