package com.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;
import java.util.List;

public class Bid {
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    private Integer projectbiddingid;

    private Integer supplierid;

    private Integer money;

    private String bz;

    @Transient
    private Supplier supplier;//一个投标对应一个供应商对象

    @Transient
    private List<Bidfile> bidfileList;//一个投标对应的多个投标文件对象

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public List<Bidfile> getBidfileList() {
        return bidfileList;
    }

    public void setBidfileList(List<Bidfile> bidfileList) {
        this.bidfileList = bidfileList;
    }

    public Integer getId() {
        return id;
    }


    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProjectbiddingid() {
        return projectbiddingid;
    }

    public void setProjectbiddingid(Integer projectbiddingid) {
        this.projectbiddingid = projectbiddingid;
    }

    public Integer getSupplierid() {
        return supplierid;
    }

    public void setSupplierid(Integer supplierid) {
        this.supplierid = supplierid;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }
}