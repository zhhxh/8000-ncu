package com.offer.recruitment.controller;

import com.offer.recruitment.pojo.User;
import com.offer.recruitment.service.impl.CompanyServiceImpl;
import com.offer.recruitment.pojo.Company;
import com.offer.recruitment.pojo.Myrecruitment;
import com.offer.recruitment.service.impl.MyRecruitmentServiceImpl;
import com.offer.recruitment.utils.IOUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/company")
public class CompanyController {
    @Autowired
    private CompanyServiceImpl companyServiceImpl;

    @Autowired
    private MyRecruitmentServiceImpl myRecruitmentServiceImpl;

    /**
     * 保存企业招聘者的企业信息
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("/register")
    public String register(@RequestParam("myfile") MultipartFile myfile,
                           @RequestParam("myfile1") MultipartFile myfile1,
                           @RequestParam("myfile2") MultipartFile myfile2,
                           Company company,
                           HttpServletRequest request) throws Exception {

        String path = request.getServletContext().getRealPath("WEB-INF" +
                File.separator + "upload" + File.separator);
        //myfile == logo
        //myfile1 == 身份证 idcardimage
        //myfile2 == 身份证 companyimage

        String logo = IOUtil.saveImage(path, myfile);
        String idcardimage = IOUtil.saveImage(path, myfile1);
        String companyimage = IOUtil.saveImage(path, myfile2);
        if (logo.equals("error")) {
            //返回错误页面
            return "system/error";
        }
        if (idcardimage.equals("error")) {
            //返回错误页面
            return "system/error";
        }
        if (companyimage.equals("error")) {
            //返回错误页面
            return "system/error";
        }

        //表示成功保存图片
        company.setLogo(logo);
        company.setIdcardimage(idcardimage);
        company.setCompanyimage(companyimage);
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            int uid = user.getId();
            company.setUid(uid);
        }
        company.setRegistertime(new Date());
        company.setMoney(0.0);
        company.setIsallow("1");
        company.setReleasednumber(1000);
        //保存操作
        int i = companyServiceImpl.saveCompany(company);
        if (i > 0) {
            return "redirect:/companyUser/index";
        } else {
            return "system/error";
        }
    }


    /*
     * 显示公司信息
     */

    @RequestMapping("/companyInfo")
    public String info(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            //根据当前的id查询公司数据
            int uid = user.getId();
            Company company = companyServiceImpl.findByUid(uid);
            request.setAttribute("company", company);
            request.setAttribute("registerTime", company.getRegistertime());
            return "company/companyInfo";
        } else {
            return "system/error";
        }

    }

    /**
     * 修改个人信息
     *
     * @throws Exception
     */
    @RequestMapping("/edit")
    public String edit(@RequestParam("picture") MultipartFile picture,
                       Company company,
                       HttpServletRequest request) throws Exception {
        String path = request.getServletContext().getRealPath("WEB-INF" +
                File.separator + "upload" + File.separator);
        //表示上传了图片
        if (!picture.isEmpty()) {
            //2.0 保存图片
            String image = IOUtil.saveImage(path, picture);
            company.setLogo(image);
        }
        //3.0 进行更新数据操作

        companyServiceImpl.updateData(company);

        return "redirect:/company/companyInfo";
    }

    /**
     * 发布简历页面
     *
     * @return
     */
    @RequestMapping("/releaseResume")
    public String releaseResume() {
        return "/company/releaseResume";
    }


    /**
     * 弹出填写简历页面
     */
    /**
     * @param id
     * @return
     */
    @RequestMapping("/writeResume")
    public String writeResume(String id, HttpServletRequest request) {
        if (id != null) {
            //1.0 根据自己的id去数据库把当前的招聘信息查找出来，然后存储到session中
            Myrecruitment myrecruitment = myRecruitmentServiceImpl.selectById(id);
            if (myrecruitment != null) {
                request.setAttribute("myrecruitment", myrecruitment);
            }
            return "/company/writeResume1";
        }
        return "/company/writeResume";
    }


    /**
     * 弹出填写简历页面
     */
    @RequestMapping("/test")
    public @ResponseBody
    String test(Company company, HttpServletRequest request, String simplename, String companyname) {
        String province = request.getParameter("simplename");
        System.out.println(province);
        System.out.println(simplename);
        System.out.println(companyname);
        return "test";
    }


    /**
     * 求职者查看公司的信息
     */
    @RequestMapping("/companyDetail")
    public String companyDetail(Integer id, HttpServletRequest request) {
        if (id != null) {
            //1.0 根据id去数据库查找出当前公司的具体信息
            Map<String, String> companyDetail = companyServiceImpl.selectCompanyDetail(id);
            if (companyDetail != null) {
                //2.0 根据当前的id去职位表里面查找出当前公司的所有招聘职位
                List<Myrecruitment> mycruitmentLists = myRecruitmentServiceImpl.selectByCid(id);
                request.setAttribute("companyDetail", companyDetail);
                request.setAttribute("mycruitments", mycruitmentLists);
                return "company/companyDetail";
            } else {
                request.setAttribute("error", "输入的公司编号错误，非法操作，如若没有非法，联系管理员：924155240.返回首页即可");
                return "system/error";
            }

        } else {
            return "system/error";
        }

    }

    /**
     * 以下是小程序的代码
     */
    @RequestMapping("/xiaochengxu/companyDetail")
    @ResponseBody
    public Map<String, Object> xiaochengxuCompanyDetail(Integer id, HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (id != null) {
            //1.0 根据id去数据库查找出当前公司的具体信息
            Map<String, String> companyDetail = companyServiceImpl.selectCompanyDetail(id);
            if (companyDetail != null) {
                //2.0 根据当前的id去职位表里面查找出当前公司的所有招聘职位
                List<Myrecruitment> mycruitmentLists = myRecruitmentServiceImpl.selectByCid(id);
                map.put("operate", true);
                map.put("companyDetail", companyDetail);
                map.put("mycruitmentLists", mycruitmentLists);
            } else {
                map.put("operate", false);
            }

        } else {
            map.put("operate", false);
        }
        return map;
    }

    /**
     * 查看公司进度
     */
    @RequestMapping("/jindu")
    public String jindu() {
        return "company/jindu";
    }
}

