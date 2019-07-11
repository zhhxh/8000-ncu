package com.wys.recruitment.pojo;

import java.util.Date;

public class Myrecruitment {
    private String id;

    private String jobname;

    private Double minwage;

    private Double maxwage;

    private String address;

    private String workexperience;

    private String xueli;

    private String worknature;

    private String jobkey;

    private String attract;

    private String jobduty;

    private String jobrequired;

    private Date publictime;

    private Integer cid;

    private String companyname;

    private String type;

    private Integer number;

    private String position;

    private String remark;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getJobname() {
        return jobname;
    }

    public void setJobname(String jobname) {
        this.jobname = jobname == null ? null : jobname.trim();
    }

    public Double getMinwage() {
        return minwage;
    }

    public void setMinwage(Double minwage) {
        this.minwage = minwage;
    }

    public Double getMaxwage() {
        return maxwage;
    }

    public void setMaxwage(Double maxwage) {
        this.maxwage = maxwage;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getWorkexperience() {
        return workexperience;
    }

    public void setWorkexperience(String workexperience) {
        this.workexperience = workexperience == null ? null : workexperience.trim();
    }

    public String getXueli() {
        return xueli;
    }

    public void setXueli(String xueli) {
        this.xueli = xueli == null ? null : xueli.trim();
    }

    public String getWorknature() {
        return worknature;
    }

    public void setWorknature(String worknature) {
        this.worknature = worknature == null ? null : worknature.trim();
    }

    public String getJobkey() {
        return jobkey;
    }

    public void setJobkey(String jobkey) {
        this.jobkey = jobkey == null ? null : jobkey.trim();
    }

    public String getAttract() {
        return attract;
    }

    public void setAttract(String attract) {
        this.attract = attract == null ? null : attract.trim();
    }

    public String getJobduty() {
        return jobduty;
    }

    public void setJobduty(String jobduty) {
        this.jobduty = jobduty == null ? null : jobduty.trim();
    }

    public String getJobrequired() {
        return jobrequired;
    }

    public void setJobrequired(String jobrequired) {
        this.jobrequired = jobrequired == null ? null : jobrequired.trim();
    }

    public Date getPublictime() {
        return publictime;
    }

    public void setPublictime(Date publictime) {
        this.publictime = publictime;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}