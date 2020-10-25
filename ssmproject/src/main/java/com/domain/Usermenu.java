package com.domain;

import javax.persistence.Id;
import javax.persistence.Transient;
import java.util.List;

public class Usermenu {
    @Id
    private Integer id;

    private String menuname;

    private String menuhref;

    private Integer menutop;

    private String menubz;

    public List<Usermenu> getUsermenuList() {
        return usermenuList;
    }

    public void setUsermenuList(List<Usermenu> usermenuList) {
        this.usermenuList = usermenuList;
    }

    @Transient
    private List<Usermenu> usermenuList;//一个一级菜单对应的多个二级菜单对象

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname;
    }

    public String getMenuhref() {
        return menuhref;
    }

    public void setMenuhref(String menuhref) {
        this.menuhref = menuhref;
    }

    public Integer getMenutop() {
        return menutop;
    }

    public void setMenutop(Integer menutop) {
        this.menutop = menutop;
    }

    public String getMenubz() {
        return menubz;
    }

    public void setMenubz(String menubz) {
        this.menubz = menubz;
    }
}