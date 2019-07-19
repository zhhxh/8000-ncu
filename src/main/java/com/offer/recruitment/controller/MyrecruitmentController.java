package com.offer.recruitment.controller;

import com.offer.recruitment.pojo.User;
import com.offer.recruitment.service.IApplayService;
import com.offer.recruitment.exception.NullDataException;
import com.offer.recruitment.pojo.Applay;
import com.offer.recruitment.pojo.MoreCondition;
import com.offer.recruitment.pojo.Myrecruitment;
import com.offer.recruitment.service.impl.MyRecruitmentServiceImpl;
import com.offer.recruitment.utils.PageAble;
import com.offer.recruitment.utils.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/myrecruitment")
public class MyrecruitmentController {
    @Autowired
    private MyRecruitmentServiceImpl myRecruitmentServiceImpl;

    @Autowired
    private IApplayService applayService;

    /**
     * 保存招聘的基础信息
     *
     * @param request
     * @param myrecruitment
     * @return
     * @throws NullDataException
     */
    @RequestMapping(value = "/saveRecruitment")
    @ResponseBody
    public Response save(HttpServletRequest request, Myrecruitment myrecruitment) throws NullDataException {
        //1.0 判断当前用户的可发招聘信息是否大于0

        User user = (User) request.getSession().getAttribute("user");
        if (myrecruitment.getId() != null) {
            //2.0 表示当前是修改的方法
            return updateData(user, myrecruitment);
        } else {
            //3.0表示当前是新增的方法
            return saveData(user, myrecruitment);
        }

    }

    //修改招聘信息方法
    private Response updateData(User user, Myrecruitment myrecruitment) {
        //1.0 声明需要返回的类型
        Response re = new Response();
        //2.0 更新数据库
        boolean flag = myRecruitmentServiceImpl.updateById(myrecruitment);
        if (flag) {
            //3.0 跳转到成功页面
            re.setCode(1);
            re.setMsg("保存成功");

        } else {
            //4.0 跳转到错误页面
            re.setCode(-1);
            re.setMsg("保存失败");
        }
        return re;

    }

    //保存招聘信息子方法
    private Response saveData(User user, Myrecruitment myrecruitment) throws NullDataException {
        Response re = new Response();
        //2.0保存数据到数据库
        boolean flag = myRecruitmentServiceImpl.save(myrecruitment, user);
        if (flag) {
            //3.0 跳转到成功页面
            re.setCode(1);
            re.setMsg("保存成功");

        } else {
            //4.0 跳转到错误页面
            re.setCode(-1);
            re.setMsg("保存失败");
        }
        return re;
    }

