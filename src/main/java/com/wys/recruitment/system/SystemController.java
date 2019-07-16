package com.wys.recruitment.system;

import com.wys.recruitment.pojo.Company;
import com.wys.recruitment.pojo.MoreCondition;
import com.wys.recruitment.service.IArticlesService;
import com.wys.recruitment.service.ISkillService;
import com.wys.recruitment.service.impl.CompanyServiceImpl;
import com.wys.recruitment.service.impl.MyRecruitmentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/system")
public class SystemController {
    @Autowired
    private MyRecruitmentServiceImpl myRecruitmentServiceImpl;
    @Autowired
    private IArticlesService articlesService;
    @Autowired
    private ISkillService skillService;

    @Autowired
    private CompanyServiceImpl companyServiceImpl;

    /**
     * 跳转到首页
     */
    @RequestMapping("/index")
    public String index(HttpServletRequest request) {
        //1.0 检索出当前最新的职位信息，然后将其存储到request域中
        List<Map<String, Object>> latestjob = myRecruitmentServiceImpl.selectLatest(null);
        List<Map<String, Object>> returnjob = new ArrayList<>();
        //2.0处理当前的时间，转化成良好的格式
        for (Map<String, Object> map : latestjob) {
            map.put("publictime", map.get("publictime").toString().substring(11, 16));
            returnjob.add(map);
        }
        //3.0 存储到request中
        request.setAttribute("latestjob", returnjob);

        //4.0 检索出当前校园招聘的最新职位，然后将其存储到reqeust中
        List<Map<String, Object>> schoolJob = myRecruitmentServiceImpl.selectLatest("校招");
        List<Map<String, Object>> returnSchoolJob = new ArrayList<Map<String, Object>>();
        for (Map<String, Object> map : schoolJob) {
            map.put("publictime", map.get("publictime").toString().substring(11, 16));
            returnSchoolJob.add(map);
        }
        //5.0存储到request中
        request.setAttribute("schoolJob", returnSchoolJob);
        int i = 0;
        //6.0
        List<Company> companyLists = companyServiceImpl.selectLastestCompany(6);
        List<Company> returnCompanyLists = new ArrayList<Company>();
        //处理当前的简介、和 产品介绍，转化很好的格式 哦
        for (Company company : companyLists) {
            //6.1
            String jianjie = company.getJianjie();
            if (jianjie.length() >= 24) {
                company.setJianjie(jianjie.substring(0, 21) + "......");
            }
            String product = company.getProduct();
            if (product.length() >= 24) {
                company.setProduct(product.substring(0, 21) + "......");
            }
            returnCompanyLists.add(company);
        }
        //7.0存储到request中
        request.setAttribute("companyLists", returnCompanyLists);

        //8.0 检索出当前最近的公告信息
        List<Map<String, Object>> articlesListTow = articlesService.listTwo();
        List<Map<String, Object>> returnArticles = new ArrayList<>();
        for (Map<String, Object> aa : articlesListTow) {
            Map<String, Object> mm = new HashMap<>();
            if (aa.get("articletitle").toString().length() > 20) {
                mm.put("articletitle", aa.get("articletitle").toString().subSequence(0, 21) + "....");
            } else {
                mm.put("articletitle", aa.get("articletitle"));
            }
            mm.put("articleid", aa.get("articleid"));
            returnArticles.add(mm);
        }
        request.setAttribute("returnArticles", returnArticles);

        //8.0 检索出当前最近的求职技巧
        List<Map<String, Object>> skillListTow = skillService.listTwo();
        List<Map<String, Object>> returnskill = new ArrayList<>();
        for (Map<String, Object> aa : skillListTow) {
            Map<String, Object> mm = new HashMap<>();
            if (aa.get("articletitle").toString().length() > 20) {
                mm.put("articletitle", aa.get("articletitle").toString().subSequence(0, 21) + "....");
            } else {
                mm.put("articletitle", aa.get("articletitle"));
            }
            mm.put("articleid", aa.get("articleid"));
            returnskill.add(mm);
        }
        request.setAttribute("returnskill", returnskill);

        return "index";
    }

    /**
     * 用户跳转到首页
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * 介绍我们公司页面
     *
     * @return
     */
    @RequestMapping("/showOurCompany")
    public String showOurCompany(HttpServletRequest request) {
        //8.0 检索出当前最近的公告信息
        List<Map<String, Object>> articlesListTow = articlesService.listTwo();
        List<Map<String, Object>> returnArticles = new ArrayList<Map<String, Object>>();
        for (Map<String, Object> aa : articlesListTow) {
            Map<String, Object> mm = new HashMap<String, Object>();
            if (aa.get("articletitle").toString().length() > 20) {
                mm.put("articletitle", aa.get("articletitle").toString().subSequence(0, 21) + "....");
            } else {
                mm.put("articletitle", aa.get("articletitle"));
            }
            mm.put("articleid", aa.get("articleid"));
            returnArticles.add(mm);
        }
        request.setAttribute("returnArticles", returnArticles);

        return "showOurCompany";
    }

    /**

     * 联系我们
     *
     * @return
     */
    @RequestMapping("/contact")
    public String contact(HttpServletRequest request) {
        //8.0 检索出当前最近的公告信息
        List<Map<String, Object>> articlesListTow = articlesService.listTwo();
        List<Map<String, Object>> returnArticles = new ArrayList<Map<String, Object>>();
        for (Map<String, Object> aa : articlesListTow) {
            Map<String, Object> mm = new HashMap<String, Object>();
            if (aa.get("articletitle").toString().length() > 20) {
                mm.put("articletitle", aa.get("articletitle").toString().subSequence(0, 21) + "....");
            } else {
                mm.put("articletitle", aa.get("articletitle"));
            }
            mm.put("articleid", aa.get("articleid"));
            returnArticles.add(mm);
        }
        request.setAttribute("returnArticles", returnArticles);
        return "contact";
    }

    @RequestMapping("/test")
    @ResponseBody
    public String test() {
        return "test";
    }


    //小程序的代码
    @RequestMapping("/xiaochengxu/index")
    @ResponseBody
    public Map<String, Object> xiaochengxuIndex(MoreCondition moreCondition, String datalist, HttpServletRequest request, Integer page1) throws UnsupportedEncodingException {
        //1.0 处理公司+职位的文本框查询数据
        String companyandjobstring = null;
        if (datalist != null) {
            companyandjobstring = new String(datalist.getBytes("ISO8859-1"), "UTF-8");
            String[] str = companyandjobstring.split(" ");
            moreCondition.setCompanyandjob(str);
        }
        moreCondition.setNumber(4 * page1);
        //2.0 处理当前的页数

        moreCondition.setPage(1);


        //3.0 根据当前传入的参数，去数据库查询数据
        List<Map<String, Object>> lists = myRecruitmentServiceImpl.selectByMoreCondition(moreCondition);
        List<Map<String, Object>> returnlists = new ArrayList<Map<String, Object>>();
        //4.0 处理时间转化成良好的格式
        for (Map<String, Object> map : lists) {
            map.put("publictime", map.get("publictime").toString().substring(0, 10));
            returnlists.add(map);
        }

        Map<String, Object> m = new HashMap<String, Object>();
        m.put("myrecruitmebntlist", returnlists);
        return m;


    }

}
