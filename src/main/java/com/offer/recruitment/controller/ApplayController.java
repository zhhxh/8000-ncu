package com.offer.recruitment.controller;

import com.offer.recruitment.pojo.User;
import com.offer.recruitment.service.IApplayService;
import com.offer.recruitment.service.impl.MyRecruitmentServiceImpl;
import com.offer.recruitment.service.impl.UserResumeServiceImpl;
import com.offer.recruitment.pojo.Applay;
import com.offer.recruitment.pojo.Myrecruitment;
import com.offer.recruitment.utils.FileUtils;
import com.offer.recruitment.utils.PageAble;
import com.offer.recruitment.utils.Response;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/applay")
public class ApplayController {
    @Autowired
    private IApplayService applayService;
    @Autowired
    private MyRecruitmentServiceImpl myRecruitmentServiceImpl;
    @Autowired
    private UserResumeServiceImpl userResumeServiceImpl;

    @RequestMapping("/saveApplay")
    public @ResponseBody
    Response saveApplay(Applay applay, HttpServletRequest request) {
        Response res = new Response();
        //1.0 判断个人的简历是否完整
        User u = (User) request.getSession().getAttribute("user");
        boolean flag = userResumeServiceImpl.checkResume(u);
        if (!flag) {
            //2.0 提示简历未完成，填写个人简历信息
            res.setData("简历未完成，完善个人简历信息");
            res.setCode(-1);

        } else {
            //3.0 保存数据到数据库
            applay.setUid(u.getId());
            applayService.saveApplay(applay);
            res.setData("完美投递，等待反馈");
            res.setCode(1);
        }
        return res;

    }

    /**
     * 查看自己投递状态
     * 投递箱
     */
    @RequestMapping("/applayRecord")
    public String applayRecord(HttpServletRequest request, Integer state, Integer page1) {
        //0.0处理分页情况
        //2.0 处理当前的页数
        if (page1 == null) {
            page1 = 1;
        }
        //1.0 根据state 分析不同的状态
        User u = (User) request.getSession().getAttribute("user");
        List<Map<String, Object>> lists = applayService.selectByUidAndState(u.getId(), state, page1);
        request.setAttribute("applayRecord", lists);

        //5.0 封装好当前的分页信息
        PageAble pageAble = new PageAble();
        pageAble.setNumberOfPages(8);
        pageAble.setCurrentPage(page1);
        //5.1 获取当前能查询到数据的条数
        int i = applayService.countNumber(u.getId(), state);
        int number = 8;
        if (i % number == 0) {
            pageAble.setTotalPages(i / number);
        } else {
            pageAble.setTotalPages(i / number + 1);
        }
        request.setAttribute("pageAble", pageAble);

        //6.0 表示哪一个被激活的状态
        if (state == 100) {
            request.setAttribute("activeCode", 100);
        } else if (state == 2) {
            request.setAttribute("activeCode", 2);
        } else if (state == 3) {
            request.setAttribute("activeCode", 3);
        } else if (state == 4) {
            request.setAttribute("activeCode", 4);
        } else {
            request.setAttribute("activeCode", 100);
        }
        return "applayRecord";

    }

    @RequestMapping("/detail")
    public String detail(String id, HttpServletRequest request) {
        if (id != null) {
            //1.0 查询出招聘的具体信息，内容
            Myrecruitment myrecruitment = myRecruitmentServiceImpl.selectById(id);
            request.setAttribute("myrecruitment", myrecruitment);
            //2.0 判断该用户是否已经投递了该招聘信息
            String position = myrecruitment.getPosition();
            if (position.equals("2")) {
                request.setAttribute("hasDelete", true);
            } else {
                request.setAttribute("hasDelete", false);
            }
            return "applayrecorddetail";
        } else {
            request.setAttribute("error", "必须把简历的id传过来，非法操作，如有疑问，联系管理员：");
            return "system/error";
        }
    }

    @RequestMapping("/test")
    public @ResponseBody
    String test(Integer i) {
        System.out.println(i);
        return "test/pass";
    }

