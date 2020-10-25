package com.domain;

import javax.persistence.Id;

public class Projectbiddingfile {
    @Id
    private Integer id;

    private String filepath;

    private Integer projectbiddingid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public Integer getProjectbiddingid() {
        return projectbiddingid;
    }

    public void setProjectbiddingid(Integer projectbiddingid) {
        this.projectbiddingid = projectbiddingid;
    }
}