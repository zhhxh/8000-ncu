package com.wys.recruitment.controller;

import com.wys.recruitment.pojo.Company;
import com.wys.recruitment.pojo.CompanyUser;
import com.wys.recruitment.pojo.User;
import com.wys.recruitment.service.impl.CompanyServiceImpl;
import com.wys.recruitment.service.impl.CompanyUserServiceImpl;
import com.wys.recruitment.utils.IOUtil;
import com.wys.recruitment.utils.UuidUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;

@Controller
@RequestMapping("/companyUser")
public class CompanyUserController {
    @Autowired
    private CompanyUserServiceImpl companyUserServiceImpl;

    @Autowired
    private CompanyServiceImpl companyServiceImpl;

    /**
     * 跳转到企业招聘者的个人信息页面
     *
     * @param request
     * @return
     */
    @RequestMapping("/index")
    public String index(HttpServletRequest request) {
        //根据当前的id
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            int uid = user.getId();
            CompanyUser companyUser = companyUserServiceImpl.findByUid(uid);
            if (companyUser != null) {
                //2.0 跳转到公司基础信息页面
                Company company = companyServiceImpl.findByUid(uid);
                if (company != null) {
                    //2.0 认证成功了，跳转到了恭喜基本信息页
                    request.setAttribute("companyUser", companyUser);
                    request.setAttribute("company", company);
                    return "company/info";
                } else {
                    //3.0 跳转到个人基础信息页面
                    return "company/base/companyMessage";

                }
            } else {
                //3.0 跳转到个人基础信息页面
                return "company/base/peopleMessage";
            }
        }
        return "company/base/peopleMessage";
    }

    /**
     * 保存企业招聘者的个人信息
     *
     * @return
     * @throws Exception
     */
    @RequestMapping("/register")
    public String register(@RequestParam("myfile") MultipartFile myfile,
                           CompanyUser companyUser,
                           HttpServletRequest request) throws Exception {
        String path = request.getServletContext().getRealPath("WEB-INF" +
                File.separator + "upload" + File.separator);
        String image = IOUtil.saveImage(path, myfile);
        if (image.equals("error")) {
            //返回错误页面
            return "system/error";
        } else {
            //表示保存图片成功
            companyUser.setImage(image);
            companyUser.setRegister(new Date());
            companyUser.setId(UuidUtils.getUUID("companyUser", 10));
            User user = (User) request.getSession().getAttribute("user");
            if (user != null) {
                int uid = user.getId();
                companyUser.setUid(uid);
            }

            //保存操作
            int i = companyUserServiceImpl.saveCompanyUser(companyUser);
            if (i > 0) {
                return "company/base/companyMessage";
            } else {
                return "system/error";
            }
        }

    }

    /**
     * 修改个人信息
     *
     * @throws Exception
     */
    @RequestMapping("/edit")
    public String edit(@RequestParam("picture") MultipartFile picture,
                       CompanyUser companyUser,
                       HttpServletRequest request) throws Exception {

        String path = request.getServletContext().getRealPath("WEB-INF" +
                File.separator + "upload" + File.separator);

        //表示上传了图片
        if (!picture.isEmpty()) {
            //2.0 保存图片
            String image = IOUtil.saveImage(path, picture);
            companyUser.setImage(image);
        }
        //3.0 进行更新数据操作

        companyUserServiceImpl.updateData(companyUser);
        //根据当前的id
        //User user = (User) request.getSession().getAttribute("user");

        //int uid = user.getId();
        //CompanyUser cu = companyUserServiceImpl.findByUid(uid);
        //request.setAttribute("companyUser", cu);
        //return "company/info";
        return "redirect:/companyUser/index";
    }


}
