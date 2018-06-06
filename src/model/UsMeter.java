package model;

import java.util.Date;

public class UsMeter {
    private String meterno;

    private String userno;

    private String metername;

    private Integer metertypeid;

    private Integer maxvalue1;

    private Integer startvalue;

    private Date setupdate;

    private String factory;

    private Integer disabled;

    public String getMeterno() {
        return meterno;
    }

    public void setMeterno(String meterno) {
        this.meterno = meterno == null ? null : meterno.trim();
    }

    public String getUserno() {
        return userno;
    }

    public void setUserno(String userno) {
        this.userno = userno == null ? null : userno.trim();
    }

    public String getMetername() {
        return metername;
    }

    public void setMetername(String metername) {
        this.metername = metername == null ? null : metername.trim();
    }

    public Integer getMetertypeid() {
        return metertypeid;
    }

    public void setMetertypeid(Integer metertypeid) {
        this.metertypeid = metertypeid;
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

    public Date getSetupdate() {
        return setupdate;
    }

    public void setSetupdate(Date setupdate) {
        this.setupdate = setupdate;
    }

    public String getFactory() {
        return factory;
    }

    public void setFactory(String factory) {
        this.factory = factory == null ? null : factory.trim();
    }

    public Integer getDisabled() {
        return disabled;
    }

    public void setDisabled(Integer disabled) {
        this.disabled = disabled;
    }
}