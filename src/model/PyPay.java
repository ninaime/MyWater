package model;

import java.util.Date;

public class PyPay {
    private String payno;

    private String userno;

    private String paytype;

    private Date paydate;

    private String invoice;

    private Float paymoney;

    private Float usemoney;

    private Integer empid;

    public String getPayno() {
        return payno;
    }

    public void setPayno(String payno) {
        this.payno = payno == null ? null : payno.trim();
    }

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
    }

    public String getPaytype() {
        return paytype;
    }

    public void setPaytype(String paytype) {
        this.paytype = paytype == null ? null : paytype.trim();
    }

    public Date getPaydate() {
        return paydate;
    }

    public void setPaydate(Date paydate) {
        this.paydate = paydate;
    }

    public String getInvoice() {
        return invoice;
    }

    public void setInvoice(String invoice) {
        this.invoice = invoice == null ? null : invoice.trim();
    }

    public Float getPaymoney() {
        return paymoney;
    }

    public void setPaymoney(Float paymoney) {
        this.paymoney = paymoney;
    }

    public Float getUsemoney() {
        return usemoney;
    }

    public void setUsemoney(Float usemoney) {
        this.usemoney = usemoney;
    }

    public Integer getEmpid() {
        return empid;
    }

    public void setEmpid(Integer empid) {
        this.empid = empid;
    }
}