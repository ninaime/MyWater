package model;

import java.util.Date;

public class IvArchive {
    private Integer id;

    private Integer empid;

    private Integer inid;

    private String startno;

    private String endno;

    private Integer counts;

    private Date archivedate;

    private Integer archiveempid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Date getArchivedate() {
        return archivedate;
    }

    public void setArchivedate(Date archivedate) {
        this.archivedate = archivedate;
    }

    public Integer getArchiveempid() {
        return archiveempid;
    }

    public void setArchiveempid(Integer archiveempid) {
        this.archiveempid = archiveempid;
    }
}