package com.wys.recruitment.pojo;

import java.util.Date;

public class Articles {
    private Integer articleid;

    private String articletitle;

    private String articleimg;

    private Byte isshow;

    private String articlecontent;

    private String articlekey;

    private Integer staffid;

    private Date createtime;

    public Integer getArticleid() {
        return articleid;
    }

    public void setArticleid(Integer articleid) {
        this.articleid = articleid;
    }

    public String getArticletitle() {
        return articletitle;
    }

    public void setArticletitle(String articletitle) {
        this.articletitle = articletitle == null ? null : articletitle.trim();
    }

    public String getArticleimg() {
        return articleimg;
    }

    public void setArticleimg(String articleimg) {
        this.articleimg = articleimg == null ? null : articleimg.trim();
    }

    public Byte getIsshow() {
        return isshow;
    }

    public void setIsshow(Byte isshow) {
        this.isshow = isshow;
    }

    public String getArticlecontent() {
        return articlecontent;
    }

    public void setArticlecontent(String articlecontent) {
        this.articlecontent = articlecontent == null ? null : articlecontent.trim();
    }

    public String getArticlekey() {
        return articlekey;
    }

    public void setArticlekey(String articlekey) {
        this.articlekey = articlekey == null ? null : articlekey.trim();
    }

    public Integer getStaffid() {
        return staffid;
    }

    public void setStaffid(Integer staffid) {
        this.staffid = staffid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}