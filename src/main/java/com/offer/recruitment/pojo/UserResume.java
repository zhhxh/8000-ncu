package com.offer.recruitment.pojo;

import java.util.Date;

public class UserResume {
    private Integer id;

    private String name;

    private String email;

    private String phone;

    private String sex;

    private String address;

    private String xueli;

    private String school;

    private String professional;

    private String description;

    private String jobname;

    private Double nowmoney;

    private Double lowmoney;

    private Double highmoney;

    private Integer userid;

    private Date writetime;

    private Integer age;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getXueli() {
        return xueli;
    }

    public void setXueli(String xueli) {
        this.xueli = xueli == null ? null : xueli.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getProfessional() {
        return professional;
    }

    public void setProfessional(String professional) {
        this.professional = professional == null ? null : professional.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getJobname() {
        return jobname;
    }

    public void setJobname(String jobname) {
        this.jobname = jobname == null ? null : jobname.trim();
    }

    public Double getNowmoney() {
        return nowmoney;
    }

    public void setNowmoney(Double nowmoney) {
        this.nowmoney = nowmoney;
    }

    public Double getLowmoney() {
        return lowmoney;
    }

    public void setLowmoney(Double lowmoney) {
        this.lowmoney = lowmoney;
    }

    public Double getHighmoney() {
        return highmoney;
    }

    public void setHighmoney(Double highmoney) {
        this.highmoney = highmoney;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Date getWritetime() {
        return writetime;
    }

    public void setWritetime(Date writetime) {
        this.writetime = writetime;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}