package com.domain;

import javax.persistence.Id;
import javax.persistence.Transient;
import java.util.List;

public class Supplier {
    @Id
    private Integer id;

    private String uname;

    private String pwd;

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    private String suppliername;

    private String tel;

    private String address;

    private Integer money;

    private Integer sign;

    private String bz;

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

    @Transient
    private List<Qualifications> qualificationsList;//一个供应商对应多个资质文件对象

    public List<Qualifications> getQualificationsList() {
        return qualificationsList;
    }

    public void setQualificationsList(List<Qualifications> qualificationsList) {
        this.qualificationsList = qualificationsList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSuppliername() {
        return suppliername;
    }

    public void setSuppliername(String suppliername) {
        this.suppliername = suppliername;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Integer getSign() {
        return sign;
    }

    public void setSign(Integer sign) {
        this.sign = sign;
    }
}