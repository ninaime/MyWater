package model;

public class SyMetertype {
    private Integer id;

    private String metertypename;

    private Integer aperture;

    private Integer mavvalue;

    private Integer minvalue;

    private Integer life;

    private String remark;

    private Integer disabled;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMetertypename() {
        return metertypename;
    }

    public void setMetertypename(String metertypename) {
        this.metertypename = metertypename == null ? null : metertypename.trim();
    }

    public Integer getAperture() {
        return aperture;
    }

    public void setAperture(Integer aperture) {
        this.aperture = aperture;
    }

    public Integer getMavvalue() {
        return mavvalue;
    }

    public void setMavvalue(Integer mavvalue) {
        this.mavvalue = mavvalue;
    }

    public Integer getMinvalue() {
        return minvalue;
    }

    public void setMinvalue(Integer minvalue) {
        this.minvalue = minvalue;
    }

    public Integer getLife() {
        return life;
    }

    public void setLife(Integer life) {
        this.life = life;
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
}