package model;

import java.util.List;
import java.util.Map;

public class BeOUHCList {
	private String orderNo;
	private List<BeOrderuser> olist;
	private List<Map<String,Object>> hlist;
	private List<Map<String,Object>> clist;
	
	public List<BeOrderuser> getOlist() {
		return olist;
	}
	public void setOlist(List<BeOrderuser> olist) {
		this.olist = olist;
	}
	public List<Map<String, Object>> getHlist() {
		return hlist;
	}
	public void setHlist(List<Map<String, Object>> hlist) {
		this.hlist = hlist;
	}
	public List<Map<String, Object>> getClist() {
		return clist;
	}
	public void setClist(List<Map<String, Object>> clist) {
		this.clist = clist;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
}
