package com.wys.recruitment.controller;

import com.wys.recruitment.pojo.Articles;
import com.wys.recruitment.pojo.Sysadmin;
import com.wys.recruitment.pojo.query.UserCondition;
import com.wys.recruitment.service.ISkillService;
import com.wys.recruitment.utils.IOUtil;
import com.wys.recruitment.utils.PageAble;
import com.wys.recruitment.utils.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.*;

@Controller
@RequestMapping("/skill")
public class SkillController {
    @Autowired
    private ISkillService skillService;

    /**
     * 数据列表
     */
//    @RequestMapping("/digitManage")
//    public 	String digitManage(HttpServletRequest request, UserCondition userCondition) {
//        if (!isLogin(request)) {
//            return "admin/tologin";
//        }
//        //查看出当前所有的通告记录
//        List<Map<String,Object>> map = skillService.listAll();
//        request.setAttribute("articleslist", map);
//        return "admin/digitManage";
//    }

    @RequestMapping("/skillList")
    public String articlesList(HttpServletRequest request) {
        if(!isLogin(request)) {
            return "admin/tologin";
        }
        //查看出当前所有的通告记录
        List<Map<String,Object>> map = skillService.listAll();
        request.setAttribute("articleslist", map);
        return "admin/digitManage";
    }


    /**
     * 公告信息详情
     */
    @RequestMapping("/detail")
    public String detail(String id,HttpServletRequest request) {
        if(id!=null) {
            //1.0 公告
            Articles articles  = skillService.selectById(id);
            request.setAttribute("articles", articles);
            return "skilldetail";
        }else {
            return "system/error";
        }
    }

    /**
     *
     * 显示所有通告信息
     */
    @RequestMapping("/showOurCompany")
    public String showOurCompany(HttpServletRequest request,Integer page1) {
        //5.0 封装好当前的分页信息
        PageAble pageAble = new PageAble();
        pageAble.setNumberOfPages(12);

        Map<String, Object>  map = new HashMap<String, Object>();
        map.put("isshow", 1);
        map.put("number", 12);
        if(page1!=null) {
            map.put("pageSize",( page1 - 1 ) * 12);
            pageAble.setCurrentPage(page1);
        }else {
            map.put("pageSize",0);
            pageAble.setCurrentPage(1);
        }

        //统计所有的条数
        int i = skillService.countNumber();
        if(i%12==0) {
            pageAble.setTotalPages(i / 12);
        }else {
            pageAble.setTotalPages(i / 12 + 1);
        }

        List<Map<String,Object>> articleslist = skillService.userlistAll(map);

        request.setAttribute("articleslist", articleslist);
        request.setAttribute("pageAble", pageAble);

        return "skilllist";
    }
    /**
     * 保存系统公告信息
     * @throws Exception
     */
    @RequestMapping("/insertskill")
    public String insertArticle(HttpServletRequest request,
                                @RequestParam("logo") MultipartFile logo,
                                Articles articles) throws Exception {
        if (!isLogin(request)) {
            return "admin/tologin";
        }
        articles.setArticleimg(null);
        if (!logo.isEmpty()) {
            //2.0 保存图片
            String path = request.getServletContext().getRealPath("WEB-INF" +
                    File.separator + "upload" + File.separator);
            String articleimg = IOUtil.saveImage(path, logo);
            articles.setArticleimg(articleimg);
        }
        Sysadmin sa = (Sysadmin) request.getSession().getAttribute("adminUser");

        if (articles.getArticleid() != null) {
            //表示修改数据
            articles.setStaffid(sa.getId());
            int j = skillService.updateArticle(articles);
            if (j > 0) {
                //表示修改成功
                return "redirect:/skill/skillList";
            } else {
                //表示修改失败
                request.setAttribute("error", "ArticlesController修改数据失败，请联系管理员");
                return "system/error";
            }
        } else {
            //表示新增数据
            articles.setStaffid(sa.getId());
            articles.setCreatetime(new Date());
            articles.setIsshow((byte) 1);
            int i = skillService.insertArticle(articles);
            if (i > 0) {
                return "redirect:/skill/skillList";
            } else {
                //表示修改失败
                request.setAttribute("error", "ArticlesController修改数据失败，请联系管理员");
                return "system/error";
            }
        }


    }
    /**
     * 公告基本详情
     *
     */
    @RequestMapping("/skillDetail")
    @ResponseBody
    public Response companyDetail(HttpServletRequest request, Integer id) {
        //2.0 声明需要返回的类型
        Response res = new Response();
        if(id!=null) {
            Articles articles = skillService.selectByPrimaryKey(id);
            res.setCode(1);
            res.setData(articles);
        }else {
            res.setCode(-1);
            res.setData("必须把用户的id传递过来，否则是违法操作。如有问题，请联系管理员");
        }
        return res;
    }


    /**
     * 上线通告
     * @param
     * @param id
     * @return
     */
    @RequestMapping("/pass")
    @ResponseBody
    public Response pass(Integer id) {
        //1.0 声明返回的类型
        Response res = new Response();
        if(id!=null) {
            int i = skillService.pass(id,1);
            if(i > 0) {
                res.setCode(1);
                res.setData("审核通过成功");
            }else {
                res.setCode(-1);
                res.setData("请检查程序代码");
            }
        }else {
            res.setCode(-1);
            res.setData("必须把公司的id传递过来，否则是违法操作。如有问题，请联系管理员");
        }
        return res;
    }

    /**
     * 下线通告
     * @param
     * @param id
     * @return
     */
    @RequestMapping("/nopass")
    @ResponseBody
    public Response nopass(Integer id) {
        //1.0 声明返回的类型
        Response res = new Response();
        if(id!=null) {
            int i = skillService.pass(id,2);
            if(i > 0) {
                res.setCode(1);
                res.setData("审核通过成功");
            }else {
                res.setCode(-1);
                res.setData("请检查程序代码");
            }
        }else {
            res.setCode(-1);
            res.setData("必须把公司的id传递过来，否则是违法操作。如有问题，请联系管理员");
        }
        return res;
    }
    /*
     * 删除通告
     * */
    @RequestMapping("/delete")
    @ResponseBody
    public Response delete(HttpServletRequest request,Integer id) {

        //1.0 声明返回的类型
        Response res = new Response();
        if(id!=null) {
            int i = skillService.delete(id);
            if(i > 0) {
                res.setCode(1);
                res.setData("删除成功");
            }else {
                res.setCode(1);
                res.setData("请检查程序代码");
            }
        }else {
            res.setCode(-1);
            res.setData("必须把公司的通告id传递过来，否则是违法操作。如有问题，请联系管理员");
        }
        return res;
    }
    /**
     * 检查是否登录
     */
    private boolean isLogin(HttpServletRequest request) {
        Sysadmin sa = (Sysadmin) request.getSession().getAttribute("adminUser");
        if(sa!=null) {
            return true;
        }else {
            return false;
        }
    }
}
