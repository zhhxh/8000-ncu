package com.offer.recruitment.pojo;

import java.util.Date;

public class Company {
    private Integer id;

    private String companyname;

    private String simplename;

    private String industry;

    private Integer minpeople;

    private Integer maxpeople;

    private String companyurl;

    private String companyimage;

    private String development;

    private String province;

    private String city;

    private String area;

    private String address;

    private String logo;

    private String isallow;

    private Integer releasednumber;

    private Date registertime;

    private Double money;

    private String remark;

    private Integer uid;

    private String product;

    private String jianjie;

    private String idcardimage;

    private String description;

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

    public String getSimplename() {
        return simplename;
    }

    public void setSimplename(String simplename) {
        this.simplename = simplename == null ? null : simplename.trim();
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry == null ? null : industry.trim();
    }

    public Integer getMinpeople() {
        return minpeople;
    }

    public void setMinpeople(Integer minpeople) {
        this.minpeople = minpeople;
    }

    public Integer getMaxpeople() {
        return maxpeople;
    }

    public void setMaxpeople(Integer maxpeople) {
        this.maxpeople = maxpeople;
    }

    public String getCompanyurl() {
        return companyurl;
    }

    public void setCompanyurl(String companyurl) {
        this.companyurl = companyurl == null ? null : companyurl.trim();
    }

    public String getCompanyimage() {
        return companyimage;
    }

    public void setCompanyimage(String companyimage) {
        this.companyimage = companyimage == null ? null : companyimage.trim();
    }

    public String getDevelopment() {
        return development;
    }

    public void setDevelopment(String development) {
        this.development = development == null ? null : development.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo == null ? null : logo.trim();
    }

    public String getIsallow() {
        return isallow;
    }

    public void setIsallow(String isallow) {
        this.isallow = isallow == null ? null : isallow.trim();
    }

    public Integer getReleasednumber() {
        return releasednumber;
    }

    public void setReleasednumber(Integer releasednumber) {
        this.releasednumber = releasednumber;
    }

    public Date getRegistertime() {
        return registertime;
    }

    public void setRegistertime(Date registertime) {
        this.registertime = registertime;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product == null ? null : product.trim();
    }

    public String getJianjie() {
        return jianjie;
    }

    public void setJianjie(String jianjie) {
        this.jianjie = jianjie == null ? null : jianjie.trim();
    }

    public String getIdcardimage() {
        return idcardimage;
    }

    public void setIdcardimage(String idcardimage) {
        this.idcardimage = idcardimage == null ? null : idcardimage.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

	@Override
	public String toString() {
		return "Company [id=" + id + ", companyname=" + companyname + ", simplename=" + simplename + ", industry="
				+ industry + ", minpeople=" + minpeople + ", maxpeople=" + maxpeople + ", companyurl=" + companyurl
				+ ", companyimage=" + companyimage + ", development=" + development + ", province=" + province
				+ ", city=" + city + ", area=" + area + ", address=" + address + ", logo=" + logo + ", isallow="
				+ isallow + ", releasednumber=" + releasednumber + ", registertime=" + registertime + ", money=" + money
				+ ", remark=" + remark + ", uid=" + uid + ", product=" + product + ", jianjie=" + jianjie
				+ ", idcardimage=" + idcardimage + ", description=" + description + "]";
	}
    
    
}