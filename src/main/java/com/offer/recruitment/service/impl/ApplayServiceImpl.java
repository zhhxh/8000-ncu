package com.offer.recruitment.service.impl;

import com.offer.recruitment.mapper.*;
import com.offer.recruitment.service.IApplayService;
import com.offer.recruitment.mapper.*;
import com.offer.recruitment.pojo.Applay;
import com.offer.recruitment.pojo.Myrecruitment;
import com.offer.recruitment.pojo.News;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class ApplayServiceImpl implements IApplayService {
    @Autowired
    private ApplayMapper applayMapper;
    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    public MyrecruitmentMapper myrecruitmentMapper;

    @Autowired
    private UserResumeMapper userResumeMapper;

    /**
     * 保存投递简历信息
     */
    @Override
    public int saveApplay(Applay applay) {
        //保存投递信息、顺便生成消息记录

        applay.setApplaytime(new Date());
        applay.setRemark("暂时保存该字段、留着备用");
        applay.setState(1);//表示刚刚投递的简历

        News news = new News();
        news.setCid(applay.getCid());
        news.setClassify("企业消息");
        //String username = userMapper.selectByPrimaryKey(applay.getUid()).getUsername();
        String name = userResumeMapper.selectByUserId(applay.getUid()).getName();
        String jobname = myrecruitmentMapper.selectByPrimaryKey(applay.getMid()).getJobname();
        news.setContent(name + "投递了贵公司'" + jobname + "'一职,麻烦上去网站查看消息");
        news.setIsread(1);
        news.setMid(applay.getMid());
        news.setState(1);
        news.setCreatetime(new Date());
        ;
        news.setTitle("投递通知");
        news.setUid(applay.getUid());
        newsMapper.insert(news);
        int i = applayMapper.insert(applay);

        return i;

    }

    /**
     * 查看用户是否已经投递了改招聘
     */
    @Override
    public Applay findByUidAndMid(Integer uid, String mid) {
        return applayMapper.findByUidAndMid(uid, mid);
    }

    /**
     * 根据条件查询书不同的状态
     */
    @Override
    public List<Map<String, Object>> selectByUidAndState(Integer uid, Integer state, Integer page) {
        Map<String, Integer> map = new HashMap<String, Integer>();
        map.put("uid", uid);
        //封装分页参数
        map.put("pageSize", (page - 1) * 8);
        map.put("number", 8);
        if (state == 100) {
            map.put("state", null);
        } else {
            map.put("state", state);
        }

        return applayMapper.selectByUidAndState(map);
    }

    @Override
    public int countNumber(Integer id, Integer state) {
        Map<String, Integer> map = new HashMap<>();
        map.put("uid", id);
        if (state == 100) {
            map.put("state", null);
        } else {
            map.put("state", state);
        }
        return applayMapper.selectCountByUidAndState(map);
    }

    /**
     * 根据条件检索出该公司的申请记录
     */
    @Override
    public List<Map<String, Object>> selectByCid(Integer id, String jobname, String state) {
        Map<String, Object> map = new HashMap<>();
        map.put("uid", id);
        map.put("jobname", jobname);
        map.put("state", state);
        return applayMapper.selectByCid(map);
    }

    /**
     * 更新申请的状态
     */
    @Override
    public void updateStateById(Integer aid, Integer state) {
        applayMapper.updateStateById(aid, state);

    }

    /**
     * 邀请面试通知
     */
    @Override
    public boolean invited(Integer id) {
        //1.0 修改消息状态，将当前的申请记录该修改为
        applayMapper.updateStateById(id, 3);
        Applay applay = applayMapper.selectByPrimaryKey(id);
        //2.0 向用户发送一条消息
        News news = new News();
        news.setCid(applay.getCid());
        news.setClassify("用户消息");
        Myrecruitment myrecruitment = myrecruitmentMapper.selectByPrimaryKey(applay.getMid());
        String jobname = myrecruitment.getJobname();
        String companyname = myrecruitment.getCompanyname();
        Integer companyid = myrecruitment.getCid();
        String mid = myrecruitment.getId();


        //news.setContent("你投递给<a href='/recruitmentWebsite/company/companyDetail?id="+companyid+"' target='_blank'>"+companyname+"</a>~<a target='_blank' href='/recruitmentWebsite/myrecruitment/detail?id="+mid+"'>"+jobname+"</a>职位的简历被招聘方标记为合适;保持手机畅通，等待HR联系");
        news.setContent("你投递给" + companyname + "~~" + jobname + "职位的简历被招聘方标记为合适;保持手机畅通，等待HR联系");
        news.setIsread(1);
        news.setMid(applay.getMid());
        news.setState(1);
        news.setCreatetime(new Date());
        ;
        news.setTitle("邀请面试通知");
        news.setUid(applay.getUid());
        int i = newsMapper.insert(news);
        return i > 0;
    }

    /**
     * 拒绝该简历
     */
    @Override
    public boolean refuse(Integer id) {
        //1.0 修改消息状态，将当前的申请记录该修改为
        applayMapper.updateStateById(id, 4);
        Applay applay = applayMapper.selectByPrimaryKey(id);
        //2.0 向用户发送一条消息
        News news = new News();
        news.setCid(applay.getCid());
        news.setClassify("用户消息");
        Myrecruitment myrecruitment = myrecruitmentMapper.selectByPrimaryKey(applay.getMid());
        String jobname = myrecruitment.getJobname();
        String companyname = myrecruitment.getCompanyname();
        news.setContent("你投递给" + companyname + "~" + jobname + "职位的简历，经过我们评估，认为您与该职位不太合适，无法进入面试阶段。相信更好的机会一定还在翘首期盼着您，赶快调整心态，做好充足的准备重新出发吧！ ");
        news.setIsread(1);
        news.setMid(applay.getMid());
        news.setState(1);
        news.setCreatetime(new Date());
        news.setTitle("不合适通知");
        news.setUid(applay.getUid());
        int i = newsMapper.insert(news);
        if (i > 0) {
            return true;
        } else {
            return false;
        }

    }

    @Override
    public void deleteByPrimaryKey(Integer id) {
        applayMapper.updateStateById(id, 5);

    }

    /**
     * 导出数据到excel
     */
    @Override
    public HSSFWorkbook export(Integer id, String jobname, String state) {
        List<Map<String, Object>> lists = this.selectByCid(id, jobname, state);

        HSSFWorkbook wb = new HSSFWorkbook();
        HSSFSheet sheet = wb.createSheet("人力资源数据");
        HSSFRow row = sheet.createRow((int) 0);
        HSSFCellStyle style = wb.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        row.createCell(0).setCellValue("姓名");
        row.createCell(1).setCellValue("应聘职位");
        row.createCell(2).setCellValue("联系电话");
        row.createCell(3).setCellValue("qq邮箱");
        row.createCell(4).setCellValue("处理状态");
        row.createCell(5).setCellValue("招聘类型");

        for (int i = 0; i < lists.size(); i++) {

            row = sheet.createRow(i + 1);
            Map<String, Object> map = lists.get(i);

            String name = map.get("name").toString();
            String jobname1 = map.get("jobname").toString();
            String phone = map.get("phone").toString();
            String email = map.get("email").toString();
            String st = map.get("state").toString();
            String type = map.get("type").toString();


            row.createCell(0).setCellValue(name);
            row.createCell(1).setCellValue(jobname1);
            row.createCell(2).setCellValue(phone);
            row.createCell(3).setCellValue(email);
            if (st.equals("1")) {
                row.createCell(4).setCellValue("未查看");
            } else if (st.equals("2")) {
                row.createCell(4).setCellValue("已查看");
            } else if (st.equals("3")) {
                row.createCell(4).setCellValue("邀请面试");
            } else if (st.equals("4")) {
                row.createCell(4).setCellValue("不合适");
            }
            row.createCell(5).setCellValue(type);

        }

        return wb;

    }


    //小程序Api
    @Override
    public List<Map<String, Object>> selectByUidAndState1(Integer uid, Integer state, Integer page) {
        Map<String, Integer> map = new HashMap<String, Integer>();
        map.put("uid", uid);
        //封装分页参数
        map.put("pageSize", (page - 1) * 100);
        map.put("number", 1000);
        map.put("state", null);
        return applayMapper.selectByUidAndState(map);
    }

}
