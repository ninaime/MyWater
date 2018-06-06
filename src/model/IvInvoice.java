package model;

import java.util.Date;

public class IvInvoice {
    private String invoiceno;

    private Integer invoicetype;

    private Integer empid;

    private Integer inid;

    private Integer outid;

    private Integer archiveid;

    private Integer used;

    private Date usedate;

    private Integer invalid;

    private Date invaliddate;

    private Integer archived;

    private Date archivedate;

    public String getInvoiceno() {
        return invoiceno;
    }

    public void setInvoiceno(String invoiceno) {
        this.invoiceno = invoiceno == null ? null : invoiceno.trim();
    }

    public Integer getInvoicetype() {
        return invoicetype;
    }

    public void setInvoicetype(Integer invoicetype) {
        this.invoicetype = invoicetype;
    }

    public Integer getEmpid() {
        return empid;
    }

    public void setEmpid(Integer empid) {
        this.empid = empid;
    }

    public Integer getInid() {
        return inid;
    }

    public void setInid(Integer inid) {
        this.inid = inid;
    }

    public Integer getOutid() {
        return outid;
    }

    public void setOutid(Integer outid) {
        this.outid = outid;
    }

    public Integer getArchiveid() {
        return archiveid;
    }

    public void setArchiveid(Integer archiveid) {
        this.archiveid = archiveid;
    }

    public Integer getUsed() {
        return used;
    }

    public void setUsed(Integer used) {
        this.used = used;
    }

    public Date getUsedate() {
        return usedate;
    }

    public void setUsedate(Date usedate) {
        this.usedate = usedate;
    }

    public Integer getInvalid() {
        return invalid;
    }

    public void setInvalid(Integer invalid) {
        this.invalid = invalid;
    }

    public Date getInvaliddate() {
        return invaliddate;
    }

    public void setInvaliddate(Date invaliddate) {
        this.invaliddate = invaliddate;
    }

    public Integer getArchived() {
        return archived;
    }

    public void setArchived(Integer archived) {
        this.archived = archived;
    }

    public Date getArchivedate() {
        return archivedate;
    }

    public void setArchivedate(Date archivedate) {
        this.archivedate = archivedate;
    }
}