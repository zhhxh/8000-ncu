package com.offer.recruitment.controller;

import com.offer.recruitment.pojo.User;
import com.offer.recruitment.service.IApplayService;
import com.offer.recruitment.service.IWorkExperienceService;
import com.offer.recruitment.pojo.UserResume;
import com.offer.recruitment.pojo.Workexperience;
import com.offer.recruitment.service.impl.UserResumeServiceImpl;
import com.offer.recruitment.service.impl.UserServiceImpl;
import com.offer.recruitment.utils.MailUtils11;
import com.offer.recruitment.utils.MyMd5Utils;
import com.offer.recruitment.utils.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
//111111
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServiceImpl userServiceImpl;

    @Autowired
    private UserResumeServiceImpl userResumeServiceImpl;

    @Autowired
    private IWorkExperienceService workExperienceService;

    @Autowired
    private IApplayService applayService;

    @RequestMapping("/toLogin")
    public @ResponseBody
    Response toLogin(User user, HttpServletRequest request) {
        //1.0 声明需要返回的类型
        Response rep = new Response();

        //2.0 根据用户名+密码去检索数据库
        String basePassword = MyMd5Utils.encodeByMD5(user.getUsername() + "-" + user.getPassword());
        User u = userServiceImpl.selectUserByUsernameAndPassword(user.getUsername(), basePassword);
        if (u != null) {
            //3.0表示登陆成功
            if (u.getIsaudit() == 2) {
                //4.0 账号密码错误
                rep.setCode(-1);
                rep.setMsg("您的账户已经被冻结，请联系管理员");
                return rep;
            } else if (u.getIsaudit() == 3) {
                rep.setCode(-1);
                rep.setMsg("您登录的账户还没有激活，请到注册的邮箱上点击激活按钮");
                request.getSession().setAttribute("user", u);
                return rep;
            } else {
                rep.setCode(1);
                rep.setMsg("登陆成功");
                request.getSession().setAttribute("user", u);
                return rep;
            }

        } else {
            //4.0 账号密码错误
            rep.setCode(-1);
            rep.setMsg("账号或者密码错误，请重新输人");
            return rep;
        }
    }

    /**
     * 用户注册
     *
     * @throws Exception
     */
    @RequestMapping("/register")
    public @ResponseBody
    Response insertUser(User user) throws Exception {
        //1.0 声明需要返回的类型
        Response rep = new Response();
        //判断邮箱是否存在
        User u = userServiceImpl.selectUserByUsername(user.getUsername());
        if (u != null) {
            //返回错误信息，邮箱已存在
            rep.setCode(-1);
            rep.setMsg("邮箱已存在，您已经注册过我们网站，请返回登录");
            return rep;
        }
        user.setIsaudit(1);
        user.setRegister(new Date());
        String baseString = MyMd5Utils.encodeByMD5(user.getUsername() + "-" + user.getPassword());
        user.setPassword(baseString);

        int i = userServiceImpl.insertUser(user);

        if (i > 0) {
            rep.setCode(1);
            rep.setMsg("完美注册,请到您的邮箱上激活，否则不允许登录");
            MailUtils11.sendMail(user.getUsername(), baseString);
            return rep;

        } else {
            rep.setCode(-1);
            rep.setMsg("程序有问题，请检查你的程序");
            return rep;
        }
    }

    /**
     * 邮箱激活
     */
    @RequestMapping("/xiaochengxu/jihuo")
    public String jihuo(String baseString) {
        //修改当前的状态即可
        userServiceImpl.updateByBaseString(baseString);
        return "user/jihuo";
    }

    /**
     * 进入用户个人中心页面
     */
    @RequestMapping("/memberResume")
    public String memberResume(HttpServletRequest request) {
        //根据用户的id去简历表查找出个人的简历信息
        User u = (User) request.getSession().getAttribute("user");
        int userId = u.getId();
        UserResume userResume = userResumeServiceImpl.selectByUserId(userId);
        request.setAttribute("userResume", userResume);
        //根据用户的id去工作经验表查找出个人的工作经验信息
        List<Workexperience> workexperienceLists = workExperienceService.selectByUid(userId);
        request.setAttribute("workexperienceLists", workexperienceLists);
        return "user/memberResume";
    }

    /**
     * 进入用户个人中心页面
     */
    @RequestMapping("/memberResume1")
    public String memberResume1() {
        return "user/memberResume1";
    }

    /**
     * 前往系统设置页面
     */
    @RequestMapping("/userInfo")
    public String userInfo(HttpServletRequest request) {
        //根据用户的id去简历表查找出个人的简历信息
        User u = (User) request.getSession().getAttribute("user");
        int userId = u.getId();
        User user = userServiceImpl.selectByUserId(userId);
        request.setAttribute("info", user);
        return "user/info";
    }

    /**
     * 关联qq
     */
    @RequestMapping("/associatedQq")
    @ResponseBody
    public Response associatedQq(User user) {
        //只能是修改，不可能是新增的额。
        //1.0 声明需要返回的类型
        Response rep = new Response();
        rep.setCode(1);
        rep.setMsg("操作成功");
        userServiceImpl.updateAssociatedQq(user);
        return rep;
    }

    /**
     * 关联qq
     */
    @RequestMapping("/associatedWeixin")
    @ResponseBody
    public Response associatedWeixin(User user) {
        //只能是修改，不可能是新增的额。
        //1.0 声明需要返回的类型
        Response rep = new Response();
        rep.setCode(1);
        rep.setMsg("操作成功");
        userServiceImpl.updateAssociatedWeixin(user);
        return rep;
    }

    /**
     * 修改密码
     */
    @RequestMapping("/updatePassword")
    @ResponseBody
    public Response updatePassword(User user) {
        //只能是修改，不可能是新增的额。
        Response rep = new Response();
        rep.setCode(1);
        rep.setMsg("操作成功");
        userServiceImpl.updatePassword(user);
        return rep;
    }

    /**
     * 退出
     */
    @RequestMapping("/layout")
    @ResponseBody
    public Response layout(HttpServletRequest request) {
        Response rep = new Response();
        request.getSession().invalidate();
        rep.setCode(1);
        rep.setMsg("操作成功");
        return rep;
    }

    /**
     * 公司查看个人简历信息
     */
    @RequestMapping("/showMemberResumeForCompany")
    public String showMemberResumeForCompany(HttpServletRequest request, Integer uid, Integer aid) {
        //根据用户的id去简历表查找出个人的简历信息
        if (uid != null && aid != null) {
            UserResume userResume = userResumeServiceImpl.selectByUserId(uid);
            request.setAttribute("userResume", userResume);
            //根据用户的id去工作经验表查找出个人的工作经验信息
            List<Workexperience> workexperienceLists = workExperienceService.selectByUid(uid);

            //3.0 将当前的申请记录标示为：已读状态
            applayService.updateStateById(aid, 2);


            request.setAttribute("workexperienceLists", workexperienceLists);
            return "user/showMemberResumeForCompany";
        } else {

            request.setAttribute("error", "必须传入用户的id/aid，非法操作，如操作无误，请联系管理员");
            return "system/error";
        }

    }


    //以下是小程序端的接口
    @RequestMapping("/xiaochengxu/toLogin")
    @ResponseBody
    public User toLogin(User user) {
        //2.0 根据用户名+密码去检索数据库
        String basePassword = MyMd5Utils.encodeByMD5(user.getUsername() + "-" + user.getPassword());
        User u = userServiceImpl.selectUserByUsernameAndPassword(user.getUsername(), basePassword);
        return u;
    }

    public static void main(String[] args) {
        String baseString = MyMd5Utils.encodeByMD5("1124002495@qq.com" + "-" + "123456");
        System.out.println(baseString);
    }
}
