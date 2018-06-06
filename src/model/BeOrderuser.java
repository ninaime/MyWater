package model;

public class BeOrderuser {
    private Integer id;

    private String orderno;

    private String username;

    private String phone;

    private String smsphone;

    private String address;

    private Float projectmoney;

    private Float realmoney;

    private String invoiceno;

    private String formula;

    private String contractnum;

    private Integer metertypeid;

    private String metername;

    private Integer maxvalue1;

    private Integer startvalue;

    private String meterfactory;

    private String docnum;

    private String userno;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno == null ? null : orderno.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSmsphone() {
        return smsphone;
    }

    public void setSmsphone(String smsphone) {
        this.smsphone = smsphone == null ? null : smsphone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Float getProjectmoney() {
        return projectmoney;
    }

    public void setProjectmoney(Float projectmoney) {
        this.projectmoney = projectmoney;
    }

    public Float getRealmoney() {
        return realmoney;
    }

    public void setRealmoney(Float realmoney) {
        this.realmoney = realmoney;
    }

    public String getInvoiceno() {
        return invoiceno;
    }

    public void setInvoiceno(String invoiceno) {
        this.invoiceno = invoiceno == null ? null : invoiceno.trim();
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula == null ? null : formula.trim();
    }

    public String getContractnum() {
        return contractnum;
    }

    public void setContractnum(String contractnum) {
        this.contractnum = contractnum == null ? null : contractnum.trim();
    }

    public Integer getMetertypeid() {
        return metertypeid;
    }

    public void setMetertypeid(Integer metertypeid) {
        this.metertypeid = metertypeid;
    }

    public String getMetername() {
        return metername;
    }

    public void setMetername(String metername) {
        this.metername = metername == null ? null : metername.trim();
    }

    public Integer getMaxvalue1() {
        return maxvalue1;
    }

    public void setMaxvalue1(Integer maxvalue1) {
        this.maxvalue1 = maxvalue1;
    }

    public Integer getStartvalue() {
        return startvalue;
    }

    public void setStartvalue(Integer startvalue) {
        this.startvalue = startvalue;
    }

    public String getMeterfactory() {
        return meterfactory;
    }

    public void setMeterfactory(String meterfactory) {
        this.meterfactory = meterfactory == null ? null : meterfactory.trim();
    }

    public String getDocnum() {
        return docnum;
    }

    public void setDocnum(String docnum) {
        this.docnum = docnum == null ? null : docnum.trim();
    }

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
    }
}