package model;

import java.util.Date;

public class BeApply {
	private String id;
	private String orderno;
	private Integer ordertype;
	private Integer stepid;
	private Date   lasteditdate;
	private String username;
	private String deptname;
	private String stepname;
	private String ordername;
	private String time;
	
	// select orderType type,stepId step,count(orderType) typeCount 
	private Integer type;//orderType 类型 
	private Integer step;//stepId  步骤
	private Integer typecount;
	private Integer stepcount;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public Integer getOrdertype() {
		return ordertype;
	}
	public void setOrdertype(Integer ordertype) {
		this.ordertype = ordertype;
	}
	public Integer getStepid() {
		return stepid;
	}
	public void setStepid(Integer stepid) {
		this.stepid = stepid;
	}
	public Date getLasteditdate() {
		return lasteditdate;
	}
	public void setLasteditdate(Date lasteditdate) {
		this.lasteditdate = lasteditdate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getStepname() {
		return stepname;
	}
	public void setStepname(String stepname) {
		this.stepname = stepname;
	}
	public String getOrdername() {
		return ordername;
	}
	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getStep() {
		return step;
	}
	public void setStep(Integer step) {
		this.step = step;
	}
	public Integer getTypecount() {
		return typecount;
	}
	public void setTypecount(Integer typecount) {
		this.typecount = typecount;
	}
	public Integer getStepcount() {
		return stepcount;
	}
	public void setStepcount(Integer stepcount) {
		this.stepcount = stepcount;
	}
	
	
	
	
}