    /**
     * 跳转到申请列表页面
     *
     * @throws UnsupportedEncodingException
     */
    @RequestMapping(value = "/applaylist")
    public String recruitmentlist(HttpServletRequest request, String jobname, String state) throws UnsupportedEncodingException {
        //解决乱码，get请求乱码

        if (jobname != null) {
            jobname = new String(jobname.getBytes("ISO8859-1"), "UTF-8");
        }

        //根据当前登录到的用户id，去查找出投递该公司的所有申请信息
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            //1.0 查找出当前公司发布的所有招聘职位名称
            List<Map<String, Object>> jobnamelists = myRecruitmentServiceImpl.findJobnameByUid(user.getId());
            request.setAttribute("jobnamelists", jobnamelists);


            List<Map<String, Object>> listsMap = applayService.selectByCid(user.getId(), jobname, state);
            request.setAttribute("applayList", listsMap);
            request.setAttribute("jobname", jobname);
            request.setAttribute("state", state);
            return "company/applaylist";
        } else {
            request.setAttribute("error", "请登录之后操作，否则非法操作，如有疑问，请联系管理员：");
            return "redirect:system/login";
        }

    }

    /**
     * 邀请面试
     */
    @RequestMapping("/invited")
    public @ResponseBody
    Response invited(Integer id, HttpServletRequest request) {
        //1.0 声明需要返回的类型
        Response res = new Response();
        if (id != null) {
            //2.0 调用业务逻辑程
            boolean flag = applayService.invited(id);
            if (flag) {
                res.setCode(1);
                res.setData("邀请通知成功，已经给对方发送了一条消息。建议HR近期联系对方。手动刷新页面、可更改当前处理的状态");
            } else {
                res.setCode(-1);
                res.setData("程序有问题，处理一下");
            }
        } else {
            res.setCode(-1);
            res.setData("必须带id过来，否则非法操作，如有疑问，请联系管理员：");
        }

        return res;
    }

    //refuse

    /**
     * 标记为不合适
     */
    @RequestMapping("/refuse")
    public @ResponseBody
    Response refuse(Integer id, HttpServletRequest request) {
        //1.0 声明需要返回的类型
        Response res = new Response();
        if (id != null) {
            //2.0 调用业务逻辑程
            boolean flag = applayService.refuse(id);
            if (flag) {
                res.setCode(1);
                res.setData("标志不合适成功，已经给对方发送了一条消息。建议HR将不合适的申请删除");
            } else {
                res.setCode(-1);
                res.setData("程序有问题，处理一下");
            }
        } else {
            res.setCode(-1);
            res.setData("必须带id过来，否则非法操作，如有疑问，请联系管理员：");
        }

        return res;
    }

    /*
     * 删除申请记录
     */
    @RequestMapping("/delete")
    public @ResponseBody
    Response delete(Integer id) {
        Response res = new Response();

        if (id != null) {
            applayService.deleteByPrimaryKey(id);
            res.setCode(1);
            res.setData("标志不合适成功，已经给对方发送了一条消息。建议HR将不合适的申请删除");
        } else {
            res.setCode(-1);
            res.setData("必须带id过来，否则非法操作，如有疑问，请联系管理员：");
        }
        //然后重定向到list页面
        return res;

    }

    /*
     * 导出到Excel
     */

    @RequestMapping(value = "/export")
    public @ResponseBody
    String exportExcel(HttpServletRequest request, HttpServletResponse response
            , String jobname, String state) {
        Response res = new Response();
        //解决乱码，get请求乱码

        try {
            if (jobname != null) {
                jobname = new String(jobname.getBytes("ISO8859-1"), "UTF-8");
            }
            User user = (User) request.getSession().getAttribute("user");
            HSSFWorkbook wb = applayService.export(user.getId(), jobname, state);
            response.setContentType("application/vnd.ms-excel");
            String filename = "人力资源数据.xls";

            String agent = request.getHeader("User-Agent");
            filename = FileUtils.encodeDownloadFilename(filename, agent);
            response.setHeader("Content-disposition", "attachment;filename=" + filename);
            OutputStream ouputStream = response.getOutputStream();
            wb.write(ouputStream);
            ouputStream.flush();
            ouputStream.close();
            res.setCode(1);
            res.setData("操作成功");

        } catch (Exception e) {
            res.setCode(1);
            res.setData("操作成功");
        }
        return "/ok";

    }

    @RequestMapping(value = "/exporttest")
    public @ResponseBody
    Response exporttest(HttpServletRequest request, HttpServletResponse response
            , String jobname, String state) {
        Response res = new Response();
        //解决乱码，get请求乱码

        try {
            if (jobname != null) {
                jobname = new String(jobname.getBytes("ISO8859-1"), "UTF-8");
            }
            User user = (User) request.getSession().getAttribute("user");
            HSSFWorkbook wb = applayService.export(user.getId(), jobname, state);
            response.setContentType("application/vnd.ms-excel");
            String filename = "人力资源数据.xls";

            String agent = request.getHeader("User-Agent");
            filename = FileUtils.encodeDownloadFilename(filename, agent);
            response.setHeader("Content-disposition", "attachment;filename=" + filename);
            OutputStream ouputStream = response.getOutputStream();
            wb.write(ouputStream);
            ouputStream.flush();
            ouputStream.close();
            res.setCode(1);
            res.setData("操作成功");

        } catch (Exception e) {
            res.setCode(1);
            res.setData("操作成功");
        }
        return res;

    }


    //以下是小程序的Api


    @RequestMapping("/xiaochengxu/saveapplay")
    public @ResponseBody
    Response xiaochengxuSaveApplay(Applay applay, Integer uid) {
        Response res = new Response();
        //1.0 判断个人的简历是否完整
        User u = new User();
        u.setId(uid);
        boolean flag = userResumeServiceImpl.checkResume(u);
        if (!flag) {
            //2.0 提示简历未完成，填写个人简历信息
            res.setData("简历未完成，完善个人简历信息");
            res.setCode(-1);

        } else {
            //3.0 保存数据到数据库
            applay.setUid(u.getId());
            applayService.saveApplay(applay);
            res.setData("完美投递，等待反馈");
            res.setCode(1);
        }
        return res;

    }

    /**
     * 查看自己投递状态
     * 投递箱
     */
    @RequestMapping("/xiaochengxu/applayRecord")
    @ResponseBody
    public Map<String, Object> xiaochengxuapplayRecord(Integer uid) {
        Map<String, Object> map = new HashMap<String, Object>();
        //2.0 处理当前的页数
        Integer page1 = 1;
        Integer state = null;
        //1.0 根据state 分析不同的状态
        List<Map<String, Object>> lists = applayService.selectByUidAndState1(uid, state, page1);
        List<Map<String, Object>> returnLists = new ArrayList<Map<String, Object>>();
        DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //HH表示24小时制；
        for (Map<String, Object> map2 : lists) {
            String formatDate = dFormat.format(map2.get("applaytime"));
            map2.put("time", formatDate);
            returnLists.add(map2);
        }
        map.put("applayRecord", returnLists);
        return map;

    }

}