    /**
     * 跳转到招聘列表页面
     */
    @RequestMapping(value = "/recruitmentlist")
    public String recruitmentlist(HttpServletRequest request) {
        //根据当前登录到的用户id，去查找出所有的职位信息出来
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            List<Myrecruitment> lists = myRecruitmentServiceImpl.selectAllByCid(user);
            request.setAttribute("myrecruitmentList", lists);
            return "company/recruitmentlist";
        } else {
            return "redirect:system/login";
        }

    }

    /**
     * 删除招聘信息
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    public String delete(String id) {
        if (id != null) {
            //1.0 调用service的delete方法即可
            int i = myRecruitmentServiceImpl.deleteByPrimaryKey(id);
            if (i > 0) {
                return "redirect:/myrecruitment/recruitmentlist";
            }
            return "redirect:/system/login";
        } else {
            return "redirect:/system/login";
        }
    }

    /**
     * 招聘信息详情
     */
    @RequestMapping("/detail")
    public String detail(String id, HttpServletRequest request) {
        if (id != null) {
            //1.0 查询出招聘的具体信息，内容
            Myrecruitment myrecruitment = myRecruitmentServiceImpl.selectById(id);
            request.setAttribute("myrecruitment", myrecruitment);
            //2.0 判断该用户是否已经投递了该招聘信息
            User u = (User) request.getSession().getAttribute("user");
            Applay applay = applayService.findByUidAndMid(u.getId(), id);
            if (applay != null) {
                request.setAttribute("hasApplay", true);
            } else {
                request.setAttribute("hasApplay", false);
            }
            return "recruitmentdetail";


        } else {
            return "system/error";
        }
    }


    /*
     * 招聘信息列表页面
     * 	多条件查询
     */
    @RequestMapping("/joblist")
    public String joblist(MoreCondition moreCondition,
                          String datalist, String address,
                          String workexperience, String xueli,
                          String type, String development,
                          String moneyrange,
                          HttpServletRequest request,
                          Integer page1, String wys) {
        //1.0 处理公司+职位的文本框查询数据
        String companyandjobstring = null;
        //设置 职位和公司
        if (datalist != null && !"".equals(datalist)) {
            companyandjobstring = datalist;
            System.out.println(companyandjobstring);
            String[] str = companyandjobstring.split(" ");
            moreCondition.setCompanyandjob(str);
        }
        //设置地区
        if (address != null && !"".equals(address)) {
            System.out.println(address);
            moreCondition.setAddress(address);
        }
        //设置工作经验
        if (workexperience != null && !"".equals(workexperience)) {
            System.out.println(workexperience);
            moreCondition.setWorkexperience(workexperience);
        }
        //设置学历
        if (xueli != null && !"".equals(xueli)) {
            System.out.println(xueli);
            moreCondition.setXueli(xueli);
        }
        //设置类别
        if (type != null && !"".equals(type)) {
            System.out.println(type);
            moreCondition.setType(type);
        }
        //设置融资阶段
        if (development != null && !"".equals(development)) {
            System.out.println(development);
            moreCondition.setDevelopment(development);
        }
        if (moneyrange != null && !"".equals(moneyrange)) {
            System.out.println(moneyrange);
            String[] ranges = moneyrange.split("-");
            Double endRange = null;
            Double startRange = null;
            if (ranges.length > 1) {
                startRange = Double.parseDouble(ranges[0].trim());
                endRange = Double.parseDouble(ranges[1].trim());
                moreCondition.setMoneyrangeend(endRange);
            } else {
                startRange = Double.parseDouble(ranges[0].trim());
            }
            moreCondition.setMoneyrange(startRange);
        }
        //2.0 处理当前的页数
        if (page1 != null) {
            moreCondition.setPage(page1);
        } else {
            moreCondition.setPage(1);
        }
        //3.0 根据当前传入的参数，去数据库查询数据
        List<Map<String, Object>> lists = myRecruitmentServiceImpl.selectByMoreCondition(moreCondition);
        List<Map<String, Object>> returnlists = new ArrayList<>();
        //4.0 处理时间转化成良好的格式
        for (Map<String, Object> map : lists) {
            map.put("publictime", map.get("publictime").toString().substring(0, 10));
            returnlists.add(map);
        }
        //5.0 封装好当前的分页信息
        PageAble pageAble = new PageAble();
        pageAble.setNumberOfPages(moreCondition.getNumber());
        pageAble.setCurrentPage(moreCondition.getPage());
        //5.1 获取当前能查询到数据的条数
        int i = myRecruitmentServiceImpl.countNumber(moreCondition);
        int number = moreCondition.getNumber();
        if (i % number == 0) {
            pageAble.setTotalPages(i / number);
        } else {
            pageAble.setTotalPages(i / number + 1);
        }

        //6.0 把当前查询的条件封装到request中
        //6.0 将查询好的数据封装到request对象中
        request.setAttribute("datalists", returnlists);
        request.setAttribute("pageAble", pageAble);
        request.setAttribute("moreCondition", moreCondition);
        request.setAttribute("datalist", companyandjobstring);
        request.setAttribute("all", wys);
        return "joblist";

    }

    //以下是小程序开发的API

    /**
     * 招聘信息详情
     */
    @RequestMapping("/xiaochengxu/detail")
    @ResponseBody
    public Map<String, Object> xiaochengxuDetail(String id, Integer uid) {
        Map<String, Object> map = new HashMap<>();
        if (id != null && uid != null) {
            //1.0 查询出招聘的具体信息，内容
            Myrecruitment myrecruitment = myRecruitmentServiceImpl.selectById(id);
            map.put("myrecruitment", myrecruitment);
            DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //HH表示24小时制；
            String formatDate = dFormat.format(myrecruitment.getPublictime());
            map.put("publictime", formatDate);
            //2.0 判断该用户是否已经投递了该招聘信息
            Applay applay = applayService.findByUidAndMid(uid, id);
            if (applay != null) {
                map.put("hasApplay", true);
            } else {
                map.put("hasApplay", false);
            }
            map.put("operate", true);
        } else {
            map.put("operate", false);
        }
        return map;
    }


}
