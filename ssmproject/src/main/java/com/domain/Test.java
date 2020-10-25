package com.domain;

import javax.persistence.Id;

public class Test {
    @Id
    private Integer id;

    private String n;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getN() {
        return n;
    }

    public void setN(String n) {
        this.n = n;
    }
}