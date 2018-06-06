package model;

import java.util.Date;

public class RdYearmonth {
    private Integer id;

    private Integer readyear;

    private Integer readmonth;

    private Integer iscurrent;

    private Integer initempid;

    private Date initdate;

    private Date enddate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getReadyear() {
        return readyear;
    }

    public void setReadyear(Integer readyear) {
        this.readyear = readyear;
    }

    public Integer getReadmonth() {
        return readmonth;
    }

    public void setReadmonth(Integer readmonth) {
        this.readmonth = readmonth;
    }

    public Integer getIscurrent() {
        return iscurrent;
    }

    public void setIscurrent(Integer iscurrent) {
        this.iscurrent = iscurrent;
    }

    public Integer getInitempid() {
        return initempid;
    }

    public void setInitempid(Integer initempid) {
        this.initempid = initempid;
    }

    public Date getInitdate() {
        return initdate;
    }

    public void setInitdate(Date initdate) {
        this.initdate = initdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }
}