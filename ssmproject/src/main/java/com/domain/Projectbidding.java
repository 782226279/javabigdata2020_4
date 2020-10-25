package com.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;
import java.util.List;

public class Projectbidding {
    @Id
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    private Integer owner;

    private String title;

    private String body;

    private String releasetime;

    private String endtime;

    private String ontime;

    private Integer money;

    private String bz;

    private Integer bidwinner;

    @Transient
    private List<Projectbiddingfile> projectbiddingfileList;//一个招标项目对应的多个招标文件对象

    public List<Projectbiddingfile> getProjectbiddingfileList() {
        return projectbiddingfileList;
    }

    public void setProjectbiddingfileList(List<Projectbiddingfile> projectbiddingfileList) {
        this.projectbiddingfileList = projectbiddingfileList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOwner() {
        return owner;
    }

    public void setOwner(Integer owner) {
        this.owner = owner;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getReleasetime() {
        return releasetime;
    }

    public void setReleasetime(String releasetime) {
        this.releasetime = releasetime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public String getOntime() {
        return ontime;
    }

    public void setOntime(String ontime) {
        this.ontime = ontime;
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

    public Integer getBidwinner() {
        return bidwinner;
    }

    public void setBidwinner(Integer bidwinner) {
        this.bidwinner = bidwinner;
    }
}