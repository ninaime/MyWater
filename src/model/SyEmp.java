package model;

public class SyEmp {
    private Integer id;

    private String empname;

    private String empno;

    private String pwd;

    private Integer deptid;

    private String remark;

    private Integer disabled;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmpname() {
        return empname;
    }

    public void setEmpname(String empname) {
        this.empname = empname == null ? null : empname.trim();
    }

    public String getEmpno() {
        return empno;
    }

    public void setEmpno(String empno) {
        this.empno = empno == null ? null : empno.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
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
    
    @Override
	public String toString() {
		return "Sy_emp [id=" + id + ", empName=" + empname + ", empNo=" + empno
				+ ", pwd=" + pwd + ", deptId=" + deptid + ", remark=" + remark
				+ ", disabled=" + disabled + "]";
	}
}