package com.offer.recruitment.pojo;

import java.util.Date;

public class Workexperience {
    private Integer id;

    private String companyname;

    private String duty;

    private Integer startyear;

    private Integer endyear;

    private Integer startmonth;

    private Integer endmonth;

    private String type;

    private String nature;

    private String position;

    private String department;

    private Date writetime;

    private String state;

    private Integer uid;

    private Integer weight;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty == null ? null : duty.trim();
    }

    public Integer getStartyear() {
        return startyear;
    }

    public void setStartyear(Integer startyear) {
        this.startyear = startyear;
    }

    public Integer getEndyear() {
        return endyear;
    }

    public void setEndyear(Integer endyear) {
        this.endyear = endyear;
    }

    public Integer getStartmonth() {
        return startmonth;
    }

    public void setStartmonth(Integer startmonth) {
        this.startmonth = startmonth;
    }

    public Integer getEndmonth() {
        return endmonth;
    }

    public void setEndmonth(Integer endmonth) {
        this.endmonth = endmonth;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getNature() {
        return nature;
    }

    public void setNature(String nature) {
        this.nature = nature == null ? null : nature.trim();
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public Date getWritetime() {
        return writetime;
    }

    public void setWritetime(Date writetime) {
        this.writetime = writetime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }
}