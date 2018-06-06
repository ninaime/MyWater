package model;

import java.util.Date;

public class IvIninvoice {
    private Integer id;

    private Integer invoicetype;

    private String startno;

    private String endno;

    private Integer counts;

    private Date indate;

    private Integer inempid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getInvoicetype() {
        return invoicetype;
    }

    public void setInvoicetype(Integer invoicetype) {
        this.invoicetype = invoicetype;
    }

    public String getStartno() {
        return startno;
    }

    public void setStartno(String startno) {
        this.startno = startno == null ? null : startno.trim();
    }

    public String getEndno() {
        return endno;
    }

    public void setEndno(String endno) {
        this.endno = endno == null ? null : endno.trim();
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    public Date getIndate() {
        return indate;
    }

    public void setIndate(Date indate) {
        this.indate = indate;
    }

    public Integer getInempid() {
        return inempid;
    }

    public void setInempid(Integer inempid) {
        this.inempid = inempid;
    }
}